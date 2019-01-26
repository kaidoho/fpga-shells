## This file is a general .xdc for the Arty S7-50 Rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict { PACKAGE_PIN R2    IOSTANDARD SSTL135 } [get_ports { CLK100MHZ }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}];
create_clock -add -name JTCK        -period 100   -waveform {0 50} [get_ports {jb_6}];

## Switches
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { sw_0 }]; #IO_L20N_T3_A19_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { sw_1 }]; #IO_L21P_T3_DQS_15 Sch=sw[1]
set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { sw_2 }]; #IO_L21N_T3_DQS_A18_15 Sch=sw[2]
set_property -dict { PACKAGE_PIN M5    IOSTANDARD SSTL135 } [get_ports { sw_3 }]; #IO_L6N_T0_VREF_34 Sch=sw[3]

## RGB LEDs
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { led0_r }]; #IO_L23N_T3_FWE_B_15 Sch=led0_r
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L14N_T2_SRCC_15 Sch=led0_g
set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_L13N_T2_MRCC_15 Sch=led0_b
set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=led1_r
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L16P_T2_A28_15 Sch=led1_g
set_property -dict { PACKAGE_PIN E14   IOSTANDARD LVCMOS33 } [get_ports { led1_b }]; #IO_L15P_T2_DQS_15 Sch=led1_b

## LEDs
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { led_0 }]; #IO_L16N_T2_A27_15 Sch=led[4]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { led_1 }]; #IO_L17P_T2_A26_15 Sch=led[5]
set_property -dict { PACKAGE_PIN E13   IOSTANDARD LVCMOS33 } [get_ports { led_2 }]; #IO_L17N_T2_A25_15 Sch=led[6]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { led_3 }]; #IO_L18P_T2_A24_15 Sch=led[7]

## Buttons
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { btn_0 }]; #IO_L18N_T2_A23_15 Sch=btn[0]
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { btn_1 }]; #IO_L19P_T3_A22_15 Sch=btn[1]
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { btn_2 }]; #IO_L19N_T3_A21_VREF_15 Sch=btn[2]
set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { btn_3 }]; #IO_L20P_T3_A20_15 Sch=btn[3]

## PMOD Header JA
set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { ja_0 }]; #IO_L4P_T0_D04_14 Sch=ja[1]
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { ja_1 }]; #IO_L4N_T0_D05_14 Sch=ja[2]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { ja_2 }]; #IO_L5P_T0_D06_14 Sch=ja[3]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { ja_3 }]; #IO_L5N_T0_D07_14 Sch=ja[4]
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { ja_4 }]; #IO_L7P_T1_D09_14 Sch=ja[7]
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { ja_5 }]; #IO_L7N_T1_D10_14 Sch=ja[8]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { ja_6 }]; #IO_L8P_T1_D11_14 Sch=ja[9]
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { ja_7 }]; #IO_L8N_T1_D12_14 Sch=ja[10]

## PMOD Header JB
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { jb_0 }]; #IO_L9P_T1_DQS_14 Sch=jb_p[1]
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { jb_1 }]; #IO_L9N_T1_DQS_D13_14 Sch=jb_n[1]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { jb_2 }]; #IO_L10P_T1_D14_14 Sch=jb_p[2]
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { jb_3 }]; #IO_L10N_T1_D15_14 Sch=jb_n[2]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { jb_4 }]; #IO_L11P_T1_SRCC_14 Sch=jb_p[3]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { jb_5 }]; #IO_L11N_T1_SRCC_14 Sch=jb_n[3]
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { jb_6 }]; #IO_L12P_T1_MRCC_14 Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { jb_7 }]; #IO_L12N_T1_MRCC_14 Sch=jb_n[4]

## PMOD Header JC
#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { jc[0] }]; #IO_L18P_T2_A12_D28_14 Sch=jc_p[1]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { jc[1] }]; #IO_L18N_T2_A11_D27_14 Sch=jc_n[1]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { jc[2] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=jc_p[2]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { jc[3] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=jc_n[2]
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { jc[4] }]; #IO_L16P_T2_CSI_B_14 Sch=jc_p[3]
#set_property -dict { PACKAGE_PIN P13   IOSTANDARD LVCMOS33 } [get_ports { jc[5] }]; #IO_L19P_T3_A10_D26_14 Sch=jc_n[3]
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { jc[6] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=jc_p[4]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { jc[7] }]; #IO_L20P_T3_A08_D24_14 Sch=jc_n[4]

## PMOD Header JD
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { jd_0 }]; #IO_L20N_T3_A07_D23_14 Sch=jd[1]
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { jd_1 }]; #IO_L21P_T3_DQS_14 Sch=jd[2]
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { jd_2 }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=jd[3]
#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { jd_3 }]; #IO_L22P_T3_A05_D21_14 Sch=jd[4]
#set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { jd_4 }]; #IO_L22N_T3_A04_D20_14 Sch=jd[7]
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { jd_5 }]; #IO_L23P_T3_A03_D19_14 Sch=jd[8]
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { jd_6 }]; #IO_L23N_T3_A02_D18_14 Sch=jd[9]
#set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { jd_7 }]; #IO_L24P_T3_A01_D17_14 Sch=jd[10]

