# ----------------------------------------------------------------------------
#        PicoZed 7020 Rev C with PicoZed FMC Carrier V2 Rev A
#     _____
#    /     \
#   /____   \____
#  / \===\   \==/
# /___\===\___\/  AVNET ELECTRONICS MARKETING
#      \======/         www.em.avnet.com/drc
#       \====/    
# ----------------------------------------------------------------------------
# 
#  Created With Avnet Constraints Generator V0.8.0 
#     Date: Tuesday, November 17, 2015 
#     Time: 12:57:01 PM 
# 
#  This design is the property of Avnet.  Publication of this
#  design is not authorized without written consent from Avnet.
#  
#  Please direct any questions to:
#     Avnet Technical Community Forums
#     http://community.em.avnet.com
# 
#  Disclaimer:
#     Avnet, Inc. makes no warranty for the use of this code or design.
#     This code is provided  "As Is". Avnet, Inc assumes no responsibility for
#     any errors, which may appear in this code, nor does it make a commitment
#     to update the information contained herein. Avnet, Inc specifically
#     disclaims any implied warranties of fitness for a particular purpose.
#                      Copyright(c) 2009 Avnet, Inc.
#                              All rights reserved.
# 
# ----------------------------------------------------------------------------
# 
#  Notes: 
# 
#  Tuesday, November 17, 2015
#
#     IO standards based upon Bank 34, Bank 35 Vcco supply 
#     of 1.8V requires bank VCCO voltage to be set to 1.8V.  Bank 13 Vcco
#     supply is set at 3.3V#
#     Net names are not allowed to contain hyphen characters '-' since this
#     is not a legal VHDL87 or Verilog character within an identifier.  
#     HDL net names are adjusted to contain no hyphen characters '-' but 
#     rather use underscore '_' characters.  Comment net name with the hyphen 
#     characters will remain in place since these are intended to match the 
#     schematic net names in order to better enable schematic search.
#
#     The string provided in the comment field provides the Zynq device pin 
#     mapping through the expansion connector to the carrier card net name
#     according to the following format:
#
#     "<Zynq Pin>.<SOM Net>.<Connector Ref>.<Connector Pin>.<Carrier Net>"
# 
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# PL Clock Input - Bank 13 / JX3
# ---------------------------------------------------------------------------- 
	#set_property PACKAGE_PIN Y7  [get_ports {PL_CLK          }];  # "Y7.BANK13_LVDS_7_P.JX3.73.PL_CLK"

# ----------------------------------------------------------------------------
# I2C Peripherals - RTC, EEPROM, Clock Generator, HDMI Output - Bank 34
# ---------------------------------------------------------------------------- 
	#set_property PACKAGE_PIN R19 [get_ports {hdmi_scl_io       }];  # "R19.JX1_SE_0.JX1.9.HDMIO_SCL"
	#set_property PACKAGE_PIN T19 [get_ports {hdmi_sda_io       }];  # "T19.JX1_SE_1.JX1.10.HDMIO_SDA"

# ----------------------------------------------------------------------------
# RTC interrupt - Bank 13 / JX3
# ---------------------------------------------------------------------------- 
	#set_property PACKAGE_PIN Y6  [get_ports {RTC_INT         }];  # "Y6.BANK13_LVDS_7_N.JX3.75.RTC_INT"

# ----------------------------------------------------------------------------
# ADV7511 HDMI Output - Bank 34 (JX1) and Bank 35 (JX2)
# ---------------------------------------------------------------------------- 
# Bank 34
	#set_property PACKAGE_PIN T10 [get_ports {HDMIO_CBCR4_D32 }];  # "T10.JX1_LVDS_0_N.JX1.13.HDMIO_CBCR4_D32"
	#set_property PACKAGE_PIN T11 [get_ports {HDMIO_CBCR5_D33 }];  # "T11.JX1_LVDS_0_P.JX1.11.HDMIO_CBCR5_D33"
	#set_property PACKAGE_PIN U12 [get_ports {HDMIO_CBCR6_D34 }];  # "U12.JX1_LVDS_1_N.JX1.14.HDMIO_CBCR6_D34"
	#set_property PACKAGE_PIN T12 [get_ports {HDMIO_CBCR7_D35 }];  # "T12.JX1_LVDS_1_P.JX1.12.HDMIO_CBCR7_D35"
	#set_property PACKAGE_PIN V12 [get_ports {HDMIO_CLK       }];  # "V12.JX1_LVDS_3_P.JX1.18.HDMIO_CLK"
	#set_property PACKAGE_PIN T14 [get_ports {HDMIO_HPD       }];  # "T14.JX1_LVDS_4_P.JX1.23.HDMIO_HPD"
	#set_property PACKAGE_PIN T15 [get_ports {HDMIO_PD        }];  # "T15.JX1_LVDS_4_N.JX1.25.HDMIO_PD"
	#set_property PACKAGE_PIN W13 [get_ports {HDMIO_SPDIF     }];  # "W13.JX1_LVDS_3_N.JX1.20.HDMIO_SPDIF"
