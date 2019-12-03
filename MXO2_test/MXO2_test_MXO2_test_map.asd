[ActiveSupport MAP]
Device = LCMXO2-4000HC;
Package = CSBGA132;
Performance = 4;
LUTS_avail = 4320;
LUTS_used = 647;
FF_avail = 4425;
FF_used = 279;
INPUT_LVCMOS33 = 7;
OUTPUT_LVCMOS33 = 25;
BIDI_LVCMOS33 = 1;
IO_avail = 105;
IO_used = 33;
EBR_avail = 10;
EBR_used = 0;
; Begin PLL Section
Instance_Name = my_pll_inst/PLLInst_0;
Type = EHXPLLJ;
CLKOP_Post_Divider_A_Input = DIVA;
CLKOS_Post_Divider_B_Input = DIVB;
CLKOS2_Post_Divider_C_Input = DIVC;
CLKOS3_Post_Divider_D_Input = DIVD;
Pre_Divider_A_Input = VCO_PHASE;
Pre_Divider_B_Input = VCO_PHASE;
Pre_Divider_C_Input = VCO_PHASE;
Pre_Divider_D_Input = VCO_PHASE;
VCO_Bypass_A_Input = VCO_PHASE;
VCO_Bypass_B_Input = VCO_PHASE;
VCO_Bypass_C_Input = VCO_PHASE;
VCO_Bypass_D_Input = VCO_PHASE;
FB_MODE = CLKOP;
CLKI_Divider = 1;
CLKFB_Divider = 33;
CLKOP_Divider = 1;
CLKOS_Divider = 8;
CLKOS2_Divider = 1;
CLKOS3_Divider = 1;
Fractional_N_Divider = 0;
CLKOP_Desired_Phase_Shift(degree) = 0;
CLKOP_Trim_Option_Rising/Falling = RISING;
CLKOP_Trim_Option_Delay = 0;
CLKOS_Desired_Phase_Shift(degree) = 0;
CLKOS_Trim_Option_Rising/Falling = RISING;
CLKOS_Trim_Option_Delay = 0;
CLKOS2_Desired_Phase_Shift(degree) = 0;
CLKOS3_Desired_Phase_Shift(degree) = 0;
; End PLL Section