## USB-UART Interface (FTDI FT2232H) V12 RX ; R12 TX
set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33  } [get_ports { uart_rxd_out }]; #IO_25_14 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33  } [get_ports { uart_txd_in }]; #IO_L24N_T3_A00_D16_14 Sch=uart_txd_in


## ChipKit Single Ended Analog Inputs
## NOTE: The ck_an_p pins can be used as single ended analog inputs with voltages from 0-3.3V (Chipkit Analog pins A0-A5).
## These signals should only be connected to the XADC core. When using these pins as digital I/O, use pins ck_io[14-19].
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { ck_an_n[0] }]; #IO_L1P_T0_AD0P_15 Sch=ck_an_n[0]
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { ck_an_p[0] }]; #IO_L1N_T0_AD0N_15 Sch=ck_an_p[0]
#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { ck_an_n[1] }]; #IO_L3P_T0_DQS_AD1P_15 Sch=ck_an_n[1]
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { ck_an_p[1] }]; #IO_L3N_T0_DQS_AD1N_15 Sch=ck_an_p[1]
#set_property -dict { PACKAGE_PIN E12   IOSTANDARD LVCMOS33 } [get_ports { ck_an_n[2] }]; #IO_L5P_T0_AD9P_15 Sch=ck_an_n[2]
#set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { ck_an_p[2] }]; #IO_L5N_T0_AD9N_15 Sch=ck_an_p[2]
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { ck_an_n[3] }]; #IO_L7P_T1_AD2P_15 Sch=ck_an_n[3]
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { ck_an_p[3] }]; #IO_L7N_T1_AD2N_15 Sch=ck_an_p[3]
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { ck_an_n[4] }]; #IO_L8P_T1_AD10P_15 Sch=ck_an_n[4]
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { ck_an_p[4] }]; #IO_L8N_T1_AD10N_15 Sch=ck_an_p[4]
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { ck_an_n[5] }]; #IO_L10P_T1_AD11P_15 Sch=ck_an_n[5]
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { ck_an_p[5] }]; #IO_L10N_T1_AD11N_15 Sch=ck_an_p[5]


## ChipKit Digital I/O Low
set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { ck_io_0 }]; #IO_0_14 Sch=ck_io[0]
set_property -dict { PACKAGE_PIN N13   IOSTANDARD LVCMOS33 } [get_ports { ck_io_1 }]; #IO_L6N_T0_D08_VREF_14 Sch=ck_io[1]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { ck_io_2 }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=ck_io[2]
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { ck_io_3 }]; #IO_L13P_T2_MRCC_14 Sch=ck_io[3]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { ck_io_4 }]; #IO_L13N_T2_MRCC_14 Sch=ck_io[4]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { ck_io_5 }]; #IO_L14P_T2_SRCC_14 Sch=ck_io[5]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ck_io_6 }]; #IO_L14N_T2_SRCC_14 Sch=ck_io[6]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ck_io_7 }]; #IO_L16N_T2_A15_D31_14 Sch=ck_io[7]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { ck_io_8 }]; #IO_L17P_T2_A14_D30_14 Sch=ck_io[8]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { ck_io_9 }]; #IO_L17N_T2_A13_D29_14 Sch=ck_io[9]
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { ck_io_10 }]; #IO_L22P_T3_A17_15 Sch=ck_io[10]
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { ck_io_11 }]; #IO_L22N_T3_A16_15 Sch=ck_io[11]
#set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { ck_io_12 }]; #IO_L23P_T3_FOE_B_15 Sch=ck_io[12]
#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { ck_io_13 }]; #IO_L14P_T2_SRCC_15 Sch=ck_io[13]


## ChipKit Digital I/O On Outer Analog Header
## NOTE: These pins should be used when using the analog header signals A0-A5 as digital I/O (Chipkit digital pins 14-19)
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { ck_io_10 }]; #IO_0_15 Sch=ck_a[0]
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { ck_io_11 }]; #IO_L4P_T0_15 Sch=ck_a[1]
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { ck_io_12 }]; #IO_L4N_T0_15 Sch=ck_a[2]
set_property -dict { PACKAGE_PIN C13   IOSTANDARD LVCMOS33 } [get_ports { ck_io_13 }]; #IO_L6P_T0_15 Sch=ck_a[3]
set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { ck_io_14 }]; #IO_L6N_T0_VREF_15 Sch=ck_a[4]
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { ck_io_15 }]; #IO_L11P_T1_SRCC_15 Sch=ck_a[5]