# Bank 35
	#set_property PACKAGE_PIN G14 [get_ports {HDMIO_CBCR0_D28 }];  # "G14.JX2_SE_0.JX2.13.HDMIO_CBCR0_D28"
	#set_property PACKAGE_PIN J15 [get_ports {HDMIO_CBCR1_D29 }];  # "J15.JX2_SE_1.JX2.14.HDMIO_CBCR1_D29"
	#set_property PACKAGE_PIN B20 [get_ports {HDMIO_CBCR2_D30 }];  # "B20.JX2_LVDS_0_N.JX2.19.HDMIO_CBCR2_D30"
	#set_property PACKAGE_PIN C20 [get_ports {HDMIO_CBCR3_D31 }];  # "C20.JX2_LVDS_0_P.JX2.17.HDMIO_CBCR3_D31"
	#set_property PACKAGE_PIN E17 [get_ports {HDMIO_INT       }];  # "E17.JX2_LVDS_2_P.JX2.23.HDMIO_INT"
	#set_property PACKAGE_PIN L17 [get_ports {HDMIO_Y0_D20    }];  # "L17.JX2_LVDS_10_N.JX2.49.HDMIO_Y0_D20"
	#set_property PACKAGE_PIN L16 [get_ports {HDMIO_Y1_D21    }];  # "L16.JX2_LVDS_10_P.JX2.47.HDMIO_Y1_D21"
	#set_property PACKAGE_PIN G20 [get_ports {HDMIO_Y2_D22    }];  # "G20.JX2_LVDS_16_N.JX2.69.HDMIO_Y2_D22"
	#set_property PACKAGE_PIN G19 [get_ports {HDMIO_Y3_D23    }];  # "G19.JX2_LVDS_16_P.JX2.67.HDMIO_Y3_D23"
	#set_property PACKAGE_PIN M15 [get_ports {HDMIO_Y4_D24    }];  # "M15.JX2_LVDS_22_N.JX2.89.HDMIO_Y4_D24"
	#set_property PACKAGE_PIN M14 [get_ports {HDMIO_Y5_D25    }];  # "M14.JX2_LVDS_22_P.JX2.87.HDMIO_Y5_D25"
	#set_property PACKAGE_PIN J16 [get_ports {HDMIO_Y6_D26    }];  # "J16.JX2_LVDS_23_N.JX2.90.HDMIO_Y6_D26"
	#set_property PACKAGE_PIN K16 [get_ports {HDMIO_Y7_D27    }];  # "K16.JX2_LVDS_23_P.JX2.88.HDMIO_Y7_D27"

# ----------------------------------------------------------------------------
# PL PMOD JA - Bank 13 / JX1
# ---------------------------------------------------------------------------- 
	#set_property PACKAGE_PIN V7  [get_ports {JA0_1_N         }];  # "V7.BANK13_LVDS_0_N.JX1.89.JA0_1_N"
	#set_property PACKAGE_PIN U7  [get_ports {JA0_1_P         }];  # "U7.BANK13_LVDS_0_P.JX1.87.JA0_1_P"
	#set_property PACKAGE_PIN U10 [get_ports {JA2_3_N         }];  # "U10.BANK13_LVDS_1_N.JX1.90.JA2_3_N"
	#set_property PACKAGE_PIN T9  [get_ports {JA2_3_P         }];  # "T9.BANK13_LVDS_1_P.JX1.88.JA2_3_P"
	#set_property PACKAGE_PIN W8  [get_ports {JA4_5_N         }];  # "W8.BANK13_LVDS_2_N.JX1.93.JA4_5_N"
	#set_property PACKAGE_PIN V8  [get_ports {JA4_5_P         }];  # "V8.BANK13_LVDS_2_P.JX1.91.JA4_5_P"
	#set_property PACKAGE_PIN U5  [get_ports {JA6_7_N         }];  # "U5.BANK13_LVDS_3_N.JX1.94.JA6_7_N"
	#set_property PACKAGE_PIN T5  [get_ports {JA6_7_P         }];  # "T5.BANK13_LVDS_3_P.JX1.92.JA6_7_P"

