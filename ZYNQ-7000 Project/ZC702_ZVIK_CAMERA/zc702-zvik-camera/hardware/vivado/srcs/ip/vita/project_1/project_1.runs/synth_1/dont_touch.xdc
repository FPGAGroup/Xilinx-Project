# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: ip/pulse_regen_k7/pulse_regen_k7.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==pulse_regen_k7 || ORIG_REF_NAME==pulse_regen_k7}]

# IP: ip/afifo_64i_16o_k7/afifo_64i_16o_k7.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==afifo_64i_16o_k7 || ORIG_REF_NAME==afifo_64i_16o_k7}]

# IP: ip/afifo_32_k7/afifo_32_k7.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==afifo_32_k7 || ORIG_REF_NAME==afifo_32_k7}]

# XDC: ip/pulse_regen_k7/pulse_regen_k7/pulse_regen_k7_clocks.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==pulse_regen_k7 || ORIG_REF_NAME==pulse_regen_k7}] {/U0 }]/U0 ]]

# XDC: ip/pulse_regen_k7/pulse_regen_k7/pulse_regen_k7.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==pulse_regen_k7 || ORIG_REF_NAME==pulse_regen_k7}] {/U0 }]/U0 ]]

# XDC: ip/afifo_64i_16o_k7/afifo_64i_16o_k7/afifo_64i_16o_k7_clocks.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==afifo_64i_16o_k7 || ORIG_REF_NAME==afifo_64i_16o_k7}] {/U0 }]/U0 ]]

# XDC: ip/afifo_64i_16o_k7/afifo_64i_16o_k7/afifo_64i_16o_k7.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==afifo_64i_16o_k7 || ORIG_REF_NAME==afifo_64i_16o_k7}] {/U0 }]/U0 ]]

# XDC: ip/afifo_32_k7/afifo_32_k7/afifo_32_k7_clocks.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==afifo_32_k7 || ORIG_REF_NAME==afifo_32_k7}] {/U0 }]/U0 ]]

# XDC: ip/afifo_32_k7/afifo_32_k7/afifo_32_k7.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==afifo_32_k7 || ORIG_REF_NAME==afifo_32_k7}] {/U0 }]/U0 ]]
