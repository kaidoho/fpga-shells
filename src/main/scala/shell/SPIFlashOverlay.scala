// See LICENSE for license details.
package sifive.fpgashells.shell

import chisel3._
import freechips.rocketchip.config._
import freechips.rocketchip.diplomacy._
import sifive.blocks.devices.spi._
import freechips.rocketchip.tilelink.TLBusWrapper
import freechips.rocketchip.interrupts.IntInwardNode

case class SPIFlashOverlayParams(spiFlashParam: SPIFlashParams, controlBus: TLBusWrapper, memBus: TLBusWrapper, intNode: IntInwardNode)(implicit val p: Parameters)
case object SPIFlashOverlayKey extends Field[Seq[DesignOverlay[SPIFlashOverlayParams, TLSPIFlash]]](Nil)

class FPGASPIFlashPortIO extends Bundle {
  val qspi_sck  = Output(Bool())
  val qspi_cs   = Output(Bool())
  val qspi_dq_0 = Input(Bool())
  val qspi_dq_1 = Input(Bool())
  val qspi_dq_2 = Input(Bool())
  val qspi_dq_3 = Input(Bool())
}

abstract class SPIFlashOverlay(
  val params: SPIFlashOverlayParams)
    extends IOOverlay[FPGASPIFlashPortIO, TLSPIFlash]
{
  implicit val p = params.p

  def ioFactory = new FPGASPIFlashPortIO
  val tlqspi = SPI.attachFlash(SPIFlashAttachParams(params.spiFlashParam, params.controlBus, params.memBus, params.intNode))
  val tlqspiSink = tlqspi.ioNode.makeSink

  val qspiSource = BundleBridgeSource(() => new SPIPortIO(params.spiFlashParam))
  val qspiSink = shell { qspiSource.makeSink }
  val designOutput = tlqspi

  InModuleBody {
    val (io, _) = qspiSource.out(0)
    val tlqspiPort = tlqspiSink.bundle
    io <> tlqspiPort
    (0 to 3).foreach { case q =>
      tlqspiPort.dq(q).i := RegNext(RegNext(io.dq(q).i))
    }
  }

  shell { InModuleBody {
    val qspi_sck  = qspiSink.bundle.sck
    val qspi_cs   = qspiSink.bundle.cs(0)
    val qspi_dq_i = Wire(Vec(4, Bool()))
    val qspi_dq_o = Wire(Vec(4, Bool()))

    qspiSink.bundle.dq.zipWithIndex.foreach {
      case(pin, idx) =>
        qspi_dq_o(idx) := pin.o
        pin.i := qspi_dq_i(idx)
    }

    io.qspi_sck := qspi_sck
    io.qspi_cs  := qspi_cs
    qspi_dq_i(0) := io.qspi_dq_0
    qspi_dq_i(1) := io.qspi_dq_1
    qspi_dq_i(2) := io.qspi_dq_2
    qspi_dq_i(3) := io.qspi_dq_3
  } }
}