# ----------------------------------------------------------------------------
# PL PMOD JB - Bank 13 / JX3
# ---------------------------------------------------------------------------- 
	#set_property PACKAGE_PIN Y8  [get_ports {JB0_1_N         }];  # "Y8.BANK13_LVDS_8_N.JX3.76.JB0_1_N"
	#set_property PACKAGE_PIN Y9  [get_ports {JB0_1_P         }];  # "Y9.BANK13_LVDS_8_P.JX3.74.JB0_1_P"
	#set_property PACKAGE_PIN W9  [get_ports {JB2_3_N         }];  # "W9.BANK13_LVDS_9_N.JX3.81.JB2_3_N"
	#set_property PACKAGE_PIN W10 [get_ports {JB2_3_P         }];  # "W10.BANK13_LVDS_9_P.JX3.79.JB2_3_P"
	#set_property PACKAGE_PIN U8  [get_ports {JB4_5_N         }];  # "U8.BANK13_LVDS_10_N.JX3.82.JB4_5_N"
	#set_property PACKAGE_PIN U9  [get_ports {JB4_5_P         }];  # "U9.BANK13_LVDS_10_P.JX3.80.JB4_5_P"
	#set_property PACKAGE_PIN Y11 [get_ports {JB6_7_N         }];  # "Y11.BANK13_LVDS_11_N.JX3.87.JB6_7_N"
	#set_property PACKAGE_PIN W11 [get_ports {JB6_7_P         }];  # "W11.BANK13_LVDS_11_P.JX3.85.JB6_7_P"

# ----------------------------------------------------------------------------
# FMC Expansion Connector - Bank 34 / JX1
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN U19 [get_ports {gpio_tri_io[0]      }];  # "U19.JX1_LVDS_11_N.JX1.44.CLK0_M2C_N"
set_property PACKAGE_PIN U18 [get_ports {gpio2_tri_io[0]      }];  # "U18.JX1_LVDS_11_P.JX1.42.CLK0_M2C_P"
	#set_property PACKAGE_PIN P16 [get_ports {FMC_SCL         }];  # "P16.JX1_LVDS_23_N.JX1.84.FMC_SCL"
	#set_property PACKAGE_PIN P15 [get_ports {FMC_SDA         }];  # "P15.JX1_LVDS_23_P.JX1.82.FMC_SDA"