## ChipKit Digital I/O On Inner Analog Header
## NOTE: These pins will need to be connected to the XADC core when used as differential analog inputs (Chipkit analog pins A6-A11)
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { ck_io[20] }]; #IO_L2P_T0_AD8P_15 Sch=ad_p[12]
#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { ck_io[21] }]; #IO_L2N_T0_AD8N_15 Sch=ad_n[12]
#set_property -dict { PACKAGE_PIN D16   IOSTANDARD LVCMOS33 } [get_ports { ck_io[22] }]; #IO_L9P_T1_DQS_AD3P_15 Sch=ad_p[13]
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { ck_io[23] }]; #IO_L9N_T1_DQS_AD3N_15 Sch=ad_n[13]
#set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { ck_io[24] }]; #IO_L12P_T1_MRCC_15 Sch=ad_p[14]
#set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { ck_io[25] }]; #IO_L12N_T1_MRCC_15 Sch=ad_n[14]

## ChipKit Digital I/O High
## Note: these pins are shared with PMOD Headers JC and JD and cannot be used at the same time as the applicable PMOD interface(s)
#set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { ck_io[26] }]; #IO_L24P_T3_A01_D17_14 Sch=ck_io[26]
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { ck_io[27] }]; #IO_L23N_T3_A02_D18_14 Sch=ck_io[27]
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { ck_io[28] }]; #IO_L23P_T3_A03_D19_14 Sch=ck_io[28]
#set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { ck_io[29] }]; #IO_L22N_T3_A04_D20_14 Sch=ck_io[29]
#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { ck_io[30] }]; #IO_L22P_T3_A05_D21_14 Sch=ck_io[30]
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { ck_io[31] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=ck_io[31]
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { ck_io[32] }]; #IO_L21P_T3_DQS_14 Sch=ck_io[32]
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { ck_io[33] }]; #IO_L20N_T3_A07_D23_14 Sch=ck_io[33]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { ck_io[34] }]; #IO_L20P_T3_A08_D24_14 Sch=ck_io[34]
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { ck_io[35] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=ck_io[35]
#set_property -dict { PACKAGE_PIN P13   IOSTANDARD LVCMOS33 } [get_ports { ck_io[36] }]; #IO_L19P_T3_A10_D26_14 Sch=ck_io[36]
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { ck_io[37] }]; #IO_L16P_T2_CSI_B_14 Sch=ck_io[37]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { ck_io[38] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ck_io[38]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { ck_io[39] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=ck_io[39]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { ck_io[40] }]; #IO_L18N_T2_A11_D27_14 Sch=ck_io[40]
#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { ck_io[41] }]; #IO_L18P_T2_A12_D28_14 Sch=ck_io[41]

## ChipKit SPI
## Note: these are shared with the ChipKit IOL pins and should not be used at the same time as the pins.
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { ck_miso }]; #IO_L23P_T3_FOE_B_15 Sch=ck_miso
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { ck_mosi }]; #IO_L22N_T3_A16_15 Sch=ck_mosi
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { ck_sck }]; #IO_L14P_T2_SRCC_15 Sch=ck_sck
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { ck_ss }]; #IO_L22P_T3_A17_15 Sch=ck_ss

## ChipKit I2C
#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { ck_scl }]; #IO_L24N_T3_RS0_15 Sch=ck_scl
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { ck_sda }]; #IO_L24P_T3_RS1_15 Sch=ck_sda

## Misc. ChipKit signals
#set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { ck_ioa }]; #IO_25_15 Sch=ck_ioa
set_property -dict { PACKAGE_PIN C18   IOSTANDARD LVCMOS33 } [get_ports { ck_rst }]; #IO_L11N_T1_SRCC_15 Sch=ck_rst


## Quad SPI Flash
## Note: the SCK clock signal can be driven using the STARTUPE2 primitive
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33  IOB TRUE } [get_ports { qspi_sck }];
create_clock -add -name qspi_sck_pin -period 20.00 -waveform {0 10}    [get_ports { qspi_sck }];
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33  IOB TRUE} [get_ports { qspi_cs }]; #IO_L6P_T_FCS_B_14 Sch=qspi_cs
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33  IOB TRUE  PULLUP TRUE } [get_ports { qspi_dq_0 }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33  IOB TRUE  PULLUP TRUE } [get_ports { qspi_dq_1 }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33  IOB TRUE  PULLUP TRUE } [get_ports { qspi_dq_2 }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33  IOB TRUE  PULLUP TRUE } [get_ports { qspi_dq_3 }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]

## Configuration options, can be used for all designs
#set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]

## SW3 is assigned to a pin M5 in the 1.35v bank. This pin can also be used as
## the VREF for BANK 34. To ensure that SW3 does not define the reference voltage
## and to be able to use this pin as an ordinary I/O the following property must
## be set to enable an internal VREF for BANK 34. Since a 1.35v supply is being
## used the internal reference is set to half that value (i.e. 0.675v). Note that
## this property must be set even if SW3 is not used in the design.
set_property INTERNAL_VREF 0.675 [get_iobanks 34]

set_clock_groups -asynchronous \
  -group [list \
     [get_clocks -include_generated_clocks -of_objects [get_ports jb_6]]] \
  -group [list \
     [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT0]]] \
  -group [list \
     [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT1]] \
     [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT2]]]
