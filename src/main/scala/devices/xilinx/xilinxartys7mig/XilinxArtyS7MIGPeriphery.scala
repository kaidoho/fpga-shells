// See LICENSE for license details.
package sifive.fpgashells.devices.xilinx.xilinxartys7mig

import Chisel._
import freechips.rocketchip.config._
import freechips.rocketchip.subsystem.BaseSubsystem
import freechips.rocketchip.diplomacy.{LazyModule, LazyModuleImp, AddressRange}

case object MemoryXilinxDDRKey extends Field[XilinxArtyS7MIGParams]

trait HasMemoryXilinxArtyS7MIG { this: BaseSubsystem =>
  val module: HasMemoryXilinxXilinxArtyS7MIGModuleImp

  val xilinxartys7mig = LazyModule(new XilinxArtyS7MIG(p(MemoryXilinxDDRKey)))

  xilinxartys7mig.node := mbus.toDRAMController(Some("xilinxartys7mig"))()
}

trait HasMemoryXilinxArtyS7MIGBundle {
  val xilinxartys7mig: XilinxArtyS7MIGIO
  def connectXilinxArtyS7MIGToPads(pads: XilinxArtyS7MIGPads) {
    pads <> xilinxartys7mig
  }
}

trait HasMemoryXilinxArtyS7MIGModuleImp extends LazyModuleImp
    with HasMemoryXilinxArtyS7MIGBundle {
  val outer: HasMemoryXilinxArtyS7MIG
  val ranges = AddressRange.fromSets(p(MemoryXilinxDDRKey).address)
  require (ranges.size == 1, "DDR range must be contiguous")
  val depth = ranges.head.size
  val xilinxartys7mig = IO(new XilinxArtyS7MIGIO(depth))

  xilinxartys7mig <> outer.xilinxartys7mig.module.io.port
}