set_property PACKAGE_PIN P19 [get_ports {gpio_tri_io[1]  }];  # "P19.JX1_LVDS_12_N.JX1.49.LA00_CC_N"
set_property PACKAGE_PIN N18 [get_ports {gpio2_tri_io[1] }];  # "N18.JX1_LVDS_12_P.JX1.47.LA00_CC_P"
set_property PACKAGE_PIN P20 [get_ports {gpio_tri_io[2]  }];  # "P20.JX1_LVDS_13_N.JX1.50.LA01_CC_N"
set_property PACKAGE_PIN N20 [get_ports {gpio2_tri_io[2] }];  # "N20.JX1_LVDS_13_P.JX1.48.LA01_CC_P"
set_property PACKAGE_PIN R14 [get_ports {gpio_tri_io[3]  }];  # "R14.JX1_LVDS_5_N.JX1.26.LA02_N"
set_property PACKAGE_PIN P14 [get_ports {gpio2_tri_io[3] }];  # "P14.JX1_LVDS_5_P.JX1.24.LA02_P"
set_property PACKAGE_PIN Y17 [get_ports {gpio_tri_io[4]  }];  # "Y17.JX1_LVDS_6_N.JX1.31.LA03_N"
set_property PACKAGE_PIN Y16 [get_ports {gpio2_tri_io[4] }];  # "Y16.JX1_LVDS_6_P.JX1.29.LA03_P"
set_property PACKAGE_PIN Y14 [get_ports {gpio_tri_io[5]  }];  # "Y14.JX1_LVDS_7_N.JX1.32.LA04_N"
set_property PACKAGE_PIN W14 [get_ports {gpio2_tri_io[5] }];  # "W14.JX1_LVDS_7_P.JX1.30.LA04_P"
set_property PACKAGE_PIN U17 [get_ports {gpio_tri_io[6]  }];  # "U17.JX1_LVDS_8_N.JX1.37.LA05_N"
set_property PACKAGE_PIN T16 [get_ports {gpio2_tri_io[6] }];  # "T16.JX1_LVDS_8_P.JX1.35.LA05_P"
set_property PACKAGE_PIN W15 [get_ports {gpio_tri_io[7]  }];  # "W15.JX1_LVDS_9_N.JX1.38.LA06_N"
set_property PACKAGE_PIN V15 [get_ports {gpio2_tri_io[7] }];  # "V15.JX1_LVDS_9_P.JX1.36.LA06_P"
set_property PACKAGE_PIN U15 [get_ports {gpio_tri_io[8]  }];  # "U15.JX1_LVDS_10_N.JX1.43.LA07_N"
set_property PACKAGE_PIN U14 [get_ports {gpio2_tri_io[8] }];  # "U14.JX1_LVDS_10_P.JX1.41.LA07_P"
set_property PACKAGE_PIN U20 [get_ports {gpio_tri_io[9]  }];  # "U20.JX1_LVDS_14_N.JX1.55.LA08_N"
set_property PACKAGE_PIN T20 [get_ports {gpio2_tri_io[9] }];  # "T20.JX1_LVDS_14_P.JX1.53.LA08_P"
set_property PACKAGE_PIN W20 [get_ports {gpio_tri_io[10] }];  # "W20.JX1_LVDS_15_N.JX1.56.LA09_N"
set_property PACKAGE_PIN V20 [get_ports {gpio2_tri_io[10]}];  # "V20.JX1_LVDS_15_P.JX1.54.LA09_P"
set_property PACKAGE_PIN Y19 [get_ports {gpio_tri_io[11] }];  # "Y19.JX1_LVDS_16_N.JX1.63.LA10_N"
set_property PACKAGE_PIN Y18 [get_ports {gpio2_tri_io[11]}];  # "Y18.JX1_LVDS_16_P.JX1.61.LA10_P"
set_property PACKAGE_PIN W16 [get_ports {gpio_tri_io[12] }];  # "W16.JX1_LVDS_17_N.JX1.64.LA11_N"
set_property PACKAGE_PIN V16 [get_ports {gpio2_tri_io[12]}];  # "V16.JX1_LVDS_17_P.JX1.62.LA11_P"
set_property PACKAGE_PIN R17 [get_ports {gpio_tri_io[13] }];  # "R17.JX1_LVDS_18_N.JX1.69.LA12_N"
set_property PACKAGE_PIN R16 [get_ports {gpio2_tri_io[13]}];  # "R16.JX1_LVDS_18_P.JX1.67.LA12_P"
set_property PACKAGE_PIN R18 [get_ports {gpio_tri_io[14] }];  # "R18.JX1_LVDS_19_N.JX1.70.LA13_N"
set_property PACKAGE_PIN T17 [get_ports {gpio2_tri_io[14]}];  # "T17.JX1_LVDS_19_P.JX1.68.LA13_P"
set_property PACKAGE_PIN V18 [get_ports {gpio_tri_io[15] }];  # "V18.JX1_LVDS_20_N.JX1.75.LA14_N"
set_property PACKAGE_PIN V17 [get_ports {gpio2_tri_io[15]}];  # "V17.JX1_LVDS_20_P.JX1.73.LA14_P"
set_property PACKAGE_PIN W19 [get_ports {gpio_tri_io[16] }];  # "W19.JX1_LVDS_21_N.JX1.76.LA15_N"
set_property PACKAGE_PIN W18 [get_ports {gpio2_tri_io[16]}];  # "W18.JX1_LVDS_21_P.JX1.74.LA15_P"
set_property PACKAGE_PIN P18 [get_ports {gpio_tri_io[17] }];  # "P18.JX1_LVDS_22_N.JX1.83.LA16_N"
set_property PACKAGE_PIN N17 [get_ports {gpio2_tri_io[17]}];  # "N17.JX1_LVDS_22_P.JX1.81.LA16_P"

# ----------------------------------------------------------------------------
# FMC Expansion Connector - Bank 35 / JX2
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN K18 [get_ports {gpio_1_tri_io[0]  }];  # "K18.JX2_LVDS_11_N.JX2.50.CLK1_M2C_N"
set_property PACKAGE_PIN K17 [get_ports {gpio2_1_tri_io[0] }];  # "K17.JX2_LVDS_11_P.JX2.48.CLK1_M2C_P"
	#set_property PACKAGE_PIN D18 [get_ports {FMC_PRSNT_N     }];  # "D18.JX2_LVDS_2_N.JX2.25.FMC_PRSNT_N"
set_property PACKAGE_PIN H17 [get_ports {gpio_1_tri_io[1]  }];  # "H17.JX2_LVDS_12_N.JX2.55.LA17_CC_N"
set_property PACKAGE_PIN H16 [get_ports {gpio2_1_tri_io[1] }];  # "H16.JX2_LVDS_12_P.JX2.53.LA17_CC_P"
set_property PACKAGE_PIN H18 [get_ports {gpio_1_tri_io[2]  }];  # "H18.JX2_LVDS_13_N.JX2.56.LA18_CC_N"
set_property PACKAGE_PIN J18 [get_ports {gpio2_1_tri_io[2] }];  # "J18.JX2_LVDS_13_P.JX2.54.LA18_CC_P"
set_property PACKAGE_PIN A20 [get_ports {gpio_1_tri_io[3]  }];  # "A20.JX2_LVDS_1_N.JX2.20.LA19_N"
set_property PACKAGE_PIN B19 [get_ports {gpio2_1_tri_io[3] }];  # "B19.JX2_LVDS_1_P.JX2.18.LA19_P"
set_property PACKAGE_PIN D20 [get_ports {gpio_1_tri_io[4]  }];  # "D20.JX2_LVDS_3_N.JX2.26.LA20_N"
set_property PACKAGE_PIN D19 [get_ports {gpio2_1_tri_io[4] }];  # "D19.JX2_LVDS_3_P.JX2.24.LA20_P"
set_property PACKAGE_PIN E19 [get_ports {gpio_1_tri_io[5]  }];  # "E19.JX2_LVDS_4_N.JX2.31.LA21_N"
set_property PACKAGE_PIN E18 [get_ports {gpio2_1_tri_io[5] }];  # "E18.JX2_LVDS_4_P.JX2.29.LA21_P"
set_property PACKAGE_PIN F17 [get_ports {gpio_1_tri_io[6]  }];  # "F17.JX2_LVDS_5_N.JX2.32.LA22_N"
set_property PACKAGE_PIN F16 [get_ports {gpio2_1_tri_io[6] }];  # "F16.JX2_LVDS_5_P.JX2.30.LA22_P"
set_property PACKAGE_PIN L20 [get_ports {gpio_1_tri_io[7]  }];  # "L20.JX2_LVDS_6_N.JX2.37.LA23_N"
set_property PACKAGE_PIN L19 [get_ports {gpio2_1_tri_io[7] }];  # "L19.JX2_LVDS_6_P.JX2.35.LA23_P"
set_property PACKAGE_PIN M20 [get_ports {gpio_1_tri_io[8]  }];  # "M20.JX2_LVDS_7_N.JX2.38.LA24_N"
set_property PACKAGE_PIN M19 [get_ports {gpio2_1_tri_io[8] }];  # "M19.JX2_LVDS_7_P.JX2.36.LA24_P"
set_property PACKAGE_PIN M18 [get_ports {gpio_1_tri_io[9]  }];  # "M18.JX2_LVDS_8_N.JX2.43.LA25_N"
set_property PACKAGE_PIN M17 [get_ports {gpio2_1_tri_io[9] }];  # "M17.JX2_LVDS_8_P.JX2.41.LA25_P"
set_property PACKAGE_PIN J19 [get_ports {gpio_1_tri_io[10] }];  # "J19.JX2_LVDS_9_N.JX2.44.LA26_N"
set_property PACKAGE_PIN K19 [get_ports {gpio2_1_tri_io[10]}];  # "K19.JX2_LVDS_9_P.JX2.42.LA26_P"
set_property PACKAGE_PIN G18 [get_ports {gpio_1_tri_io[11] }];  # "G18.JX2_LVDS_14_N.JX2.63.LA27_N"
set_property PACKAGE_PIN G17 [get_ports {gpio2_1_tri_io[11]}];  # "G17.JX2_LVDS_14_P.JX2.61.LA27_P"
set_property PACKAGE_PIN F20 [get_ports {gpio_1_tri_io[12] }];  # "F20.JX2_LVDS_15_N.JX2.64.LA28_N"
set_property PACKAGE_PIN F19 [get_ports {gpio2_1_tri_io[12]}];  # "F19.JX2_LVDS_15_P.JX2.62.LA28_P"
set_property PACKAGE_PIN H20 [get_ports {gpio_1_tri_io[13] }];  # "H20.JX2_LVDS_17_N.JX2.70.LA29_N"
set_property PACKAGE_PIN J20 [get_ports {gpio2_1_tri_io[13]}];  # "J20.JX2_LVDS_17_P.JX2.68.LA29_P"
set_property PACKAGE_PIN J14 [get_ports {gpio_1_tri_io[14] }];  # "J14.JX2_LVDS_18_N.JX2.75.LA30_N"
set_property PACKAGE_PIN K14 [get_ports {gpio2_1_tri_io[14]}];  # "K14.JX2_LVDS_18_P.JX2.73.LA30_P"
set_property PACKAGE_PIN G15 [get_ports {gpio_1_tri_io[15] }];  # "G15.JX2_LVDS_19_N.JX2.76.LA31_N"
set_property PACKAGE_PIN H15 [get_ports {gpio2_1_tri_io[15]}];  # "H15.JX2_LVDS_19_P.JX2.74.LA31_P"
set_property PACKAGE_PIN N16 [get_ports {gpio_1_tri_io[16] }];  # "N16.JX2_LVDS_20_N.JX2.83.LA32_N"
set_property PACKAGE_PIN N15 [get_ports {gpio2_1_tri_io[16]}];  # "N15.JX2_LVDS_20_P.JX2.81.LA32_P"
set_property PACKAGE_PIN L15 [get_ports {gpio_1_tri_io[17] }];  # "L15.JX2_LVDS_21_N.JX2.84.LA33_N"
set_property PACKAGE_PIN L14 [get_ports {gpio2_1_tri_io[17]}];  # "L14.JX2_LVDS_21_P.JX2.82.LA33_P"



# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are 
# evaluated prior to other PACKAGE_PIN constraints being applied, then 
# the IOSTANDARD specified will likely not be applied properly to those 
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
# within the XDC file in a location that is evaluated AFTER all 
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
# ---------------------------------------------------------------------------- 

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on the PZCC board. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];




# ----------------------------------------------------------------------------
# PS MIO - PS Push Button - SD interface - USB-UART RX/TX - PS Ethernet Reset
# For reference only - these should be assigned automatically
# ---------------------------------------------------------------------------- 
	#set_property PACKAGE_PIN B13 [get_ports {PS_LED2         }];  # "B13.PS_MIO50.JX3.66.PS_LED2"
	#set_property PACKAGE_PIN B9  [get_ports {PS_PB1          }];  # "B9.PS_MIO51.JX3.64.PS_PB1"
	#set_property PACKAGE_PIN D16 [get_ports {SD_CD           }];  # "D16.PS_MIO46.JX3.41.SD_CD"
	#set_property PACKAGE_PIN D14 [get_ports {SD_CLK          }];  # "D14.PS_MIO40.JX3.43.SD_CLK"
	#set_property PACKAGE_PIN C17 [get_ports {SD_CMD          }];  # "C17.PS_MIO41.JX3.34.SD_CMD"
	#set_property PACKAGE_PIN E12 [get_ports {SD_D0           }];  # "E12.PS_MIO42.JX3.37.SD_D0"
	#set_property PACKAGE_PIN A9  [get_ports {SD_D1           }];  # "A9.PS_MIO43.JX3.36.SD_D1"
	#set_property PACKAGE_PIN F13 [get_ports {SD_D2           }];  # "F13.PS_MIO44.JX3.39.SD_D2"
	#set_property PACKAGE_PIN B15 [get_ports {SD_D3           }];  # "B15.PS_MIO45.JX3.38.SD_D3"
	#set_property PACKAGE_PIN B12 [get_ports {USB_UART_RXD    }];  # "B12.PS_MIO48.JX3.42.USB_UART_RXD"
	#set_property PACKAGE_PIN C12 [get_ports {USB_UART_TXD    }];  # "C12.PS_MIO49.JX3.44.USB_UART_TXD"
