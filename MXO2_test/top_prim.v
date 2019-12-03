// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Tue Dec  3 09:33:52 2019
//
// Verilog Description of module top
//

module top (clk_in, reset_n, i2c_scl, i2c_sda, rd_en, paddr, pdata, 
            IDLE_S, READCTRL_S, READREG_S, READ_S, WRITE_S, STOP_S, 
            debug, clk_out_1, clk_out_2) /* synthesis syn_module_defined=1 */ ;   // /home/andy/workdir/MXO2_test/top.v(1[9:12])
    input clk_in;   // /home/andy/workdir/MXO2_test/top.v(27[9:15])
    input reset_n;   // /home/andy/workdir/MXO2_test/top.v(28[9:16])
    input i2c_scl;   // /home/andy/workdir/MXO2_test/top.v(29[9:16])
    inout i2c_sda;   // /home/andy/workdir/MXO2_test/top.v(24[9:16])
    input rd_en;   // /home/andy/workdir/MXO2_test/top.v(30[9:14])
    input [2:0]paddr;   // /home/andy/workdir/MXO2_test/top.v(31[18:23])
    output [15:0]pdata;   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    output IDLE_S;   // /home/andy/workdir/MXO2_test/top.v(43[11:17])
    output READCTRL_S;   // /home/andy/workdir/MXO2_test/top.v(44[11:21])
    output READREG_S;   // /home/andy/workdir/MXO2_test/top.v(45[10:19])
    output READ_S;   // /home/andy/workdir/MXO2_test/top.v(46[11:17])
    output WRITE_S;   // /home/andy/workdir/MXO2_test/top.v(47[11:18])
    output STOP_S;   // /home/andy/workdir/MXO2_test/top.v(48[10:16])
    output debug;   // /home/andy/workdir/MXO2_test/top.v(36[9:14])
    output clk_out_1;   // /home/andy/workdir/MXO2_test/top.v(33[9:18])
    output clk_out_2;   // /home/andy/workdir/MXO2_test/top.v(34[9:18])
    
    wire clk_in_N /* synthesis is_clock=1 */ ;   // /home/andy/workdir/MXO2_test/top.v(27[9:15])
    wire clk_out_1_pre /* synthesis is_clock=1, SET_AS_NETWORK=clk_out_1_pre */ ;   // /home/andy/workdir/MXO2_test/top.v(54[9:22])
    wire clk_out_2_pre /* synthesis is_clock=1, SET_AS_NETWORK=clk_out_2_pre */ ;   // /home/andy/workdir/MXO2_test/top.v(55[9:22])
    
    wire reset_n_c, SCL, RD_EN, ADD_IN_2, paddr_c_1, paddr_c_0, 
        pdata_c_15, pdata_c_14, pdata_c_13, pdata_c_12, pdata_c_11, 
        pdata_c_10, pdata_c_9, pdata_c_8, pdata_c_7, pdata_c_6, pdata_c_5, 
        pdata_c_4, pdata_c_3, pdata_c_2, pdata_c_1, pdata_c_0, IDLE_S_c, 
        READCTRL_S_c, READREG_S_c, READ_S_c, WRITE_S_c, STOP_S_c, 
        reset_n_N_1, VCC_net, clk_out_1_adj, clk_out_2_adj, GND_net, 
        I_SDA_OUT_keep, I_SDA_OUT_OE_keep_N_355, n2694, n3263, i2c_sda_out, 
        n10167, n9152, n9199;
    
    VHI i6 (.Z(VCC_net));
    my_pll my_pll_inst (.clk_in_N_keep(clk_in_N), .clk_out_1_pre(clk_out_1_pre), 
           .clk_out_2_pre(clk_out_2_pre), .GND_net(GND_net)) /* synthesis lattice_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/andy/workdir/MXO2_test/top.v(59[8:81])
    \clk_div(N=1000)  clk_div_inst_2 (.GND_net(GND_net), .clk_out_2_pre_keep(clk_out_2_pre), 
            .n39(reset_n_N_1), .clk_out_2_adj(clk_out_2_adj)) /* synthesis lattice_noprune=1, syn_module_defined=1 */ ;   // /home/andy/workdir/MXO2_test/top.v(74[3] 79[2])
    OB pdata_pad_15 (.I(pdata_c_15), .O(pdata[15]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    BB i2c_sda_pad (.I(I_SDA_OUT_keep), .T(I_SDA_OUT_OE_keep_N_355), .B(i2c_sda), 
       .O(i2c_sda_out));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(184[9:12])
    LUT4 i1101_4_lut (.A(n9152), .B(n10167), .C(n2694), .D(n9199), .Z(n3263)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(138[13:25])
    defparam i1101_4_lut.init = 16'hc505;
    OB pdata_pad_14 (.I(pdata_c_14), .O(pdata[14]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_13 (.I(pdata_c_13), .O(pdata[13]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_12 (.I(pdata_c_12), .O(pdata[12]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_11 (.I(pdata_c_11), .O(pdata[11]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_10 (.I(pdata_c_10), .O(pdata[10]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_9 (.I(pdata_c_9), .O(pdata[9]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_8 (.I(pdata_c_8), .O(pdata[8]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_7 (.I(pdata_c_7), .O(pdata[7]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_6 (.I(pdata_c_6), .O(pdata[6]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_5 (.I(pdata_c_5), .O(pdata[5]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_4 (.I(pdata_c_4), .O(pdata[4]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_3 (.I(pdata_c_3), .O(pdata[3]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_2 (.I(pdata_c_2), .O(pdata[2]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_1 (.I(pdata_c_1), .O(pdata[1]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB pdata_pad_0 (.I(pdata_c_0), .O(pdata[0]));   // /home/andy/workdir/MXO2_test/top.v(35[18:23])
    OB IDLE_S_pad (.I(IDLE_S_c), .O(IDLE_S));   // /home/andy/workdir/MXO2_test/top.v(43[11:17])
    OB READCTRL_S_pad (.I(READCTRL_S_c), .O(READCTRL_S));   // /home/andy/workdir/MXO2_test/top.v(44[11:21])
    OB READREG_S_pad (.I(READREG_S_c), .O(READREG_S));   // /home/andy/workdir/MXO2_test/top.v(45[10:19])
    OB READ_S_pad (.I(READ_S_c), .O(READ_S));   // /home/andy/workdir/MXO2_test/top.v(46[11:17])
    OB WRITE_S_pad (.I(WRITE_S_c), .O(WRITE_S));   // /home/andy/workdir/MXO2_test/top.v(47[11:18])
    OB STOP_S_pad (.I(STOP_S_c), .O(STOP_S));   // /home/andy/workdir/MXO2_test/top.v(48[10:16])
    OB debug_pad (.I(VCC_net), .O(debug));   // /home/andy/workdir/MXO2_test/top.v(36[9:14])
    OB clk_out_1_pad (.I(clk_out_1_adj), .O(clk_out_1));   // /home/andy/workdir/MXO2_test/top.v(33[9:18])
    OB clk_out_2_pad (.I(clk_out_2_adj), .O(clk_out_2));   // /home/andy/workdir/MXO2_test/top.v(34[9:18])
    IB clk_in_pad (.I(clk_in), .O(clk_in_N));   // /home/andy/workdir/MXO2_test/top.v(27[9:15])
    IB reset_n_pad (.I(reset_n), .O(reset_n_c));   // /home/andy/workdir/MXO2_test/top.v(28[9:16])
    IB i2c_scl_pad (.I(i2c_scl), .O(SCL));   // /home/andy/workdir/MXO2_test/top.v(29[9:16])
    IB rd_en_pad (.I(rd_en), .O(RD_EN));   // /home/andy/workdir/MXO2_test/top.v(30[9:14])
    IB paddr_pad_2 (.I(paddr[2]), .O(ADD_IN_2));   // /home/andy/workdir/MXO2_test/top.v(31[18:23])
    IB paddr_pad_1 (.I(paddr[1]), .O(paddr_c_1));   // /home/andy/workdir/MXO2_test/top.v(31[18:23])
    IB paddr_pad_0 (.I(paddr[0]), .O(paddr_c_0));   // /home/andy/workdir/MXO2_test/top.v(31[18:23])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 reset_n_I_0_1_lut (.A(reset_n_c), .Z(reset_n_N_1)) /* synthesis lut_function=(!(A)) */ ;   // /home/andy/workdir/MXO2_test/top.v(57[17:26])
    defparam reset_n_I_0_1_lut.init = 16'h5555;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    \clk_div(N=1000)_U0  clk_div_inst_1 (.clk_out_1_pre_keep(clk_out_1_pre), 
            .GND_net(GND_net), .clk_out_1_adj(clk_out_1_adj), .n39(reset_n_N_1)) /* synthesis lattice_noprune=1, syn_module_defined=1 */ ;   // /home/andy/workdir/MXO2_test/top.v(64[3] 69[2])
    I2C_SLAVE U_I2C_SLAVE (.SCL_keep(SCL), .n2694(n2694), .reset_n_N_1(reset_n_N_1), 
            .pdata_c_0(pdata_c_0), .RD_EN_keep(RD_EN), .I_SDA_OUT_keep(I_SDA_OUT_keep), 
            .clk_out_2_pre_keep(clk_out_2_pre), .GND_net(GND_net), .n9152(n9152), 
            .\ADD_IN[2]_keep (ADD_IN_2), .n1(paddr_c_0), .pdata_c_1(pdata_c_1), 
            .pdata_c_2(pdata_c_2), .pdata_c_3(pdata_c_3), .pdata_c_4(pdata_c_4), 
            .pdata_c_5(pdata_c_5), .pdata_c_6(pdata_c_6), .pdata_c_7(pdata_c_7), 
            .pdata_c_8(pdata_c_8), .pdata_c_9(pdata_c_9), .pdata_c_10(pdata_c_10), 
            .pdata_c_11(pdata_c_11), .pdata_c_12(pdata_c_12), .pdata_c_13(pdata_c_13), 
            .pdata_c_14(pdata_c_14), .pdata_c_15(pdata_c_15), .n3263(n3263), 
            .STOP_S_c(STOP_S_c), .WRITE_S_c(WRITE_S_c), .i2c_sda_out(i2c_sda_out), 
            .n9199(n9199), .n10167(n10167), .READ_S_c(READ_S_c), .READREG_S_c(READREG_S_c), 
            .READCTRL_S_c(READCTRL_S_c), .IDLE_S_c(IDLE_S_c), .I_SDA_OUT_OE_keep_N_355(I_SDA_OUT_OE_keep_N_355), 
            .n3(paddr_c_1)) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module my_pll
//

module my_pll (clk_in_N_keep, clk_out_1_pre, clk_out_2_pre, GND_net) /* synthesis lattice_noprune=1, NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_in_N_keep;
    output clk_out_1_pre;
    output clk_out_2_pre;
    input GND_net;
    
    wire clk_in_N_keep /* synthesis is_clock=1 */ ;   // /home/andy/workdir/MXO2_test/my_pll.v(9[16:20])
    wire clk_out_1_pre /* synthesis is_clock=1, SET_AS_NETWORK=clk_out_1_pre */ ;   // /home/andy/workdir/MXO2_test/top.v(54[9:22])
    wire clk_out_2_pre /* synthesis is_clock=1, SET_AS_NETWORK=clk_out_2_pre */ ;   // /home/andy/workdir/MXO2_test/top.v(55[9:22])
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_in_N_keep), .CLKFB(clk_out_1_pre), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_out_1_pre), .CLKOS(clk_out_2_pre)) /* synthesis FREQUENCY_PIN_CLKOS="49.500000", FREQUENCY_PIN_CLKOP="396.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="7", LPF_RESISTOR="72", syn_instantiated=1, lattice_noprune=1, LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=81, LSE_LLINE=59, LSE_RLINE=59 */ ;   // /home/andy/workdir/MXO2_test/top.v(59[8:81])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 33;
    defparam PLLInst_0.CLKOP_DIV = 1;
    defparam PLLInst_0.CLKOS_DIV = 8;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 0;
    defparam PLLInst_0.CLKOS_CPHASE = 7;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module \clk_div(N=1000) 
//

module \clk_div(N=1000)  (GND_net, clk_out_2_pre_keep, n39, clk_out_2_adj) /* synthesis lattice_noprune=1, syn_module_defined=1 */ ;
    input GND_net;
    input clk_out_2_pre_keep;
    input n39;
    output clk_out_2_adj;
    
    
    wire n8504;
    wire [31:0]pos_cnt;   // /home/andy/workdir/MXO2_test/clk_div.v(22[18:25])
    wire [31:0]n133;
    
    wire n8505, n8503, n8502, n181, n8501, n8500, n8499, n8498, 
        n8525, n2665, n8497, n8524, n8496, n8523, n8522, n8521, 
        n45, n8555, n46, n42, n34, n14, n10, n25, n44, n38, 
        n26, n40, n30, n8520, n8519, n8518, n8517, n8516, n8515, 
        n8514, n8513, n8512, n8511, n8510, n8509, n8508, n8507, 
        n8506;
    
    CCU2D pos_cnt_1481_add_4_19 (.A0(pos_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8504), .COUT(n8505), .S0(n133[17]), .S1(n133[18]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_19.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_19.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_19.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_19.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_17 (.A0(pos_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8503), .COUT(n8504), .S0(n133[15]), .S1(n133[16]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_17.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_17.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_17.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_17.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_15 (.A0(pos_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8502), .COUT(n8503), .S0(n133[13]), .S1(n133[14]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_15.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_15.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_15.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_15.INJECT1_1 = "NO";
    FD1S3IX pos_cnt_1481__i0 (.D(n133[0]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i0.GSR = "ENABLED";
    CCU2D pos_cnt_1481_add_4_13 (.A0(pos_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8501), .COUT(n8502), .S0(n133[11]), .S1(n133[12]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_13.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_13.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_13.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_13.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_11 (.A0(pos_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8500), .COUT(n8501), .S0(n133[9]), .S1(n133[10]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_11.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_11.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_11.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_11.INJECT1_1 = "NO";
    FD1S3IX pos_cnt_1481__i1 (.D(n133[1]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i1.GSR = "ENABLED";
    CCU2D pos_cnt_1481_add_4_9 (.A0(pos_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8499), .COUT(n8500), .S0(n133[7]), .S1(n133[8]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_9.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_9.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_9.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_9.INJECT1_1 = "NO";
    FD1S3IX pos_cnt_1481__i2 (.D(n133[2]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i2.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i3 (.D(n133[3]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i3.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i4 (.D(n133[4]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i4.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i5 (.D(n133[5]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i5.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i6 (.D(n133[6]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i6.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i7 (.D(n133[7]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i7.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i8 (.D(n133[8]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i8.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i9 (.D(n133[9]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i9.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i10 (.D(n133[10]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i10.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i11 (.D(n133[11]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i11.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i12 (.D(n133[12]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i12.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i13 (.D(n133[13]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i13.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i14 (.D(n133[14]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i14.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i15 (.D(n133[15]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i15.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i16 (.D(n133[16]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i16.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i17 (.D(n133[17]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i17.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i18 (.D(n133[18]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i18.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i19 (.D(n133[19]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i19.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i20 (.D(n133[20]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i20.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i21 (.D(n133[21]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i21.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i22 (.D(n133[22]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i22.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i23 (.D(n133[23]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i23.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i24 (.D(n133[24]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i24.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i25 (.D(n133[25]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i25.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i26 (.D(n133[26]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i26.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i27 (.D(n133[27]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i27.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i28 (.D(n133[28]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i28.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i29 (.D(n133[29]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i29.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i30 (.D(n133[30]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i30.GSR = "ENABLED";
    FD1S3IX pos_cnt_1481__i31 (.D(n133[31]), .CK(clk_out_2_pre_keep), .CD(n181), 
            .Q(pos_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481__i31.GSR = "ENABLED";
    CCU2D pos_cnt_1481_add_4_7 (.A0(pos_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8498), .COUT(n8499), .S0(n133[5]), .S1(n133[6]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_7.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_7.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_7.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_7.INJECT1_1 = "NO";
    CCU2D add_6999_30 (.A0(pos_cnt[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8525), 
          .S1(n2665));
    defparam add_6999_30.INIT0 = 16'h5555;
    defparam add_6999_30.INIT1 = 16'h0000;
    defparam add_6999_30.INJECT1_0 = "NO";
    defparam add_6999_30.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_5 (.A0(pos_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8497), .COUT(n8498), .S0(n133[3]), .S1(n133[4]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_5.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_5.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_5.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_5.INJECT1_1 = "NO";
    CCU2D add_6999_28 (.A0(pos_cnt[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8524), .COUT(n8525));
    defparam add_6999_28.INIT0 = 16'h5555;
    defparam add_6999_28.INIT1 = 16'h5555;
    defparam add_6999_28.INJECT1_0 = "NO";
    defparam add_6999_28.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_3 (.A0(pos_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8496), .COUT(n8497), .S0(n133[1]), .S1(n133[2]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_3.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_3.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_3.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_3.INJECT1_1 = "NO";
    CCU2D add_6999_26 (.A0(pos_cnt[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8523), .COUT(n8524));
    defparam add_6999_26.INIT0 = 16'h5555;
    defparam add_6999_26.INIT1 = 16'h5555;
    defparam add_6999_26.INJECT1_0 = "NO";
    defparam add_6999_26.INJECT1_1 = "NO";
    CCU2D add_6999_24 (.A0(pos_cnt[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8522), .COUT(n8523));
    defparam add_6999_24.INIT0 = 16'h5555;
    defparam add_6999_24.INIT1 = 16'h5555;
    defparam add_6999_24.INJECT1_0 = "NO";
    defparam add_6999_24.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8496), .S1(n133[0]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_1.INIT0 = 16'hF000;
    defparam pos_cnt_1481_add_4_1.INIT1 = 16'h0555;
    defparam pos_cnt_1481_add_4_1.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_1.INJECT1_1 = "NO";
    CCU2D add_6999_22 (.A0(pos_cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8521), .COUT(n8522));
    defparam add_6999_22.INIT0 = 16'h5555;
    defparam add_6999_22.INIT1 = 16'h5555;
    defparam add_6999_22.INJECT1_0 = "NO";
    defparam add_6999_22.INJECT1_1 = "NO";
    LUT4 i121_4_lut (.A(n45), .B(n39), .C(n8555), .D(n46), .Z(n181)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(35[5] 37[8])
    defparam i121_4_lut.init = 16'hccdc;
    LUT4 i21_4_lut (.A(pos_cnt[17]), .B(n42), .C(n34), .D(pos_cnt[16]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(pos_cnt[0]), .B(n14), .C(n10), .D(pos_cnt[9]), 
         .Z(n8555)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i22_4_lut (.A(n25), .B(n44), .C(n38), .D(n26), .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(pos_cnt[21]), .B(pos_cnt[4]), .C(pos_cnt[28]), 
         .D(pos_cnt[11]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i10_2_lut (.A(pos_cnt[13]), .B(pos_cnt[14]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i10_2_lut.init = 16'heeee;
    LUT4 i6_4_lut (.A(pos_cnt[5]), .B(pos_cnt[1]), .C(pos_cnt[6]), .D(pos_cnt[7]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i2_2_lut (.A(pos_cnt[2]), .B(pos_cnt[8]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(pos_cnt[30]), .B(pos_cnt[24]), .Z(n25)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i20_4_lut (.A(pos_cnt[20]), .B(n40), .C(n30), .D(pos_cnt[31]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i14_4_lut (.A(pos_cnt[29]), .B(pos_cnt[12]), .C(pos_cnt[26]), 
         .D(pos_cnt[18]), .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i14_4_lut.init = 16'hfffe;
    CCU2D add_6999_20 (.A0(pos_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8520), .COUT(n8521));
    defparam add_6999_20.INIT0 = 16'h5555;
    defparam add_6999_20.INIT1 = 16'h5555;
    defparam add_6999_20.INJECT1_0 = "NO";
    defparam add_6999_20.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_104 (.A(pos_cnt[15]), .B(pos_cnt[27]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i2_2_lut_adj_104.init = 16'heeee;
    CCU2D add_6999_18 (.A0(pos_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8519), .COUT(n8520));
    defparam add_6999_18.INIT0 = 16'h5555;
    defparam add_6999_18.INIT1 = 16'h5555;
    defparam add_6999_18.INJECT1_0 = "NO";
    defparam add_6999_18.INJECT1_1 = "NO";
    LUT4 i16_4_lut (.A(pos_cnt[22]), .B(pos_cnt[3]), .C(pos_cnt[25]), 
         .D(pos_cnt[10]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(pos_cnt[23]), .B(pos_cnt[19]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i6_2_lut.init = 16'heeee;
    CCU2D add_6999_16 (.A0(pos_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8518), .COUT(n8519));
    defparam add_6999_16.INIT0 = 16'h5555;
    defparam add_6999_16.INIT1 = 16'h5555;
    defparam add_6999_16.INJECT1_0 = "NO";
    defparam add_6999_16.INJECT1_1 = "NO";
    CCU2D add_6999_14 (.A0(pos_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8517), .COUT(n8518));
    defparam add_6999_14.INIT0 = 16'h5555;
    defparam add_6999_14.INIT1 = 16'h5555;
    defparam add_6999_14.INJECT1_0 = "NO";
    defparam add_6999_14.INJECT1_1 = "NO";
    CCU2D add_6999_12 (.A0(pos_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8516), .COUT(n8517));
    defparam add_6999_12.INIT0 = 16'h5555;
    defparam add_6999_12.INIT1 = 16'h5555;
    defparam add_6999_12.INJECT1_0 = "NO";
    defparam add_6999_12.INJECT1_1 = "NO";
    CCU2D add_6999_10 (.A0(pos_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8515), .COUT(n8516));
    defparam add_6999_10.INIT0 = 16'h5555;
    defparam add_6999_10.INIT1 = 16'h5555;
    defparam add_6999_10.INJECT1_0 = "NO";
    defparam add_6999_10.INJECT1_1 = "NO";
    CCU2D add_6999_8 (.A0(pos_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8514), .COUT(n8515));
    defparam add_6999_8.INIT0 = 16'h5555;
    defparam add_6999_8.INIT1 = 16'h5555;
    defparam add_6999_8.INJECT1_0 = "NO";
    defparam add_6999_8.INJECT1_1 = "NO";
    CCU2D add_6999_6 (.A0(pos_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8513), .COUT(n8514));
    defparam add_6999_6.INIT0 = 16'h5aaa;
    defparam add_6999_6.INIT1 = 16'h5aaa;
    defparam add_6999_6.INJECT1_0 = "NO";
    defparam add_6999_6.INJECT1_1 = "NO";
    LUT4 i1343_1_lut (.A(n2665), .Z(clk_out_2_adj)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1343_1_lut.init = 16'h5555;
    CCU2D add_6999_4 (.A0(pos_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8512), .COUT(n8513));
    defparam add_6999_4.INIT0 = 16'h5aaa;
    defparam add_6999_4.INIT1 = 16'h5aaa;
    defparam add_6999_4.INJECT1_0 = "NO";
    defparam add_6999_4.INJECT1_1 = "NO";
    CCU2D add_6999_2 (.A0(pos_cnt[3]), .B0(pos_cnt[2]), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8512));
    defparam add_6999_2.INIT0 = 16'h1000;
    defparam add_6999_2.INIT1 = 16'h5aaa;
    defparam add_6999_2.INJECT1_0 = "NO";
    defparam add_6999_2.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_33 (.A0(pos_cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8511), .S0(n133[31]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_33.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_33.INIT1 = 16'h0000;
    defparam pos_cnt_1481_add_4_33.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_33.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_31 (.A0(pos_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8510), .COUT(n8511), .S0(n133[29]), .S1(n133[30]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_31.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_31.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_31.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_31.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_29 (.A0(pos_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8509), .COUT(n8510), .S0(n133[27]), .S1(n133[28]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_29.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_29.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_29.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_29.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_27 (.A0(pos_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8508), .COUT(n8509), .S0(n133[25]), .S1(n133[26]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_27.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_27.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_27.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_27.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_25 (.A0(pos_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8507), .COUT(n8508), .S0(n133[23]), .S1(n133[24]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_25.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_25.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_25.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_25.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_23 (.A0(pos_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8506), .COUT(n8507), .S0(n133[21]), .S1(n133[22]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_23.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_23.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_23.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_23.INJECT1_1 = "NO";
    CCU2D pos_cnt_1481_add_4_21 (.A0(pos_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8505), .COUT(n8506), .S0(n133[19]), .S1(n133[20]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1481_add_4_21.INIT0 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_21.INIT1 = 16'hfaaa;
    defparam pos_cnt_1481_add_4_21.INJECT1_0 = "NO";
    defparam pos_cnt_1481_add_4_21.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \clk_div(N=1000)_U0 
//

module \clk_div(N=1000)_U0  (clk_out_1_pre_keep, GND_net, clk_out_1_adj, 
            n39) /* synthesis lattice_noprune=1, syn_module_defined=1 */ ;
    input clk_out_1_pre_keep;
    input GND_net;
    output clk_out_1_adj;
    input n39;
    
    wire [31:0]pos_cnt;   // /home/andy/workdir/MXO2_test/clk_div.v(22[18:25])
    
    wire n10, n178;
    wire [31:0]n133;
    
    wire n25, n8467, n8468, n8466, n8471, n8472, n8482, n8483, 
        n40, n30, n44, n8481, n8480, n8479, n8478, n8477, n8495, 
        n2630, n8494, n45, n8556, n46, n42, n34, n14, n38, 
        n26, n8493, n8492, n8491, n8470, n8469, n8490, n8489, 
        n8488, n8476, n8475, n8487, n8474, n8473, n8486, n8485, 
        n8484;
    
    LUT4 i2_2_lut (.A(pos_cnt[2]), .B(pos_cnt[8]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    FD1S3IX pos_cnt_1480__i0 (.D(n133[0]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(pos_cnt[30]), .B(pos_cnt[24]), .Z(n25)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D pos_cnt_1480_add_4_5 (.A0(pos_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8467), .COUT(n8468), .S0(n133[3]), .S1(n133[4]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_5.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_5.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_5.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_5.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_3 (.A0(pos_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8466), .COUT(n8467), .S0(n133[1]), .S1(n133[2]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_3.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_3.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_3.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_3.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_13 (.A0(pos_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8471), .COUT(n8472), .S0(n133[11]), .S1(n133[12]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_13.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_13.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_13.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_13.INJECT1_1 = "NO";
    CCU2D add_7000_4 (.A0(pos_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8482), .COUT(n8483));
    defparam add_7000_4.INIT0 = 16'h5aaa;
    defparam add_7000_4.INIT1 = 16'h5aaa;
    defparam add_7000_4.INJECT1_0 = "NO";
    defparam add_7000_4.INJECT1_1 = "NO";
    FD1S3IX pos_cnt_1480__i31 (.D(n133[31]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i31.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i30 (.D(n133[30]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i30.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i29 (.D(n133[29]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i29.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i28 (.D(n133[28]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i28.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i27 (.D(n133[27]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i27.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i26 (.D(n133[26]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i26.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i25 (.D(n133[25]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i25.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i24 (.D(n133[24]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i24.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i23 (.D(n133[23]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i23.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i22 (.D(n133[22]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i22.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i21 (.D(n133[21]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i21.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i20 (.D(n133[20]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i20.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i19 (.D(n133[19]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i19.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i18 (.D(n133[18]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i18.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i17 (.D(n133[17]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i17.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i16 (.D(n133[16]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i16.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i15 (.D(n133[15]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i15.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i14 (.D(n133[14]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i14.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i13 (.D(n133[13]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i13.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i12 (.D(n133[12]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i12.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i11 (.D(n133[11]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i11.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i10 (.D(n133[10]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i10.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i9 (.D(n133[9]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i9.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i8 (.D(n133[8]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i8.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i7 (.D(n133[7]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i7.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i6 (.D(n133[6]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i6.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i5 (.D(n133[5]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i5.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i4 (.D(n133[4]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i4.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i3 (.D(n133[3]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i3.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i2 (.D(n133[2]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i2.GSR = "ENABLED";
    FD1S3IX pos_cnt_1480__i1 (.D(n133[1]), .CK(clk_out_1_pre_keep), .CD(n178), 
            .Q(pos_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480__i1.GSR = "ENABLED";
    LUT4 i20_4_lut (.A(pos_cnt[20]), .B(n40), .C(n30), .D(pos_cnt[31]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i20_4_lut.init = 16'hfffe;
    CCU2D add_7000_2 (.A0(pos_cnt[3]), .B0(pos_cnt[2]), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8482));
    defparam add_7000_2.INIT0 = 16'h1000;
    defparam add_7000_2.INIT1 = 16'h5aaa;
    defparam add_7000_2.INJECT1_0 = "NO";
    defparam add_7000_2.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_33 (.A0(pos_cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8481), .S0(n133[31]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_33.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_33.INIT1 = 16'h0000;
    defparam pos_cnt_1480_add_4_33.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_33.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_31 (.A0(pos_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8480), .COUT(n8481), .S0(n133[29]), .S1(n133[30]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_31.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_31.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_31.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_31.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_29 (.A0(pos_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8479), .COUT(n8480), .S0(n133[27]), .S1(n133[28]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_29.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_29.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_29.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_29.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_27 (.A0(pos_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8478), .COUT(n8479), .S0(n133[25]), .S1(n133[26]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_27.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_27.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_27.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_27.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_25 (.A0(pos_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8477), .COUT(n8478), .S0(n133[23]), .S1(n133[24]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_25.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_25.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_25.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_25.INJECT1_1 = "NO";
    CCU2D add_7000_30 (.A0(pos_cnt[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8495), 
          .S1(n2630));
    defparam add_7000_30.INIT0 = 16'h5555;
    defparam add_7000_30.INIT1 = 16'h0000;
    defparam add_7000_30.INJECT1_0 = "NO";
    defparam add_7000_30.INJECT1_1 = "NO";
    LUT4 i1341_1_lut (.A(n2630), .Z(clk_out_1_adj)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1341_1_lut.init = 16'h5555;
    CCU2D add_7000_28 (.A0(pos_cnt[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8494), .COUT(n8495));
    defparam add_7000_28.INIT0 = 16'h5555;
    defparam add_7000_28.INIT1 = 16'h5555;
    defparam add_7000_28.INJECT1_0 = "NO";
    defparam add_7000_28.INJECT1_1 = "NO";
    LUT4 i118_4_lut (.A(n45), .B(n39), .C(n8556), .D(n46), .Z(n178)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(35[5] 37[8])
    defparam i118_4_lut.init = 16'hccdc;
    LUT4 i21_4_lut (.A(pos_cnt[17]), .B(n42), .C(n34), .D(pos_cnt[16]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(pos_cnt[0]), .B(n14), .C(n10), .D(pos_cnt[9]), 
         .Z(n8556)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i22_4_lut (.A(n25), .B(n44), .C(n38), .D(n26), .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i22_4_lut.init = 16'hfffe;
    CCU2D add_7000_26 (.A0(pos_cnt[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8493), .COUT(n8494));
    defparam add_7000_26.INIT0 = 16'h5555;
    defparam add_7000_26.INIT1 = 16'h5555;
    defparam add_7000_26.INJECT1_0 = "NO";
    defparam add_7000_26.INJECT1_1 = "NO";
    CCU2D add_7000_24 (.A0(pos_cnt[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8492), .COUT(n8493));
    defparam add_7000_24.INIT0 = 16'h5555;
    defparam add_7000_24.INIT1 = 16'h5555;
    defparam add_7000_24.INJECT1_0 = "NO";
    defparam add_7000_24.INJECT1_1 = "NO";
    CCU2D add_7000_22 (.A0(pos_cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8491), .COUT(n8492));
    defparam add_7000_22.INIT0 = 16'h5555;
    defparam add_7000_22.INIT1 = 16'h5555;
    defparam add_7000_22.INJECT1_0 = "NO";
    defparam add_7000_22.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_11 (.A0(pos_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8470), .COUT(n8471), .S0(n133[9]), .S1(n133[10]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_11.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_11.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_11.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_11.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_9 (.A0(pos_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8469), .COUT(n8470), .S0(n133[7]), .S1(n133[8]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_9.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_9.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_9.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_9.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8466), .S1(n133[0]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_1.INIT0 = 16'hF000;
    defparam pos_cnt_1480_add_4_1.INIT1 = 16'h0555;
    defparam pos_cnt_1480_add_4_1.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_1.INJECT1_1 = "NO";
    LUT4 i18_4_lut (.A(pos_cnt[21]), .B(pos_cnt[4]), .C(pos_cnt[28]), 
         .D(pos_cnt[11]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i10_2_lut (.A(pos_cnt[13]), .B(pos_cnt[14]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i10_2_lut.init = 16'heeee;
    LUT4 i6_4_lut (.A(pos_cnt[5]), .B(pos_cnt[1]), .C(pos_cnt[6]), .D(pos_cnt[7]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    CCU2D add_7000_20 (.A0(pos_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8490), .COUT(n8491));
    defparam add_7000_20.INIT0 = 16'h5555;
    defparam add_7000_20.INIT1 = 16'h5555;
    defparam add_7000_20.INJECT1_0 = "NO";
    defparam add_7000_20.INJECT1_1 = "NO";
    CCU2D add_7000_18 (.A0(pos_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8489), .COUT(n8490));
    defparam add_7000_18.INIT0 = 16'h5555;
    defparam add_7000_18.INIT1 = 16'h5555;
    defparam add_7000_18.INJECT1_0 = "NO";
    defparam add_7000_18.INJECT1_1 = "NO";
    CCU2D add_7000_16 (.A0(pos_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8488), .COUT(n8489));
    defparam add_7000_16.INIT0 = 16'h5555;
    defparam add_7000_16.INIT1 = 16'h5555;
    defparam add_7000_16.INJECT1_0 = "NO";
    defparam add_7000_16.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_23 (.A0(pos_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8476), .COUT(n8477), .S0(n133[21]), .S1(n133[22]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_23.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_23.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_23.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_23.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_21 (.A0(pos_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8475), .COUT(n8476), .S0(n133[19]), .S1(n133[20]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_21.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_21.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_21.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_21.INJECT1_1 = "NO";
    CCU2D add_7000_14 (.A0(pos_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8487), .COUT(n8488));
    defparam add_7000_14.INIT0 = 16'h5555;
    defparam add_7000_14.INIT1 = 16'h5555;
    defparam add_7000_14.INJECT1_0 = "NO";
    defparam add_7000_14.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_19 (.A0(pos_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8474), .COUT(n8475), .S0(n133[17]), .S1(n133[18]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_19.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_19.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_19.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_19.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_7 (.A0(pos_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8468), .COUT(n8469), .S0(n133[5]), .S1(n133[6]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_7.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_7.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_7.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_7.INJECT1_1 = "NO";
    CCU2D pos_cnt_1480_add_4_17 (.A0(pos_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8473), .COUT(n8474), .S0(n133[15]), .S1(n133[16]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_17.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_17.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_17.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_17.INJECT1_1 = "NO";
    LUT4 i14_4_lut (.A(pos_cnt[29]), .B(pos_cnt[12]), .C(pos_cnt[26]), 
         .D(pos_cnt[18]), .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i14_4_lut.init = 16'hfffe;
    CCU2D pos_cnt_1480_add_4_15 (.A0(pos_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pos_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8472), .COUT(n8473), .S0(n133[13]), .S1(n133[14]));   // /home/andy/workdir/MXO2_test/clk_div.v(36[41:52])
    defparam pos_cnt_1480_add_4_15.INIT0 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_15.INIT1 = 16'hfaaa;
    defparam pos_cnt_1480_add_4_15.INJECT1_0 = "NO";
    defparam pos_cnt_1480_add_4_15.INJECT1_1 = "NO";
    CCU2D add_7000_12 (.A0(pos_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8486), .COUT(n8487));
    defparam add_7000_12.INIT0 = 16'h5555;
    defparam add_7000_12.INIT1 = 16'h5555;
    defparam add_7000_12.INJECT1_0 = "NO";
    defparam add_7000_12.INJECT1_1 = "NO";
    CCU2D add_7000_10 (.A0(pos_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8485), .COUT(n8486));
    defparam add_7000_10.INIT0 = 16'h5555;
    defparam add_7000_10.INIT1 = 16'h5555;
    defparam add_7000_10.INJECT1_0 = "NO";
    defparam add_7000_10.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_103 (.A(pos_cnt[15]), .B(pos_cnt[27]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i2_2_lut_adj_103.init = 16'heeee;
    CCU2D add_7000_8 (.A0(pos_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8484), .COUT(n8485));
    defparam add_7000_8.INIT0 = 16'h5555;
    defparam add_7000_8.INIT1 = 16'h5555;
    defparam add_7000_8.INJECT1_0 = "NO";
    defparam add_7000_8.INJECT1_1 = "NO";
    CCU2D add_7000_6 (.A0(pos_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pos_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8483), .COUT(n8484));
    defparam add_7000_6.INIT0 = 16'h5aaa;
    defparam add_7000_6.INIT1 = 16'h5aaa;
    defparam add_7000_6.INJECT1_0 = "NO";
    defparam add_7000_6.INJECT1_1 = "NO";
    LUT4 i16_4_lut (.A(pos_cnt[22]), .B(pos_cnt[3]), .C(pos_cnt[25]), 
         .D(pos_cnt[10]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(pos_cnt[23]), .B(pos_cnt[19]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/clk_div.v(36[18:34])
    defparam i6_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module I2C_SLAVE
//

module I2C_SLAVE (SCL_keep, n2694, reset_n_N_1, pdata_c_0, RD_EN_keep, 
            I_SDA_OUT_keep, clk_out_2_pre_keep, GND_net, n9152, \ADD_IN[2]_keep , 
            n1, pdata_c_1, pdata_c_2, pdata_c_3, pdata_c_4, pdata_c_5, 
            pdata_c_6, pdata_c_7, pdata_c_8, pdata_c_9, pdata_c_10, 
            pdata_c_11, pdata_c_12, pdata_c_13, pdata_c_14, pdata_c_15, 
            n3263, STOP_S_c, WRITE_S_c, i2c_sda_out, n9199, n10167, 
            READ_S_c, READREG_S_c, READCTRL_S_c, IDLE_S_c, I_SDA_OUT_OE_keep_N_355, 
            n3) /* synthesis syn_preserve=1, syn_module_defined=1 */ ;
    input SCL_keep;
    output n2694;
    input reset_n_N_1;
    output pdata_c_0;
    input RD_EN_keep;
    output I_SDA_OUT_keep;
    input clk_out_2_pre_keep;
    input GND_net;
    output n9152;
    input \ADD_IN[2]_keep ;
    input n1;
    output pdata_c_1;
    output pdata_c_2;
    output pdata_c_3;
    output pdata_c_4;
    output pdata_c_5;
    output pdata_c_6;
    output pdata_c_7;
    output pdata_c_8;
    output pdata_c_9;
    output pdata_c_10;
    output pdata_c_11;
    output pdata_c_12;
    output pdata_c_13;
    output pdata_c_14;
    output pdata_c_15;
    input n3263;
    output STOP_S_c;
    output WRITE_S_c;
    input i2c_sda_out;
    output n9199;
    output n10167;
    output READ_S_c;
    output READREG_S_c;
    output READCTRL_S_c;
    output IDLE_S_c;
    output I_SDA_OUT_OE_keep_N_355;
    input n3;
    
    wire [15:0]\RAM[0] ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1023[17:20])
    
    wire n9449;
    wire [9:0]I_SCL_PIPE;
    
    wire I_SDA_DEB, n3114, I_SDA_DEB_N_358, I_SDA_DEB_1, I_SDA_DEB_1_N_369, 
        I_SCL_DEB, n3116, I_SCL_DEB_N_364, I_SCL_DEB_1, I_SCL_DEB_1_N_372, 
        FF, FF_N_465;
    wire [1:0]I_START_EDGE_CNT;
    wire [1:0]n115;
    wire [7:0]I_REG_ADDR;
    wire [7:0]I_REG_ADDR_7__N_168;
    wire [7:0]I_CTRL_BYTE;
    wire [7:0]I_CTRL_BYTE_7__N_176;
    
    wire n10149, n6;
    wire [15:0]\RAM[1] ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1023[17:20])
    
    wire n9447, n9344, n9345, n9346, n10112, n16, n8730, n10170, 
        n9252, n9353, n9354, n9355, n9841, n9393, n9842;
    wire [7:0]I_SDA_DATA;
    wire [7:0]I_SDA_DATA_7__N_184;
    wire [2:0]ST_FSM_STATE;
    wire [2:0]ST_FSM_STATE_2__N_192;
    wire [3:0]sh8out_state;
    wire [3:0]sh8out_state_3__N_195;
    
    wire RFF, RFF_N_488;
    wire [3:0]sh8in_state;
    wire [3:0]n969;
    wire [1:0]ackout_state;
    wire [1:0]ackout_state_1__N_203;
    wire [7:0]I_SREG_SDA_OUT;
    wire [7:0]I_SREG_SDA_OUT_7__N_205;
    wire [7:0]\shift8in.shift ;
    wire [7:0]\shift8in.shift_7__N_213 ;
    wire [7:0]ROReg0;
    
    wire n10_adj_511, n1397, n9446, n10154;
    wire [7:0]ROReg1;
    wire [7:0]ROReg2;
    wire [7:0]ROReg3;
    wire [7:0]I_RD_VAL;
    wire [7:0]I_RD_VAL_7__N_317;
    
    wire n10224;
    wire [9:0]I_SDA_PIPE;
    
    wire n9362, n9363, n9364;
    wire [15:0]\RAM[3] ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1023[17:20])
    
    wire CLOCK_keep_enable_8, I_SDA_ACK_OUT, I_SDA_IN, I_SDA_OUT_OE, 
        I_SCL_FALL, I_SCL_RISE, I_SCL_HIGH, I_SCL_LOW, I_SDA_FALL, 
        I_SDA_RISE, I_SDA_HIGH, I_SDA_LOW, I_WR_OP, I_RD_OP, I_START_FF, 
        I_START_FF_1, I_START_EDGE, I_STOP_EDGE, I_ACK_OE, I_RD_OE, 
        I_SDA_SOURCE_1, I_SDA_SOURCE_2, CLOCK_keep_enable_16;
    wire [15:0]\RAM[2] ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1023[17:20])
    
    wire CLOCK_keep_enable_24, CLOCK_keep_enable_32, CLOCK_keep_enable_37;
    wire [63:0]RAM_0__15__N_82;
    
    wire CLOCK_keep_enable_40, CLOCK_keep_enable_42, CLOCK_keep_enable_48, 
        CLOCK_keep_enable_56, CLOCK_keep_enable_55, CLOCK_keep_enable_63, 
        CLOCK_keep_enable_64, I_ACK_OE_N_444, n9365, n9366, n9367, 
        I_SDA_OUT_OE_N_375, n10171, I_START_FF_N_434, I_WR_OP_N_417, 
        n10114, n9371, n9372, n9373, n5523, n9840, n10134, n10135, 
        n9377, n9378, n9379, n9444, n9443, n15, n1399, n43, 
        n1389, n10145, n6_adj_523, n10148, n10172, n10_adj_524, 
        I_RD_OP_N_427, I_RD_OE_N_459, n9389, n9390, n9391, n20, 
        n229, n70, n8980, n5532, n10081, n9294, n1470, n10152, 
        n23, n10161, n10099, n4840, n9401, n9402, n9403, n9438, 
        n9275, n9416, n9417, n9418, n79, n9419, n9420, n9421, 
        n9422, n9423, n9424, n9425, n9426, n9427, n9428, n9429, 
        n9430, n9431, n9432, n9433, n9434, n9435, n9436, n9437, 
        n9439, n9151, n6_adj_525, n10094, n10083, n9445, n9448, 
        n7, n9450, n9451, n9452, n9453, n9454, n10139, I_SDA_OUT_OE_N_396, 
        n2887, n10140, n9509, n4_adj_526, n10178, n10177, n15_adj_528, 
        n14, I_SDA_DEB_N_360, n10110, n10157, n10166, n1440, n10111, 
        n10136;
    wire [2:0]n2739;
    
    wire n10095, n9897, n10181, n10180, n9336, n9335, n10184, 
        n10121, n6_adj_529, n10117, n10109, n6_adj_530, n12, n9894, 
        n10183, n10141, n10187, n10186, n1395, n9315, n9895, n9892, 
        n9896, n10190, n10189, n10155;
    wire [2:0]n1215;
    wire [2:0]n1233;
    
    wire n4961, n10128, n10118;
    wire [0:0]n2711;
    
    wire n10144, n8554, n10193, n10192, n199;
    wire [3:0]n239;
    
    wire n9893, n10196, n10195, n10191, n10200, n10212, n10176, 
        n10197, n10206, n10221, n10185, n10194, n10209, n10215, 
        n10179, n10203, n10218, n10182, n10199, n10198, n10113;
    wire [2:0]n2698;
    
    wire n10202, n10201, n10205, n10204, n10208, n10207, n10211, 
        n10210, n23_adj_531, n10214, n10213, n10217, n10098, n10089, 
        n14_adj_532, n5130, n8545, n10125, n6_adj_533, n1_adj_534, 
        n10216, n10093;
    wire [2:0]n2730;
    
    wire n9922, n10220, n10219, n10158, n9921, n3436, n10130;
    wire [7:0]n1049;
    
    wire n10223, n10222, n14_adj_535, n10096, n10088, n4_adj_536, 
        n10086, n9325, n3957, n10100;
    wire [7:0]n630;
    
    wire n15_adj_537, n14_adj_538, I_SDA_DEB_N_361, n9935, n9181, 
        n9288, n9286, n5200, n4434, n8707, CLOCK_keep_enable_66, 
        n6795, n5197, n5193, n9934, n5194, n10153, n9148, I_SDA_OUT_OE_N_383, 
        n10160, n10122, n6_adj_539, n9269, n3_adj_540, n9765;
    wire [3:0]n2725;
    
    wire n10101, n9766, n9937, n9938, n9951, n9989, n10115, n10116, 
        n4_adj_541, n4857, n6820, n9949, n9159, n9948, n9154, 
        n9952, n9459, n10138, n10084, n9763, n10133, n4592, n6_adj_542, 
        n10165, n10120, n9458, n6982, n10126, n9513, n9273, n4483, 
        n10105, n5151, n4492, n10106, n4_adj_543, n9462, n9461, 
        n9990, n10097, n10119, n3799, n10123, n9983, n10156, n6_adj_544;
    wire [7:0]n1633;
    wire [7:0]n1624;
    
    wire n10143, n9456, n9996, n10000, n10001, n9455, n10142;
    wire [2:0]n1223;
    
    wire n9321, CLOCK_keep_enable_70, n6957, n5195, n8585, I_SCL_DEB_N_367, 
        n6_adj_545, I_SCL_DEB_N_366, n10082, n9323, n10016, n9112, 
        n14_adj_546, n9072;
    wire [2:0]n1185;
    
    wire n3512, n10169, n6_adj_547, n13, n19, n4_adj_548, n15_adj_549, 
        n14_adj_550, n10173, n10159;
    wire [7:0]n833;
    
    wire n10103, n9411, n9207, n10017, n15_adj_551, n14_adj_552, 
        n6_adj_553, n9936, n9412, n9333, n9939, n9414, n9415, 
        n1650, n48, n45, n9923, n9334, n6_adj_554, n9247, n1562, 
        n6_adj_555;
    wire [3:0]n1441;
    wire [3:0]n1462;
    wire [7:0]n744;
    wire [0:0]n2679;
    
    wire n10104;
    wire [7:0]n800;
    
    wire n10168, n9149, n10127, n10085, n10146, n7_adj_556, n20_adj_557, 
        n14_adj_558, n9279, n9282, n10151, n10132;
    wire [0:0]n2690;
    
    wire n43_adj_559, n10002, n3526, n8_adj_560, n10092, n20_adj_561, 
        n8341, n9242, n9221, n10162;
    wire [7:0]n541;
    wire [7:0]n597;
    
    wire n10102, n4_adj_562, n10175, FF_N_476, n10174, n9284, n10164, 
        n8623, n10163, n9302, n4_adj_563, n9984, n10137, n2_adj_564, 
        n3_adj_565, n9178, n9460, n10124, I_SDA_OUT_OE_N_394;
    wire [7:0]n1016;
    
    wire n10087, n8706, n4560, n4_adj_566, n9236, n8708, n6952, 
        n10188, n9463, n72, n80, n72_adj_567;
    wire [7:0]n960;
    
    wire n7_adj_568, n80_adj_569, n72_adj_570, n80_adj_571, n72_adj_572, 
        n80_adj_573, n72_adj_574, n6_adj_575, n80_adj_576, n72_adj_578, 
        n80_adj_579, n72_adj_580, n4426, n9296, n80_adj_581, n9457, 
        n9337;
    
    LUT4 i7923_3_lut (.A(\RAM[0] [11]), .B(\RAM[0] [3]), .C(I_REG_ADDR[0]), 
         .Z(n9449)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7923_3_lut.init = 16'hcaca;
    FD1S3JX I_SCL_PIPE_i0 (.D(SCL_keep), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i0.GSR = "ENABLED";
    FD1S3JX I_SDA_DEB_450 (.D(I_SDA_DEB_N_358), .CK(clk_out_2_pre_keep), 
            .PD(n3114), .Q(I_SDA_DEB)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_DEB_450.GSR = "ENABLED";
    FD1S3JX I_SDA_DEB_1_451 (.D(I_SDA_DEB_1_N_369), .CK(clk_out_2_pre_keep), 
            .PD(reset_n_N_1), .Q(I_SDA_DEB_1)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_DEB_1_451.GSR = "ENABLED";
    FD1S3JX I_SCL_DEB_453 (.D(I_SCL_DEB_N_364), .CK(clk_out_2_pre_keep), 
            .PD(n3116), .Q(I_SCL_DEB)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_DEB_453.GSR = "ENABLED";
    FD1S3JX I_SCL_DEB_1_454 (.D(I_SCL_DEB_1_N_372), .CK(clk_out_2_pre_keep), 
            .PD(reset_n_N_1), .Q(I_SCL_DEB_1)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_DEB_1_454.GSR = "ENABLED";
    FD1S3IX FF_466 (.D(FF_N_465), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(FF));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam FF_466.GSR = "ENABLED";
    FD1S3IX I_START_EDGE_CNT_i0 (.D(n115[0]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(I_START_EDGE_CNT[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(242[8] 274[4])
    defparam I_START_EDGE_CNT_i0.GSR = "ENABLED";
    FD1S3AX I_REG_ADDR_i0 (.D(I_REG_ADDR_7__N_168[0]), .CK(clk_out_2_pre_keep), 
            .Q(I_REG_ADDR[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_REG_ADDR_i0.GSR = "ENABLED";
    FD1S3AX I_CTRL_BYTE_i0 (.D(I_CTRL_BYTE_7__N_176[0]), .CK(clk_out_2_pre_keep), 
            .Q(I_CTRL_BYTE[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_CTRL_BYTE_i0.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(reset_n_N_1), .B(I_STOP_EDGE), .C(n10149), 
         .D(ST_FSM_STATE[2]), .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(515[2] 518[5])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i7921_3_lut (.A(\RAM[1] [10]), .B(\RAM[1] [2]), .C(I_REG_ADDR[0]), 
         .Z(n9447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7921_3_lut.init = 16'hcaca;
    PFUMX i7820 (.BLUT(n9344), .ALUT(n9345), .C0(I_REG_ADDR[0]), .Z(n9346));
    LUT4 i1_2_lut_rep_118_3_lut (.A(reset_n_N_1), .B(I_STOP_EDGE), .C(ST_FSM_STATE[2]), 
         .Z(n10112)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(515[2] 518[5])
    defparam i1_2_lut_rep_118_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut (.A(reset_n_N_1), .B(I_STOP_EDGE), .C(n16), .Z(n8730)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(515[2] 518[5])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_176 (.A(sh8in_state[0]), .B(sh8in_state[1]), .Z(n10170)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_rep_176.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_31 (.A(sh8in_state[0]), .B(sh8in_state[1]), 
         .C(I_SCL_RISE), .Z(n9252)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_3_lut_adj_31.init = 16'h2020;
    PFUMX i7829 (.BLUT(n9353), .ALUT(n9354), .C0(I_REG_ADDR[0]), .Z(n9355));
    PFUMX i8254 (.BLUT(n9841), .ALUT(n9393), .C0(n2694), .Z(n9842));
    FD1S3AX I_SDA_DATA_i0 (.D(I_SDA_DATA_7__N_184[0]), .CK(clk_out_2_pre_keep), 
            .Q(I_SDA_DATA[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_DATA_i0.GSR = "ENABLED";
    FD1S3AX ST_FSM_STATE_i0 (.D(ST_FSM_STATE_2__N_192[0]), .CK(clk_out_2_pre_keep), 
            .Q(ST_FSM_STATE[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam ST_FSM_STATE_i0.GSR = "ENABLED";
    FD1S3AX sh8out_state_i0 (.D(sh8out_state_3__N_195[0]), .CK(clk_out_2_pre_keep), 
            .Q(sh8out_state[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam sh8out_state_i0.GSR = "ENABLED";
    FD1S3JX RFF_467 (.D(RFF_N_488), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(RFF)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam RFF_467.GSR = "ENABLED";
    FD1S3IX sh8in_state_i0 (.D(n969[0]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(sh8in_state[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam sh8in_state_i0.GSR = "ENABLED";
    FD1S3AX ackout_state_i0 (.D(ackout_state_1__N_203[0]), .CK(clk_out_2_pre_keep), 
            .Q(ackout_state[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam ackout_state_i0.GSR = "ENABLED";
    FD1S3AX I_SREG_SDA_OUT_i0 (.D(I_SREG_SDA_OUT_7__N_205[0]), .CK(clk_out_2_pre_keep), 
            .Q(I_SREG_SDA_OUT[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SREG_SDA_OUT_i0.GSR = "ENABLED";
    FD1S3AX \shift8in.shift_i0  (.D(\shift8in.shift_7__N_213 [0]), .CK(clk_out_2_pre_keep), 
            .Q(\shift8in.shift [0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam \shift8in.shift_i0 .GSR = "ENABLED";
    FD1S3IX ROReg0_i0 (.D(ROReg0[0]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg0[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_32 (.A(reset_n_N_1), .B(I_STOP_EDGE), .C(n10_adj_511), 
         .Z(n1397)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(515[2] 518[5])
    defparam i1_2_lut_3_lut_adj_32.init = 16'h1010;
    LUT4 i7920_3_lut (.A(\RAM[0] [10]), .B(\RAM[0] [2]), .C(I_REG_ADDR[0]), 
         .Z(n9446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7920_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_160_3_lut (.A(sh8in_state[0]), .B(sh8in_state[1]), 
         .C(sh8in_state[2]), .Z(n10154)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_rep_160_3_lut.init = 16'h0202;
    FD1S3IX ROReg1_i0 (.D(ROReg1[0]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg1[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg1_i0.GSR = "ENABLED";
    FD1S3IX ROReg2_i0 (.D(ROReg2[0]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg2[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg2_i0.GSR = "ENABLED";
    FD1S3IX ROReg3_i0 (.D(ROReg3[0]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg3[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg3_i0.GSR = "ENABLED";
    FD1S3AX I_RD_VAL_i0 (.D(I_RD_VAL_7__N_317[0]), .CK(clk_out_2_pre_keep), 
            .Q(I_RD_VAL[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam I_RD_VAL_i0.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i1 (.D(n10224), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_0)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i1.GSR = "ENABLED";
    FD1S3JX I_SDA_PIPE_i0 (.D(I_SDA_IN), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[0])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i0.GSR = "ENABLED";
    PFUMX i7838 (.BLUT(n9362), .ALUT(n9363), .C0(I_REG_ADDR[0]), .Z(n9364));
    FD1P3IX RAM_3__i1 (.D(I_SDA_DATA[0]), .SP(CLOCK_keep_enable_8), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [0])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i1.GSR = "ENABLED";
    FD1P3IX RAM_3__i2 (.D(I_SDA_DATA[1]), .SP(CLOCK_keep_enable_8), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [1])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i2.GSR = "ENABLED";
    FD1P3IX RAM_3__i3 (.D(I_SDA_DATA[2]), .SP(CLOCK_keep_enable_8), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [2])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i3.GSR = "ENABLED";
    FD1P3IX RAM_3__i4 (.D(I_SDA_DATA[3]), .SP(CLOCK_keep_enable_8), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [3])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i4.GSR = "ENABLED";
    FD1P3IX RAM_3__i5 (.D(I_SDA_DATA[4]), .SP(CLOCK_keep_enable_8), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [4])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i5.GSR = "ENABLED";
    FD1P3IX RAM_3__i6 (.D(I_SDA_DATA[5]), .SP(CLOCK_keep_enable_8), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [5])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i6.GSR = "ENABLED";
    FD1P3IX RAM_3__i7 (.D(I_SDA_DATA[6]), .SP(CLOCK_keep_enable_8), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [6])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i7.GSR = "ENABLED";
    FD1P3IX RAM_3__i8 (.D(I_SDA_DATA[7]), .SP(CLOCK_keep_enable_8), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [7])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i8.GSR = "ENABLED";
    FD1P3IX RAM_3__i9 (.D(I_SDA_DATA[0]), .SP(CLOCK_keep_enable_16), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [8])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i9.GSR = "ENABLED";
    FD1P3IX RAM_3__i10 (.D(I_SDA_DATA[1]), .SP(CLOCK_keep_enable_16), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [9])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i10.GSR = "ENABLED";
    FD1P3IX RAM_3__i11 (.D(I_SDA_DATA[2]), .SP(CLOCK_keep_enable_16), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [10])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i11.GSR = "ENABLED";
    FD1P3IX RAM_3__i12 (.D(I_SDA_DATA[3]), .SP(CLOCK_keep_enable_16), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [11])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i12.GSR = "ENABLED";
    FD1P3IX RAM_3__i13 (.D(I_SDA_DATA[4]), .SP(CLOCK_keep_enable_16), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [12])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i13.GSR = "ENABLED";
    FD1P3IX RAM_3__i14 (.D(I_SDA_DATA[5]), .SP(CLOCK_keep_enable_16), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [13])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i14.GSR = "ENABLED";
    FD1P3IX RAM_3__i15 (.D(I_SDA_DATA[6]), .SP(CLOCK_keep_enable_16), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [14])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i15.GSR = "ENABLED";
    FD1P3IX RAM_3__i16 (.D(I_SDA_DATA[7]), .SP(CLOCK_keep_enable_16), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[3] [15])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i16.GSR = "ENABLED";
    FD1P3IX RAM_3__i17 (.D(I_SDA_DATA[0]), .SP(CLOCK_keep_enable_24), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [0])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i17.GSR = "ENABLED";
    FD1P3IX RAM_3__i18 (.D(I_SDA_DATA[1]), .SP(CLOCK_keep_enable_24), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [1])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i18.GSR = "ENABLED";
    FD1P3IX RAM_3__i19 (.D(I_SDA_DATA[2]), .SP(CLOCK_keep_enable_24), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [2])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i19.GSR = "ENABLED";
    FD1P3IX RAM_3__i20 (.D(I_SDA_DATA[3]), .SP(CLOCK_keep_enable_24), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [3])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i20.GSR = "ENABLED";
    FD1P3IX RAM_3__i21 (.D(I_SDA_DATA[4]), .SP(CLOCK_keep_enable_24), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [4])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i21.GSR = "ENABLED";
    FD1P3IX RAM_3__i22 (.D(I_SDA_DATA[5]), .SP(CLOCK_keep_enable_24), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [5])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i22.GSR = "ENABLED";
    FD1P3IX RAM_3__i23 (.D(I_SDA_DATA[6]), .SP(CLOCK_keep_enable_24), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [6])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i23.GSR = "ENABLED";
    FD1P3IX RAM_3__i24 (.D(I_SDA_DATA[7]), .SP(CLOCK_keep_enable_24), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [7])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i24.GSR = "ENABLED";
    FD1P3IX RAM_3__i25 (.D(I_SDA_DATA[0]), .SP(CLOCK_keep_enable_32), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [8])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i25.GSR = "ENABLED";
    FD1P3IX RAM_3__i26 (.D(I_SDA_DATA[1]), .SP(CLOCK_keep_enable_32), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [9])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i26.GSR = "ENABLED";
    FD1P3IX RAM_3__i27 (.D(I_SDA_DATA[2]), .SP(CLOCK_keep_enable_32), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [10])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i27.GSR = "ENABLED";
    FD1P3IX RAM_3__i28 (.D(I_SDA_DATA[3]), .SP(CLOCK_keep_enable_32), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [11])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i28.GSR = "ENABLED";
    FD1P3IX RAM_3__i29 (.D(I_SDA_DATA[4]), .SP(CLOCK_keep_enable_32), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [12])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i29.GSR = "ENABLED";
    FD1P3IX RAM_3__i30 (.D(I_SDA_DATA[5]), .SP(CLOCK_keep_enable_32), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [13])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i30.GSR = "ENABLED";
    FD1P3IX RAM_3__i31 (.D(I_SDA_DATA[6]), .SP(CLOCK_keep_enable_32), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [14])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i31.GSR = "ENABLED";
    FD1P3IX RAM_3__i32 (.D(I_SDA_DATA[7]), .SP(CLOCK_keep_enable_32), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[2] [15])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i32.GSR = "ENABLED";
    FD1P3AY RAM_3__i33 (.D(RAM_0__15__N_82[40]), .SP(CLOCK_keep_enable_37), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [0])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i33.GSR = "ENABLED";
    FD1P3IX RAM_3__i34 (.D(I_SDA_DATA[1]), .SP(CLOCK_keep_enable_40), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [1])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i34.GSR = "ENABLED";
    FD1P3AY RAM_3__i35 (.D(RAM_0__15__N_82[34]), .SP(CLOCK_keep_enable_37), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [2])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i35.GSR = "ENABLED";
    FD1P3AY RAM_3__i36 (.D(RAM_0__15__N_82[35]), .SP(CLOCK_keep_enable_37), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [3])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i36.GSR = "ENABLED";
    FD1P3AY RAM_3__i37 (.D(RAM_0__15__N_82[36]), .SP(CLOCK_keep_enable_37), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [4])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i37.GSR = "ENABLED";
    FD1P3IX RAM_3__i38 (.D(I_SDA_DATA[5]), .SP(CLOCK_keep_enable_40), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [5])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i38.GSR = "ENABLED";
    FD1P3IX RAM_3__i39 (.D(I_SDA_DATA[6]), .SP(CLOCK_keep_enable_40), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [6])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i39.GSR = "ENABLED";
    FD1P3IX RAM_3__i40 (.D(I_SDA_DATA[7]), .SP(CLOCK_keep_enable_40), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [7])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i40.GSR = "ENABLED";
    FD1P3AY RAM_3__i41 (.D(RAM_0__15__N_82[40]), .SP(CLOCK_keep_enable_42), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [8])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i41.GSR = "ENABLED";
    FD1P3AY RAM_3__i42 (.D(RAM_0__15__N_82[41]), .SP(CLOCK_keep_enable_42), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [9])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i42.GSR = "ENABLED";
    FD1P3IX RAM_3__i43 (.D(I_SDA_DATA[2]), .SP(CLOCK_keep_enable_48), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [10])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i43.GSR = "ENABLED";
    FD1P3IX RAM_3__i44 (.D(I_SDA_DATA[3]), .SP(CLOCK_keep_enable_48), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [11])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i44.GSR = "ENABLED";
    FD1P3IX RAM_3__i45 (.D(I_SDA_DATA[4]), .SP(CLOCK_keep_enable_48), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [12])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i45.GSR = "ENABLED";
    FD1P3IX RAM_3__i46 (.D(I_SDA_DATA[5]), .SP(CLOCK_keep_enable_48), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [13])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i46.GSR = "ENABLED";
    FD1P3IX RAM_3__i47 (.D(I_SDA_DATA[6]), .SP(CLOCK_keep_enable_48), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [14])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i47.GSR = "ENABLED";
    FD1P3IX RAM_3__i48 (.D(I_SDA_DATA[7]), .SP(CLOCK_keep_enable_48), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[1] [15])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i48.GSR = "ENABLED";
    FD1P3AY RAM_3__i49 (.D(RAM_0__15__N_82[40]), .SP(CLOCK_keep_enable_56), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [0])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i49.GSR = "ENABLED";
    FD1P3IX RAM_3__i50 (.D(I_SDA_DATA[1]), .SP(CLOCK_keep_enable_55), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [1])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i50.GSR = "ENABLED";
    FD1P3AY RAM_3__i51 (.D(RAM_0__15__N_82[34]), .SP(CLOCK_keep_enable_56), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [2])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i51.GSR = "ENABLED";
    FD1P3IX RAM_3__i52 (.D(I_SDA_DATA[3]), .SP(CLOCK_keep_enable_55), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [3])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i52.GSR = "ENABLED";
    FD1P3AY RAM_3__i53 (.D(RAM_0__15__N_82[36]), .SP(CLOCK_keep_enable_56), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [4])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i53.GSR = "ENABLED";
    FD1P3IX RAM_3__i54 (.D(I_SDA_DATA[5]), .SP(CLOCK_keep_enable_55), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [5])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i54.GSR = "ENABLED";
    FD1P3IX RAM_3__i55 (.D(I_SDA_DATA[6]), .SP(CLOCK_keep_enable_55), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [6])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i55.GSR = "ENABLED";
    FD1P3AY RAM_3__i56 (.D(RAM_0__15__N_82[55]), .SP(CLOCK_keep_enable_56), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [7])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i56.GSR = "ENABLED";
    FD1P3IX RAM_3__i57 (.D(I_SDA_DATA[0]), .SP(CLOCK_keep_enable_63), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [8])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i57.GSR = "ENABLED";
    FD1P3IX RAM_3__i58 (.D(I_SDA_DATA[1]), .SP(CLOCK_keep_enable_63), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [9])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i58.GSR = "ENABLED";
    FD1P3IX RAM_3__i59 (.D(I_SDA_DATA[2]), .SP(CLOCK_keep_enable_63), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [10])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i59.GSR = "ENABLED";
    FD1P3IX RAM_3__i60 (.D(I_SDA_DATA[3]), .SP(CLOCK_keep_enable_63), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [11])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i60.GSR = "ENABLED";
    FD1P3IX RAM_3__i61 (.D(I_SDA_DATA[4]), .SP(CLOCK_keep_enable_63), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [12])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i61.GSR = "ENABLED";
    FD1P3IX RAM_3__i62 (.D(I_SDA_DATA[5]), .SP(CLOCK_keep_enable_63), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [13])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i62.GSR = "ENABLED";
    FD1P3IX RAM_3__i63 (.D(I_SDA_DATA[6]), .SP(CLOCK_keep_enable_63), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [14])) /* synthesis lse_init_val=0, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i63.GSR = "ENABLED";
    FD1P3AY RAM_3__i64 (.D(RAM_0__15__N_82[55]), .SP(CLOCK_keep_enable_64), 
            .CK(clk_out_2_pre_keep), .Q(\RAM[0] [15])) /* synthesis lse_init_val=1, syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam RAM_3__i64.GSR = "ENABLED";
    FD1S3IX I_ACK_OE_462 (.D(I_ACK_OE_N_444), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(I_ACK_OE));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_ACK_OE_462.GSR = "ENABLED";
    PFUMX i7841 (.BLUT(n9365), .ALUT(n9366), .C0(I_REG_ADDR[1]), .Z(n9367));
    FD1S3IX I_SDA_OUT_OE_461 (.D(I_SDA_OUT_OE_N_375), .CK(clk_out_2_pre_keep), 
            .CD(reset_n_N_1), .Q(I_SDA_OUT_OE));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_OUT_OE_461.GSR = "ENABLED";
    LUT4 i5279_2_lut_rep_177 (.A(n2694), .B(ST_FSM_STATE[0]), .Z(n10171)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5279_2_lut_rep_177.init = 16'heeee;
    FD1S3IX I_START_FF_455 (.D(I_START_FF_N_434), .CK(clk_out_2_pre_keep), 
            .CD(reset_n_N_1), .Q(I_START_FF));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(242[8] 274[4])
    defparam I_START_FF_455.GSR = "ENABLED";
    FD1S3IX I_WR_OP_471 (.D(I_WR_OP_N_417), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(I_WR_OP));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_WR_OP_471.GSR = "ENABLED";
    LUT4 i4_2_lut_rep_120_2_lut_3_lut_3_lut_4_lut (.A(n2694), .B(ST_FSM_STATE[0]), 
         .C(reset_n_N_1), .D(ST_FSM_STATE[2]), .Z(n10114)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4_2_lut_rep_120_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    PFUMX i7847 (.BLUT(n9371), .ALUT(n9372), .C0(I_REG_ADDR[1]), .Z(n9373));
    LUT4 n5523_bdd_3_lut_4_lut (.A(n2694), .B(ST_FSM_STATE[0]), .C(FF), 
         .D(n5523), .Z(n9840)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam n5523_bdd_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1520_4_lut_4_lut (.A(n10134), .B(n10135), .C(I_START_EDGE_CNT[0]), 
         .D(I_START_EDGE_CNT[1]), .Z(n115[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(268[14] 272[12])
    defparam i1520_4_lut_4_lut.init = 16'hd01c;
    PFUMX i7853 (.BLUT(n9377), .ALUT(n9378), .C0(I_REG_ADDR[0]), .Z(n9379));
    LUT4 i7918_3_lut (.A(\RAM[1] [9]), .B(\RAM[1] [1]), .C(I_REG_ADDR[0]), 
         .Z(n9444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7918_3_lut.init = 16'hcaca;
    LUT4 i7917_3_lut (.A(\RAM[0] [9]), .B(\RAM[0] [1]), .C(I_REG_ADDR[0]), 
         .Z(n9443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7917_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_33 (.A(reset_n_N_1), .B(I_STOP_EDGE), .C(n15), 
         .Z(n1399)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(515[2] 518[5])
    defparam i1_2_lut_3_lut_adj_33.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_34 (.A(reset_n_N_1), .B(I_STOP_EDGE), .C(n43), 
         .Z(n1389)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(515[2] 518[5])
    defparam i1_2_lut_3_lut_adj_34.init = 16'h1010;
    LUT4 i4_4_lut_4_lut (.A(n10145), .B(n6_adj_523), .C(n10148), .D(n10172), 
         .Z(n10_adj_524)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i4_4_lut_4_lut.init = 16'h4000;
    FD1S3IX I_RD_OP_472 (.D(I_RD_OP_N_427), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(I_RD_OP));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_RD_OP_472.GSR = "ENABLED";
    FD1S3IX I_RD_OE_463 (.D(I_RD_OE_N_459), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(I_RD_OE));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_RD_OE_463.GSR = "ENABLED";
    PFUMX i7865 (.BLUT(n9389), .ALUT(n9390), .C0(I_REG_ADDR[0]), .Z(n9391));
    LUT4 i28_4_lut (.A(I_RD_VAL[0]), .B(n20), .C(n229), .D(n70), .Z(I_RD_VAL_7__N_317[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i28_4_lut.init = 16'hfaca;
    LUT4 i1_4_lut_4_lut (.A(n10134), .B(n10135), .C(I_START_EDGE_CNT[0]), 
         .D(I_START_EDGE_CNT[1]), .Z(n8980)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C+(D))+!B (D))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(268[14] 272[12])
    defparam i1_4_lut_4_lut.init = 16'hddc0;
    LUT4 i5418_3_lut_4_lut (.A(n2694), .B(ST_FSM_STATE[0]), .C(I_WR_OP), 
         .D(FF), .Z(n5532)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;
    defparam i5418_3_lut_4_lut.init = 16'he1f0;
    LUT4 mux_1074_i4_4_lut_4_lut (.A(n10081), .B(n9294), .C(n1470), .D(sh8out_state[3]), 
         .Z(sh8out_state_3__N_195[3])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C)+!B (C+(D))))) */ ;
    defparam mux_1074_i4_4_lut_4_lut.init = 16'h5350;
    LUT4 i1_2_lut_rep_105_3_lut_4_lut (.A(FF), .B(n10152), .C(n23), .D(n10161), 
         .Z(n10099)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_105_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut (.A(ST_FSM_STATE[0]), .B(FF), .Z(n4840)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i7877 (.BLUT(n9401), .ALUT(n9402), .C0(I_REG_ADDR[0]), .Z(n9403));
    LUT4 i7912_3_lut (.A(ROReg2[7]), .B(ROReg3[7]), .C(I_REG_ADDR[0]), 
         .Z(n9438)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7912_3_lut.init = 16'hcaca;
    LUT4 i7750_2_lut_3_lut_4_lut (.A(n2694), .B(ST_FSM_STATE[0]), .C(n10172), 
         .D(FF), .Z(n9275)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7750_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 equal_22_i3_2_lut_rep_178 (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .Z(n10172)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(431[16:35])
    defparam equal_22_i3_2_lut_rep_178.init = 16'hbbbb;
    LUT4 i4017_3_lut_rep_155_4_lut (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .C(FF), .D(I_WR_OP), .Z(n10149)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(431[16:35])
    defparam i4017_3_lut_rep_155_4_lut.init = 16'hf404;
    PFUMX i7892 (.BLUT(n9416), .ALUT(n9417), .C0(I_REG_ADDR[0]), .Z(n9418));
    LUT4 i59_3_lut (.A(n79), .B(n9367), .C(I_REG_ADDR[3]), .Z(n70)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i59_3_lut.init = 16'hcaca;
    PFUMX i7895 (.BLUT(n9419), .ALUT(n9420), .C0(I_REG_ADDR[1]), .Z(n9421));
    PFUMX i7898 (.BLUT(n9422), .ALUT(n9423), .C0(I_REG_ADDR[1]), .Z(n9424));
    FD1S3AX I_REG_ADDR_i7 (.D(I_REG_ADDR_7__N_168[7]), .CK(clk_out_2_pre_keep), 
            .Q(I_REG_ADDR[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_REG_ADDR_i7.GSR = "ENABLED";
    FD1S3AX I_REG_ADDR_i6 (.D(I_REG_ADDR_7__N_168[6]), .CK(clk_out_2_pre_keep), 
            .Q(I_REG_ADDR[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_REG_ADDR_i6.GSR = "ENABLED";
    FD1S3AX I_REG_ADDR_i5 (.D(I_REG_ADDR_7__N_168[5]), .CK(clk_out_2_pre_keep), 
            .Q(I_REG_ADDR[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_REG_ADDR_i5.GSR = "ENABLED";
    FD1S3AX I_REG_ADDR_i4 (.D(I_REG_ADDR_7__N_168[4]), .CK(clk_out_2_pre_keep), 
            .Q(I_REG_ADDR[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_REG_ADDR_i4.GSR = "ENABLED";
    FD1S3AX I_REG_ADDR_i3 (.D(I_REG_ADDR_7__N_168[3]), .CK(clk_out_2_pre_keep), 
            .Q(I_REG_ADDR[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_REG_ADDR_i3.GSR = "ENABLED";
    FD1S3AX I_REG_ADDR_i2 (.D(I_REG_ADDR_7__N_168[2]), .CK(clk_out_2_pre_keep), 
            .Q(I_REG_ADDR[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_REG_ADDR_i2.GSR = "ENABLED";
    FD1S3AX I_REG_ADDR_i1 (.D(I_REG_ADDR_7__N_168[1]), .CK(clk_out_2_pre_keep), 
            .Q(I_REG_ADDR[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_REG_ADDR_i1.GSR = "ENABLED";
    FD1S3IX I_START_EDGE_CNT_i1 (.D(n8980), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(I_START_EDGE_CNT[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(242[8] 274[4])
    defparam I_START_EDGE_CNT_i1.GSR = "ENABLED";
    FD1S3JX I_SCL_PIPE_i9 (.D(I_SCL_PIPE[8]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i9.GSR = "ENABLED";
    FD1S3JX I_SCL_PIPE_i8 (.D(I_SCL_PIPE[7]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i8.GSR = "ENABLED";
    FD1S3JX I_SCL_PIPE_i7 (.D(I_SCL_PIPE[6]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i7.GSR = "ENABLED";
    FD1S3JX I_SCL_PIPE_i6 (.D(I_SCL_PIPE[5]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i6.GSR = "ENABLED";
    FD1S3JX I_SCL_PIPE_i5 (.D(I_SCL_PIPE[4]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i5.GSR = "ENABLED";
    FD1S3JX I_SCL_PIPE_i4 (.D(I_SCL_PIPE[3]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i4.GSR = "ENABLED";
    FD1S3JX I_SCL_PIPE_i3 (.D(I_SCL_PIPE[2]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i3.GSR = "ENABLED";
    FD1S3JX I_SCL_PIPE_i2 (.D(I_SCL_PIPE[1]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i2.GSR = "ENABLED";
    FD1S3JX I_SCL_PIPE_i1 (.D(I_SCL_PIPE[0]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SCL_PIPE[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SCL_PIPE_i1.GSR = "ENABLED";
    FD1S3AX I_CTRL_BYTE_i1 (.D(I_CTRL_BYTE_7__N_176[1]), .CK(clk_out_2_pre_keep), 
            .Q(I_CTRL_BYTE[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_CTRL_BYTE_i1.GSR = "ENABLED";
    PFUMX i7901 (.BLUT(n9425), .ALUT(n9426), .C0(I_REG_ADDR[1]), .Z(n9427));
    PFUMX i7904 (.BLUT(n9428), .ALUT(n9429), .C0(I_REG_ADDR[1]), .Z(n9430));
    PFUMX i7907 (.BLUT(n9431), .ALUT(n9432), .C0(I_REG_ADDR[1]), .Z(n9433));
    PFUMX i7910 (.BLUT(n9434), .ALUT(n9435), .C0(I_REG_ADDR[1]), .Z(n9436));
    PFUMX i7913 (.BLUT(n9437), .ALUT(n9438), .C0(I_REG_ADDR[1]), .Z(n9439));
    LUT4 i1_4_lut (.A(I_CTRL_BYTE[0]), .B(n9151), .C(n6_adj_525), .D(I_CTRL_BYTE[4]), 
         .Z(n9152)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hdfff;
    LUT4 i1_3_lut_rep_89_4_lut (.A(sh8out_state[3]), .B(n10094), .C(sh8out_state[2]), 
         .D(sh8out_state[1]), .Z(n10083)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_3_lut_rep_89_4_lut.init = 16'h0440;
    LUT4 i7911_3_lut (.A(ROReg0[7]), .B(ROReg1[7]), .C(I_REG_ADDR[0]), 
         .Z(n9437)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7911_3_lut.init = 16'hcaca;
    PFUMX i7919 (.BLUT(n9443), .ALUT(n9444), .C0(I_REG_ADDR[1]), .Z(n9445));
    PFUMX i7922 (.BLUT(n9446), .ALUT(n9447), .C0(I_REG_ADDR[1]), .Z(n9448));
    LUT4 i2_2_lut_3_lut_4_lut_adj_35 (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .C(sh8in_state[2]), .D(sh8in_state[3]), .Z(n7)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(431[16:35])
    defparam i2_2_lut_3_lut_4_lut_adj_35.init = 16'h0b00;
    PFUMX i7925 (.BLUT(n9449), .ALUT(n9450), .C0(I_REG_ADDR[1]), .Z(n9451));
    LUT4 i7909_3_lut (.A(ROReg2[6]), .B(ROReg3[6]), .C(I_REG_ADDR[0]), 
         .Z(n9435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7909_3_lut.init = 16'hcaca;
    PFUMX i7928 (.BLUT(n9452), .ALUT(n9453), .C0(I_REG_ADDR[1]), .Z(n9454));
    LUT4 i1633_2_lut_rep_145 (.A(I_SCL_FALL), .B(ackout_state[0]), .Z(n10139)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(845[5] 878[12])
    defparam i1633_2_lut_rep_145.init = 16'h2222;
    LUT4 ackout_state_1__keep_I_0_545_i3_4_lut_4_lut (.A(I_SCL_FALL), .B(ackout_state[0]), 
         .C(ackout_state[1]), .D(I_SDA_OUT_OE), .Z(I_SDA_OUT_OE_N_396)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D)+!B !(C+!(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(845[5] 878[12])
    defparam ackout_state_1__keep_I_0_545_i3_4_lut_4_lut.init = 16'hcf02;
    LUT4 i1_2_lut_rep_146 (.A(I_REG_ADDR[0]), .B(n2887), .Z(n10140)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i1_2_lut_rep_146.init = 16'hbbbb;
    LUT4 i8088_4_lut_4_lut (.A(FF), .B(n2694), .C(ST_FSM_STATE[0]), .D(ST_FSM_STATE[2]), 
         .Z(n9509)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D)))) */ ;
    defparam i8088_4_lut_4_lut.init = 16'hcff7;
    LUT4 i1_2_lut_4_lut (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), .C(I_STOP_EDGE), 
         .D(n43), .Z(n4_adj_526)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_4_lut.init = 16'h0200;
    LUT4 n9368_bdd_4_lut_then_4_lut (.A(\RAM[3] [12]), .B(\RAM[2] [12]), 
         .C(\ADD_IN[2]_keep ), .D(n1), .Z(n10178)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9368_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9368_bdd_4_lut_else_4_lut (.A(\RAM[0] [12]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [12]), .D(n1), .Z(n10177)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9368_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i8_4_lut (.A(n15_adj_528), .B(I_SDA_PIPE[6]), .C(n14), .D(I_SDA_PIPE[1]), 
         .Z(I_SDA_DEB_N_360)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(233[18:47])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i8134_2_lut_rep_96_2_lut_3_lut_4_lut (.A(I_REG_ADDR[0]), .B(n2887), 
         .C(I_REG_ADDR[1]), .D(I_REG_ADDR[2]), .Z(CLOCK_keep_enable_63)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i8134_2_lut_rep_96_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n10110), .B(n10157), .C(n10166), .D(sh8out_state[3]), 
         .Z(n1440)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i8070_2_lut_rep_97_2_lut_3_lut_4_lut (.A(I_REG_ADDR[0]), .B(n2887), 
         .C(I_REG_ADDR[1]), .D(I_REG_ADDR[2]), .Z(CLOCK_keep_enable_48)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i8070_2_lut_rep_97_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i2385_4_lut_4_lut (.A(n10111), .B(n10136), .C(I_SDA_DEB), .D(\shift8in.shift [1]), 
         .Z(n2739[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i2385_4_lut_4_lut.init = 16'hfb40;
    FD1S3AX I_CTRL_BYTE_i2 (.D(I_CTRL_BYTE_7__N_176[2]), .CK(clk_out_2_pre_keep), 
            .Q(I_CTRL_BYTE[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_CTRL_BYTE_i2.GSR = "ENABLED";
    FD1S3AX I_CTRL_BYTE_i3 (.D(I_CTRL_BYTE_7__N_176[3]), .CK(clk_out_2_pre_keep), 
            .Q(I_CTRL_BYTE[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_CTRL_BYTE_i3.GSR = "ENABLED";
    FD1S3AX I_CTRL_BYTE_i4 (.D(I_CTRL_BYTE_7__N_176[4]), .CK(clk_out_2_pre_keep), 
            .Q(I_CTRL_BYTE[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_CTRL_BYTE_i4.GSR = "ENABLED";
    FD1S3AX I_CTRL_BYTE_i5 (.D(I_CTRL_BYTE_7__N_176[5]), .CK(clk_out_2_pre_keep), 
            .Q(I_CTRL_BYTE[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_CTRL_BYTE_i5.GSR = "ENABLED";
    FD1S3AX I_CTRL_BYTE_i6 (.D(I_CTRL_BYTE_7__N_176[6]), .CK(clk_out_2_pre_keep), 
            .Q(I_CTRL_BYTE[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_CTRL_BYTE_i6.GSR = "ENABLED";
    FD1S3AX I_CTRL_BYTE_i7 (.D(I_CTRL_BYTE_7__N_176[7]), .CK(clk_out_2_pre_keep), 
            .Q(I_CTRL_BYTE[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_CTRL_BYTE_i7.GSR = "ENABLED";
    FD1S3AX I_SDA_DATA_i1 (.D(I_SDA_DATA_7__N_184[1]), .CK(clk_out_2_pre_keep), 
            .Q(I_SDA_DATA[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_DATA_i1.GSR = "ENABLED";
    FD1S3AX I_SDA_DATA_i2 (.D(I_SDA_DATA_7__N_184[2]), .CK(clk_out_2_pre_keep), 
            .Q(I_SDA_DATA[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_DATA_i2.GSR = "ENABLED";
    FD1S3AX I_SDA_DATA_i3 (.D(I_SDA_DATA_7__N_184[3]), .CK(clk_out_2_pre_keep), 
            .Q(I_SDA_DATA[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_DATA_i3.GSR = "ENABLED";
    FD1S3AX I_SDA_DATA_i4 (.D(I_SDA_DATA_7__N_184[4]), .CK(clk_out_2_pre_keep), 
            .Q(I_SDA_DATA[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_DATA_i4.GSR = "ENABLED";
    FD1S3AX I_SDA_DATA_i5 (.D(I_SDA_DATA_7__N_184[5]), .CK(clk_out_2_pre_keep), 
            .Q(I_SDA_DATA[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_DATA_i5.GSR = "ENABLED";
    FD1S3AX I_SDA_DATA_i6 (.D(I_SDA_DATA_7__N_184[6]), .CK(clk_out_2_pre_keep), 
            .Q(I_SDA_DATA[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_DATA_i6.GSR = "ENABLED";
    FD1S3AX I_SDA_DATA_i7 (.D(I_SDA_DATA_7__N_184[7]), .CK(clk_out_2_pre_keep), 
            .Q(I_SDA_DATA[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_DATA_i7.GSR = "ENABLED";
    FD1S3IX ST_FSM_STATE_i1 (.D(n8730), .CK(clk_out_2_pre_keep), .CD(n10095), 
            .Q(n2694)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam ST_FSM_STATE_i1.GSR = "ENABLED";
    FD1S3AX ST_FSM_STATE_i2 (.D(ST_FSM_STATE_2__N_192[2]), .CK(clk_out_2_pre_keep), 
            .Q(ST_FSM_STATE[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam ST_FSM_STATE_i2.GSR = "ENABLED";
    FD1S3AX sh8out_state_i1 (.D(sh8out_state_3__N_195[1]), .CK(clk_out_2_pre_keep), 
            .Q(sh8out_state[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam sh8out_state_i1.GSR = "ENABLED";
    FD1S3AX sh8out_state_i2 (.D(sh8out_state_3__N_195[2]), .CK(clk_out_2_pre_keep), 
            .Q(sh8out_state[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam sh8out_state_i2.GSR = "ENABLED";
    FD1S3AX sh8out_state_i3 (.D(sh8out_state_3__N_195[3]), .CK(clk_out_2_pre_keep), 
            .Q(sh8out_state[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam sh8out_state_i3.GSR = "ENABLED";
    FD1S3IX sh8in_state_i1 (.D(n969[1]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(sh8in_state[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam sh8in_state_i1.GSR = "ENABLED";
    FD1S3IX sh8in_state_i2 (.D(n9897), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(sh8in_state[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam sh8in_state_i2.GSR = "ENABLED";
    FD1S3IX sh8in_state_i3 (.D(n969[3]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(sh8in_state[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam sh8in_state_i3.GSR = "ENABLED";
    FD1S3AX ackout_state_i1 (.D(ackout_state_1__N_203[1]), .CK(clk_out_2_pre_keep), 
            .Q(ackout_state[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam ackout_state_i1.GSR = "ENABLED";
    FD1S3AX I_SREG_SDA_OUT_i1 (.D(I_SREG_SDA_OUT_7__N_205[1]), .CK(clk_out_2_pre_keep), 
            .Q(I_SREG_SDA_OUT[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SREG_SDA_OUT_i1.GSR = "ENABLED";
    FD1S3AX I_SREG_SDA_OUT_i2 (.D(I_SREG_SDA_OUT_7__N_205[2]), .CK(clk_out_2_pre_keep), 
            .Q(I_SREG_SDA_OUT[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SREG_SDA_OUT_i2.GSR = "ENABLED";
    FD1S3AX I_SREG_SDA_OUT_i3 (.D(I_SREG_SDA_OUT_7__N_205[3]), .CK(clk_out_2_pre_keep), 
            .Q(I_SREG_SDA_OUT[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SREG_SDA_OUT_i3.GSR = "ENABLED";
    FD1S3AX I_SREG_SDA_OUT_i4 (.D(I_SREG_SDA_OUT_7__N_205[4]), .CK(clk_out_2_pre_keep), 
            .Q(I_SREG_SDA_OUT[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SREG_SDA_OUT_i4.GSR = "ENABLED";
    FD1S3AX I_SREG_SDA_OUT_i5 (.D(I_SREG_SDA_OUT_7__N_205[5]), .CK(clk_out_2_pre_keep), 
            .Q(I_SREG_SDA_OUT[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SREG_SDA_OUT_i5.GSR = "ENABLED";
    FD1S3AX I_SREG_SDA_OUT_i6 (.D(I_SREG_SDA_OUT_7__N_205[6]), .CK(clk_out_2_pre_keep), 
            .Q(I_SREG_SDA_OUT[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SREG_SDA_OUT_i6.GSR = "ENABLED";
    FD1S3AX I_SREG_SDA_OUT_i7 (.D(I_SREG_SDA_OUT_7__N_205[7]), .CK(clk_out_2_pre_keep), 
            .Q(I_SREG_SDA_OUT[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SREG_SDA_OUT_i7.GSR = "ENABLED";
    FD1S3AX \shift8in.shift_i1  (.D(\shift8in.shift_7__N_213 [1]), .CK(clk_out_2_pre_keep), 
            .Q(\shift8in.shift [1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam \shift8in.shift_i1 .GSR = "ENABLED";
    FD1S3AX \shift8in.shift_i2  (.D(\shift8in.shift_7__N_213 [2]), .CK(clk_out_2_pre_keep), 
            .Q(\shift8in.shift [2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam \shift8in.shift_i2 .GSR = "ENABLED";
    FD1S3AX \shift8in.shift_i3  (.D(\shift8in.shift_7__N_213 [3]), .CK(clk_out_2_pre_keep), 
            .Q(\shift8in.shift [3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam \shift8in.shift_i3 .GSR = "ENABLED";
    FD1S3AX \shift8in.shift_i4  (.D(\shift8in.shift_7__N_213 [4]), .CK(clk_out_2_pre_keep), 
            .Q(\shift8in.shift [4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam \shift8in.shift_i4 .GSR = "ENABLED";
    FD1S3AX \shift8in.shift_i5  (.D(\shift8in.shift_7__N_213 [5]), .CK(clk_out_2_pre_keep), 
            .Q(\shift8in.shift [5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam \shift8in.shift_i5 .GSR = "ENABLED";
    FD1S3AX \shift8in.shift_i6  (.D(\shift8in.shift_7__N_213 [6]), .CK(clk_out_2_pre_keep), 
            .Q(\shift8in.shift [6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam \shift8in.shift_i6 .GSR = "ENABLED";
    FD1S3AX \shift8in.shift_i7  (.D(\shift8in.shift_7__N_213 [7]), .CK(clk_out_2_pre_keep), 
            .Q(\shift8in.shift [7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam \shift8in.shift_i7 .GSR = "ENABLED";
    FD1S3IX ROReg0_i1 (.D(ROReg0[1]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg0[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg0_i1.GSR = "ENABLED";
    LUT4 n9338_bdd_4_lut_then_4_lut (.A(\RAM[3] [15]), .B(\RAM[2] [15]), 
         .C(\ADD_IN[2]_keep ), .D(n1), .Z(n10181)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9338_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9338_bdd_4_lut_else_4_lut (.A(\RAM[0] [15]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [15]), .D(n1), .Z(n10180)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9338_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i7810_3_lut (.A(\RAM[2] [7]), .B(\RAM[3] [7]), .C(I_REG_ADDR[1]), 
         .Z(n9336)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7810_3_lut.init = 16'hcaca;
    LUT4 i7809_3_lut (.A(\RAM[2] [15]), .B(\RAM[3] [15]), .C(I_REG_ADDR[1]), 
         .Z(n9335)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7809_3_lut.init = 16'hcaca;
    LUT4 n9440_bdd_4_lut_then_4_lut (.A(\RAM[3] [8]), .B(\RAM[2] [8]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10184)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9440_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 i2757_4_lut_4_lut (.A(n10111), .B(n10121), .C(I_SDA_DEB), .D(\shift8in.shift [2]), 
         .Z(n2739[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i2757_4_lut_4_lut.init = 16'hfb40;
    LUT4 i4_4_lut (.A(I_REG_ADDR[5]), .B(I_REG_ADDR[6]), .C(I_REG_ADDR[7]), 
         .D(n6_adj_529), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_36 (.A(n10117), .B(n10109), .C(n6_adj_530), 
         .D(I_WR_OP), .Z(n12)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(351[17:46])
    defparam i1_4_lut_4_lut_adj_36.init = 16'hfd00;
    LUT4 i7908_3_lut (.A(ROReg0[6]), .B(ROReg1[6]), .C(I_REG_ADDR[0]), 
         .Z(n9434)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7908_3_lut.init = 16'hcaca;
    LUT4 i8077_2_lut_2_lut_3_lut_4_lut (.A(I_REG_ADDR[0]), .B(n2887), .C(I_REG_ADDR[1]), 
         .D(I_REG_ADDR[2]), .Z(CLOCK_keep_enable_32)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i8077_2_lut_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 n199_bdd_2_lut_8342 (.A(I_START_EDGE), .B(sh8in_state[2]), .Z(n9894)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n199_bdd_2_lut_8342.init = 16'h4444;
    LUT4 i8131_2_lut_2_lut_3_lut_4_lut (.A(I_REG_ADDR[0]), .B(n2887), .C(I_REG_ADDR[1]), 
         .D(I_REG_ADDR[2]), .Z(CLOCK_keep_enable_16)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i8131_2_lut_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 n9440_bdd_4_lut_else_4_lut (.A(\RAM[0] [8]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [8]), .D(n1), .Z(n10183)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9440_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_rep_147 (.A(I_REG_ADDR[0]), .B(n2887), .Z(n10141)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i1_2_lut_rep_147.init = 16'h8888;
    LUT4 n5542_bdd_4_lut_then_4_lut (.A(n2694), .B(ST_FSM_STATE[0]), .C(FF), 
         .D(ST_FSM_STATE[2]), .Z(n10187)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;
    defparam n5542_bdd_4_lut_then_4_lut.init = 16'hfff9;
    LUT4 n5542_bdd_4_lut_else_4_lut (.A(n2694), .B(ST_FSM_STATE[0]), .C(FF), 
         .D(ST_FSM_STATE[2]), .Z(n10186)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B !(D))) */ ;
    defparam n5542_bdd_4_lut_else_4_lut.init = 16'heef9;
    LUT4 i1_2_lut_3_lut_4_lut_adj_37 (.A(I_REG_ADDR[0]), .B(n2887), .C(I_REG_ADDR[2]), 
         .D(I_REG_ADDR[1]), .Z(CLOCK_keep_enable_24)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i1_2_lut_3_lut_4_lut_adj_37.init = 16'h0080;
    LUT4 i8151_2_lut_3_lut_4_lut (.A(n10161), .B(n10112), .C(n1395), .D(n1399), 
         .Z(n9315)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;
    defparam i8151_2_lut_3_lut_4_lut.init = 16'hff8f;
    LUT4 n9895_bdd_3_lut (.A(n9895), .B(n9892), .C(n2694), .Z(n9896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9895_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_113_3_lut_4_lut (.A(I_REG_ADDR[0]), .B(n2887), .C(I_REG_ADDR[2]), 
         .D(I_REG_ADDR[1]), .Z(CLOCK_keep_enable_55)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i1_2_lut_rep_113_3_lut_4_lut.init = 16'h0008;
    LUT4 n9407_bdd_4_lut_then_4_lut (.A(\RAM[3] [1]), .B(\RAM[2] [1]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10190)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9407_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9407_bdd_4_lut_else_4_lut (.A(\RAM[0] [1]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [1]), .D(n1), .Z(n10189)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9407_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 mux_878_i1_3_lut_4_lut (.A(n10161), .B(n10112), .C(n10155), .D(n1215[0]), 
         .Z(n1233[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_878_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_3_lut_4_lut_adj_38 (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .C(ST_FSM_STATE[0]), .D(n2694), .Z(n4961)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(431[16:35])
    defparam i1_2_lut_3_lut_4_lut_adj_38.init = 16'h000b;
    LUT4 i1_2_lut_rep_114_3_lut_4_lut (.A(I_REG_ADDR[0]), .B(n2887), .C(I_REG_ADDR[2]), 
         .D(I_REG_ADDR[1]), .Z(CLOCK_keep_enable_40)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i1_2_lut_rep_114_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_39 (.A(I_REG_ADDR[0]), .B(n2887), .C(I_REG_ADDR[2]), 
         .D(I_REG_ADDR[1]), .Z(CLOCK_keep_enable_8)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i1_2_lut_3_lut_4_lut_adj_39.init = 16'h8000;
    LUT4 i5373_2_lut_3_lut_4_lut (.A(n10114), .B(n10128), .C(I_SDA_DEB), 
         .D(n10118), .Z(n2711[0])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i5373_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i8038_3_lut_4_lut (.A(FF), .B(n10144), .C(ST_FSM_STATE[0]), .D(n8554), 
         .Z(n9393)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i8038_3_lut_4_lut.init = 16'hf101;
    LUT4 n9404_bdd_4_lut_then_4_lut (.A(\RAM[3] [9]), .B(\RAM[2] [9]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10193)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9404_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9404_bdd_4_lut_else_4_lut (.A(\RAM[0] [9]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [9]), .D(n1), .Z(n10192)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9404_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 n199_bdd_4_lut_8340 (.A(n199), .B(n239[2]), .C(sh8in_state[2]), 
         .D(FF), .Z(n9893)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A !((D)+!B)) */ ;
    defparam n199_bdd_4_lut_8340.init = 16'ha0cc;
    LUT4 i2_2_lut_3_lut_4_lut_adj_40 (.A(n10155), .B(I_RD_OP), .C(I_CTRL_BYTE[6]), 
         .D(FF), .Z(n6_adj_525)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(390[9] 392[12])
    defparam i2_2_lut_3_lut_4_lut_adj_40.init = 16'h8000;
    LUT4 n9359_bdd_4_lut_then_4_lut (.A(\RAM[3] [5]), .B(\RAM[2] [5]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10196)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9359_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9359_bdd_4_lut_else_4_lut (.A(\RAM[0] [5]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [5]), .D(n1), .Z(n10195)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9359_bdd_4_lut_else_4_lut.init = 16'h3022;
    FD1S3IX ROReg0_i2 (.D(ROReg0[2]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg0[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg0_i2.GSR = "ENABLED";
    FD1S3IX ROReg0_i3 (.D(ROReg0[3]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg0[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg0_i3.GSR = "ENABLED";
    FD1S3JX ROReg0_i4 (.D(ROReg0[4]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(ROReg0[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg0_i4.GSR = "ENABLED";
    FD1S3IX ROReg0_i5 (.D(ROReg0[5]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg0[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg0_i5.GSR = "ENABLED";
    FD1S3IX ROReg0_i6 (.D(ROReg0[6]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg0[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg0_i6.GSR = "ENABLED";
    FD1S3IX ROReg0_i7 (.D(ROReg0[7]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg0[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg0_i7.GSR = "ENABLED";
    FD1S3IX ROReg1_i1 (.D(ROReg1[1]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg1[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg1_i1.GSR = "ENABLED";
    FD1S3IX ROReg1_i2 (.D(ROReg1[2]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg1[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg1_i2.GSR = "ENABLED";
    FD1S3IX ROReg1_i3 (.D(ROReg1[3]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg1[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg1_i3.GSR = "ENABLED";
    FD1S3IX ROReg1_i4 (.D(ROReg1[4]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg1[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg1_i4.GSR = "ENABLED";
    FD1S3JX ROReg1_i5 (.D(ROReg1[5]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(ROReg1[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg1_i5.GSR = "ENABLED";
    FD1S3IX ROReg1_i6 (.D(ROReg1[6]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg1[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg1_i6.GSR = "ENABLED";
    FD1S3IX ROReg1_i7 (.D(ROReg1[7]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg1[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg1_i7.GSR = "ENABLED";
    FD1S3IX ROReg2_i1 (.D(ROReg2[1]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg2[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg2_i1.GSR = "ENABLED";
    FD1S3IX ROReg2_i2 (.D(ROReg2[2]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg2[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg2_i2.GSR = "ENABLED";
    FD1S3IX ROReg2_i3 (.D(ROReg2[3]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg2[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg2_i3.GSR = "ENABLED";
    FD1S3JX ROReg2_i4 (.D(ROReg2[4]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(ROReg2[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg2_i4.GSR = "ENABLED";
    FD1S3JX ROReg2_i5 (.D(ROReg2[5]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(ROReg2[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg2_i5.GSR = "ENABLED";
    FD1S3IX ROReg2_i6 (.D(ROReg2[6]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg2[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg2_i6.GSR = "ENABLED";
    FD1S3IX ROReg2_i7 (.D(ROReg2[7]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg2[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg2_i7.GSR = "ENABLED";
    FD1S3IX ROReg3_i1 (.D(ROReg3[1]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg3[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg3_i1.GSR = "ENABLED";
    FD1S3IX ROReg3_i2 (.D(ROReg3[2]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg3[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg3_i2.GSR = "ENABLED";
    FD1S3IX ROReg3_i3 (.D(ROReg3[3]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg3[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg3_i3.GSR = "ENABLED";
    FD1S3IX ROReg3_i4 (.D(ROReg3[4]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg3[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg3_i4.GSR = "ENABLED";
    FD1S3IX ROReg3_i5 (.D(ROReg3[5]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg3[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg3_i5.GSR = "ENABLED";
    FD1S3JX ROReg3_i6 (.D(ROReg3[6]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(ROReg3[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg3_i6.GSR = "ENABLED";
    FD1S3IX ROReg3_i7 (.D(ROReg3[7]), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(ROReg3[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam ROReg3_i7.GSR = "ENABLED";
    FD1S3AX I_RD_VAL_i1 (.D(I_RD_VAL_7__N_317[1]), .CK(clk_out_2_pre_keep), 
            .Q(I_RD_VAL[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam I_RD_VAL_i1.GSR = "ENABLED";
    FD1S3AX I_RD_VAL_i2 (.D(I_RD_VAL_7__N_317[2]), .CK(clk_out_2_pre_keep), 
            .Q(I_RD_VAL[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam I_RD_VAL_i2.GSR = "ENABLED";
    FD1S3AX I_RD_VAL_i3 (.D(I_RD_VAL_7__N_317[3]), .CK(clk_out_2_pre_keep), 
            .Q(I_RD_VAL[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam I_RD_VAL_i3.GSR = "ENABLED";
    FD1S3AX I_RD_VAL_i4 (.D(I_RD_VAL_7__N_317[4]), .CK(clk_out_2_pre_keep), 
            .Q(I_RD_VAL[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam I_RD_VAL_i4.GSR = "ENABLED";
    FD1S3AX I_RD_VAL_i5 (.D(I_RD_VAL_7__N_317[5]), .CK(clk_out_2_pre_keep), 
            .Q(I_RD_VAL[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam I_RD_VAL_i5.GSR = "ENABLED";
    FD1S3AX I_RD_VAL_i6 (.D(I_RD_VAL_7__N_317[6]), .CK(clk_out_2_pre_keep), 
            .Q(I_RD_VAL[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam I_RD_VAL_i6.GSR = "ENABLED";
    FD1S3AX I_RD_VAL_i7 (.D(I_RD_VAL_7__N_317[7]), .CK(clk_out_2_pre_keep), 
            .Q(I_RD_VAL[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1032[8] 1103[4])
    defparam I_RD_VAL_i7.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i2 (.D(n10191), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_1)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i2.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i3 (.D(n10200), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_2)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i3.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i4 (.D(n10212), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_3)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i4.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i5 (.D(n10176), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_4)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i5.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i6 (.D(n10197), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_5)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i6.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i7 (.D(n10206), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_6)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i7.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i8 (.D(n10221), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_7)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i8.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i9 (.D(n10185), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_8)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i9.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i10 (.D(n10194), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_9)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i10.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i11 (.D(n10209), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_10)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i11.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i12 (.D(n10215), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_11)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i12.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i13 (.D(n10179), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_12)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i13.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i14 (.D(n10203), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_13)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i14.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i15 (.D(n10218), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_14)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i15.GSR = "ENABLED";
    FD1P3IX DAT_OUT_i16 (.D(n10182), .SP(RD_EN_keep), .CD(reset_n_N_1), 
            .CK(clk_out_2_pre_keep), .Q(pdata_c_15)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1105[8] 1125[4])
    defparam DAT_OUT_i16.GSR = "ENABLED";
    FD1S3JX I_SDA_PIPE_i1 (.D(I_SDA_PIPE[0]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[1])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i1.GSR = "ENABLED";
    LUT4 n9398_bdd_4_lut_then_4_lut (.A(\RAM[3] [2]), .B(\RAM[2] [2]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10199)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9398_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9398_bdd_4_lut_else_4_lut (.A(\RAM[0] [2]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [2]), .D(n1), .Z(n10198)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9398_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i2510_4_lut_4_lut (.A(n10113), .B(n10136), .C(I_SDA_DEB), .D(\shift8in.shift [1]), 
         .Z(n2698[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i2510_4_lut_4_lut.init = 16'hfb40;
    LUT4 i7927_3_lut (.A(\RAM[1] [12]), .B(\RAM[1] [4]), .C(I_REG_ADDR[0]), 
         .Z(n9453)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7927_3_lut.init = 16'hcaca;
    LUT4 i2814_4_lut_4_lut (.A(n10113), .B(n10121), .C(I_SDA_DEB), .D(\shift8in.shift [2]), 
         .Z(n2698[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i2814_4_lut_4_lut.init = 16'hfb40;
    LUT4 n9356_bdd_4_lut_then_4_lut (.A(\RAM[3] [13]), .B(\RAM[2] [13]), 
         .C(\ADD_IN[2]_keep ), .D(n1), .Z(n10202)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9356_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9356_bdd_4_lut_else_4_lut (.A(\RAM[0] [13]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [13]), .D(n1), .Z(n10201)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9356_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 n9350_bdd_4_lut_then_4_lut (.A(\RAM[3] [6]), .B(\RAM[2] [6]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10205)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9350_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9350_bdd_4_lut_else_4_lut (.A(\RAM[0] [6]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [6]), .D(n1), .Z(n10204)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9350_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 n9395_bdd_4_lut_then_4_lut (.A(\RAM[3] [10]), .B(\RAM[2] [10]), 
         .C(\ADD_IN[2]_keep ), .D(n1), .Z(n10208)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9395_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9395_bdd_4_lut_else_4_lut (.A(\RAM[0] [10]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [10]), .D(n1), .Z(n10207)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9395_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 n9386_bdd_4_lut_then_4_lut (.A(\RAM[3] [3]), .B(\RAM[2] [3]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10211)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9386_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9386_bdd_4_lut_else_4_lut (.A(\RAM[0] [3]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [3]), .D(n1), .Z(n10210)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9386_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(n10155), .B(n10109), .C(n10117), 
         .D(I_RD_OP), .Z(n23_adj_531)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(390[9] 392[12])
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'hf0d0;
    LUT4 n9383_bdd_4_lut_then_4_lut (.A(\RAM[3] [11]), .B(\RAM[2] [11]), 
         .C(\ADD_IN[2]_keep ), .D(n1), .Z(n10214)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9383_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9383_bdd_4_lut_else_4_lut (.A(\RAM[0] [11]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [11]), .D(n1), .Z(n10213)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9383_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 n9347_bdd_4_lut_then_4_lut (.A(\RAM[3] [14]), .B(\RAM[2] [14]), 
         .C(\ADD_IN[2]_keep ), .D(n1), .Z(n10217)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9347_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    FD1S3JX I_SDA_PIPE_i2 (.D(I_SDA_PIPE[1]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[2])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i2.GSR = "ENABLED";
    FD1S3JX I_SDA_PIPE_i3 (.D(I_SDA_PIPE[2]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[3])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i3.GSR = "ENABLED";
    FD1S3JX I_SDA_PIPE_i4 (.D(I_SDA_PIPE[3]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[4])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i4.GSR = "ENABLED";
    FD1S3JX I_SDA_PIPE_i5 (.D(I_SDA_PIPE[4]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[5])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i5.GSR = "ENABLED";
    FD1S3JX I_SDA_PIPE_i6 (.D(I_SDA_PIPE[5]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[6])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i6.GSR = "ENABLED";
    FD1S3JX I_SDA_PIPE_i7 (.D(I_SDA_PIPE[6]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[7])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i7.GSR = "ENABLED";
    FD1S3JX I_SDA_PIPE_i8 (.D(I_SDA_PIPE[7]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[8])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i8.GSR = "ENABLED";
    FD1S3JX I_SDA_PIPE_i9 (.D(I_SDA_PIPE[8]), .CK(clk_out_2_pre_keep), .PD(reset_n_N_1), 
            .Q(I_SDA_PIPE[9])) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(200[8] 239[4])
    defparam I_SDA_PIPE_i9.GSR = "ENABLED";
    LUT4 i3614_3_lut_4_lut_4_lut (.A(n23), .B(n10098), .C(n10089), .D(n14_adj_532), 
         .Z(n5130)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (D))) */ ;
    defparam i3614_3_lut_4_lut_4_lut.init = 16'hcc08;
    LUT4 i2_2_lut_3_lut_4_lut_adj_42 (.A(n10155), .B(n10109), .C(n10117), 
         .D(I_RD_OP), .Z(n8545)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(390[9] 392[12])
    defparam i2_2_lut_3_lut_4_lut_adj_42.init = 16'h0020;
    LUT4 i2834_4_lut (.A(I_SDA_OUT_OE), .B(I_SDA_OUT_OE_N_396), .C(n10125), 
         .D(n4961), .Z(n6_adj_533)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i2834_4_lut.init = 16'hcaaa;
    LUT4 i2520_4_lut (.A(I_SDA_OUT_OE), .B(I_SDA_OUT_OE_N_396), .C(ST_FSM_STATE[0]), 
         .D(n10125), .Z(n1_adj_534)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i2520_4_lut.init = 16'hcaaa;
    LUT4 n9347_bdd_4_lut_else_4_lut (.A(\RAM[0] [14]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [14]), .D(n1), .Z(n10216)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9347_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i1751_4_lut (.A(\shift8in.shift [0]), .B(I_SDA_DEB), .C(I_SCL_RISE), 
         .D(n10093), .Z(n2730[0])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i1751_4_lut.init = 16'hcaaa;
    LUT4 n136_bdd_2_lut_8299 (.A(I_START_EDGE), .B(sh8in_state[1]), .Z(n9922)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n136_bdd_2_lut_8299.init = 16'h4444;
    LUT4 n9341_bdd_4_lut_then_4_lut (.A(\RAM[3] [7]), .B(\RAM[2] [7]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10220)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9341_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n9341_bdd_4_lut_else_4_lut (.A(\RAM[0] [7]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [7]), .D(n1), .Z(n10219)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9341_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i7769_2_lut_2_lut_4_lut_4_lut (.A(reset_n_N_1), .B(n1440), .C(n10158), 
         .D(n3263), .Z(n9294)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i7769_2_lut_2_lut_4_lut_4_lut.init = 16'hfeee;
    LUT4 n136_bdd_4_lut_8298 (.A(n239[1]), .B(n199), .C(sh8in_state[1]), 
         .D(FF), .Z(n9921)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam n136_bdd_4_lut_8298.init = 16'hc0aa;
    LUT4 i1687_4_lut (.A(I_SDA_DATA[0]), .B(\shift8in.shift [0]), .C(n3436), 
         .D(n10130), .Z(n1049[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1687_4_lut.init = 16'hcac0;
    LUT4 i6_4_lut (.A(I_SDA_PIPE[7]), .B(I_SDA_PIPE[9]), .C(I_SDA_PIPE[2]), 
         .D(I_SDA_PIPE[8]), .Z(n15_adj_528)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(233[18:47])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 n9380_bdd_4_lut_then_4_lut (.A(\RAM[3] [0]), .B(\RAM[2] [0]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10223)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9380_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 i167_2_lut (.A(I_RD_OP), .B(reset_n_N_1), .Z(n229)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1047[5] 1102[8])
    defparam i167_2_lut.init = 16'h2222;
    LUT4 n9380_bdd_4_lut_else_4_lut (.A(\RAM[0] [0]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [0]), .D(n1), .Z(n10222)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9380_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i1938_4_lut (.A(I_SDA_DATA[2]), .B(\shift8in.shift [2]), .C(n3436), 
         .D(n10130), .Z(n1049[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1938_4_lut.init = 16'hcac0;
    LUT4 i1936_4_lut (.A(I_SDA_DATA[1]), .B(\shift8in.shift [1]), .C(n3436), 
         .D(n10130), .Z(n1049[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1936_4_lut.init = 16'hcac0;
    LUT4 i5_3_lut (.A(I_SDA_PIPE[5]), .B(I_SDA_PIPE[3]), .C(I_SDA_PIPE[4]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(233[18:47])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n14_adj_535), .B(n10096), .C(n10088), 
         .D(n10118), .Z(n4_adj_536)) /* synthesis lut_function=(A (B+(C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'hb8f8;
    LUT4 i8118_2_lut_4_lut (.A(sh8out_state[1]), .B(n10086), .C(sh8out_state[2]), 
         .D(n1470), .Z(n9325)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (B (C+(D))+!B (D))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i8118_2_lut_4_lut.init = 16'hff48;
    LUT4 i1935_2_lut_3_lut_4_lut (.A(n14_adj_535), .B(n10096), .C(n10098), 
         .D(n23), .Z(n3436)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam i1935_2_lut_3_lut_4_lut.init = 16'hf888;
    LUT4 i1761_4_lut (.A(\shift8in.shift [0]), .B(I_SDA_DEB), .C(I_SCL_RISE), 
         .D(n10111), .Z(n2739[0])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i1761_4_lut.init = 16'hcaaa;
    LUT4 i1780_4_lut (.A(I_CTRL_BYTE[0]), .B(\shift8in.shift [0]), .C(n3957), 
         .D(n10100), .Z(n630[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1780_4_lut.init = 16'hcac0;
    LUT4 i8_4_lut_adj_43 (.A(n15_adj_537), .B(I_SDA_PIPE[6]), .C(n14_adj_538), 
         .D(I_SDA_PIPE[1]), .Z(I_SDA_DEB_N_361)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(228[13:42])
    defparam i8_4_lut_adj_43.init = 16'h8000;
    LUT4 n136_bdd_2_lut_8303 (.A(I_START_EDGE), .B(sh8in_state[0]), .Z(n9935)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n136_bdd_2_lut_8303.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(FF), .B(n10172), .C(sh8in_state[3]), 
         .D(n10171), .Z(n9181)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i2_4_lut (.A(n9288), .B(I_WR_OP), .C(n9286), .D(I_RD_OP), .Z(n2887)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0004;
    LUT4 i7763_2_lut (.A(I_REG_ADDR[6]), .B(I_REG_ADDR[3]), .Z(n9288)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7763_2_lut.init = 16'heeee;
    FD1S3IX I_SDA_ACK_OUT_464 (.D(n4434), .CK(clk_out_2_pre_keep), .CD(n5200), 
            .Q(I_SDA_ACK_OUT));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam I_SDA_ACK_OUT_464.GSR = "ENABLED";
    LUT4 i7768_2_lut_3_lut_4_lut (.A(FF), .B(n10172), .C(n10171), .D(sh8in_state[3]), 
         .Z(n8707)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i7768_2_lut_3_lut_4_lut.init = 16'h0004;
    FD1P3JX STOP_S_480 (.D(n10145), .SP(CLOCK_keep_enable_66), .PD(n6795), 
            .CK(clk_out_2_pre_keep), .Q(STOP_S_c)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam STOP_S_480.GSR = "ENABLED";
    FD1P3JX WRITE_S_479 (.D(n10145), .SP(CLOCK_keep_enable_66), .PD(n5197), 
            .CK(clk_out_2_pre_keep), .Q(WRITE_S_c)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam WRITE_S_479.GSR = "ENABLED";
    LUT4 i3675_2_lut_4_lut (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), .C(n2694), 
         .D(ST_FSM_STATE[0]), .Z(n5193)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i3675_2_lut_4_lut.init = 16'hdf00;
    LUT4 i7761_3_lut (.A(I_REG_ADDR[5]), .B(I_REG_ADDR[4]), .C(I_REG_ADDR[7]), 
         .Z(n9286)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7761_3_lut.init = 16'hfefe;
    LUT4 i1572_2_lut (.A(i2c_sda_out), .B(I_SDA_OUT_OE), .Z(I_SDA_IN)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(186[9:17])
    defparam i1572_2_lut.init = 16'h2222;
    LUT4 n136_bdd_4_lut_8302 (.A(n239[0]), .B(n199), .C(sh8in_state[0]), 
         .D(FF), .Z(n9934)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam n136_bdd_4_lut_8302.init = 16'hc0aa;
    LUT4 i3676_2_lut_4_lut (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), .C(n2694), 
         .D(ST_FSM_STATE[0]), .Z(n5194)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (D))) */ ;
    defparam i3676_2_lut_4_lut.init = 16'h00df;
    LUT4 i6_4_lut_adj_44 (.A(I_SDA_PIPE[7]), .B(I_SDA_PIPE[9]), .C(I_SDA_PIPE[2]), 
         .D(I_SDA_PIPE[8]), .Z(n15_adj_537)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(228[13:42])
    defparam i6_4_lut_adj_44.init = 16'h8000;
    LUT4 i1705_4_lut (.A(n10153), .B(I_SDA_OUT_OE), .C(n9148), .D(FF), 
         .Z(I_SDA_OUT_OE_N_383)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(480[9] 483[12])
    defparam i1705_4_lut.init = 16'hccca;
    LUT4 I_SCL_FALL_I_0_577_2_lut (.A(I_SCL_DEB), .B(I_SCL_DEB_1), .Z(I_SCL_FALL)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(188[33:57])
    defparam I_SCL_FALL_I_0_577_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_4_lut (.A(sh8in_state[1]), .B(n10160), .C(n10122), .D(sh8in_state[0]), 
         .Z(n6_adj_539)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i2_3_lut_4_lut.init = 16'h0040;
    LUT4 I_SCL_DEB_keep_I_0_519_2_lut (.A(I_SCL_DEB), .B(I_SCL_DEB_1), .Z(I_SCL_RISE)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(189[33:57])
    defparam I_SCL_DEB_keep_I_0_519_2_lut.init = 16'h2222;
    LUT4 i2061_4_lut (.A(I_RD_OP), .B(n10155), .C(n4840), .D(n9269), 
         .Z(n3_adj_540)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(((D)+!C)+!B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2061_4_lut.init = 16'haa6a;
    LUT4 I_SCL_DEB_keep_I_0_520_2_lut (.A(I_SCL_DEB), .B(I_SCL_DEB_1), .Z(I_SCL_HIGH)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(190[33:56])
    defparam I_SCL_DEB_keep_I_0_520_2_lut.init = 16'h8888;
    PFUMX i8207 (.BLUT(n9765), .ALUT(n2725[3]), .C0(n10101), .Z(n9766));
    LUT4 i1_2_lut_3_lut_4_lut_adj_45 (.A(n10171), .B(FF), .C(sh8in_state[0]), 
         .D(I_SCL_RISE), .Z(n6_adj_523)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_45.init = 16'h0100;
    LUT4 n136_bdd_4_lut (.A(n239[3]), .B(n199), .C(sh8in_state[3]), .D(FF), 
         .Z(n9937)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam n136_bdd_4_lut.init = 16'hc0aa;
    LUT4 i2457_4_lut (.A(n10100), .B(\shift8in.shift [1]), .C(n3957), 
         .D(I_CTRL_BYTE[1]), .Z(n630[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2457_4_lut.init = 16'hcac0;
    LUT4 n136_bdd_2_lut (.A(I_START_EDGE), .B(sh8in_state[3]), .Z(n9938)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n136_bdd_2_lut.init = 16'h4444;
    LUT4 i2459_4_lut (.A(n10100), .B(\shift8in.shift [2]), .C(n3957), 
         .D(I_CTRL_BYTE[2]), .Z(n630[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2459_4_lut.init = 16'hcac0;
    LUT4 n9154_bdd_3_lut (.A(I_SCL_FALL), .B(ackout_state[1]), .C(ackout_state[0]), 
         .Z(n9951)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;
    defparam n9154_bdd_3_lut.init = 16'h1212;
    LUT4 n198_bdd_2_lut_4_lut (.A(n10172), .B(I_WR_OP), .C(FF), .D(n10171), 
         .Z(n9989)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (D)+!B (C+(D))))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(280[13:15])
    defparam n198_bdd_2_lut_4_lut.init = 16'h00c5;
    LUT4 I_SDA_FALL_I_0_579_2_lut (.A(I_SDA_DEB), .B(I_SDA_DEB_1), .Z(I_SDA_FALL)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(192[33:57])
    defparam I_SDA_FALL_I_0_579_2_lut.init = 16'h4444;
    LUT4 i2456_2_lut_3_lut_4_lut (.A(n14_adj_535), .B(n10115), .C(n10116), 
         .D(n23), .Z(n3957)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam i2456_2_lut_3_lut_4_lut.init = 16'hf888;
    LUT4 i1_3_lut_4_lut_4_lut_adj_46 (.A(n14_adj_535), .B(n10115), .C(n10099), 
         .D(n10118), .Z(n4_adj_541)) /* synthesis lut_function=(A (B+(C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_46.init = 16'hb8f8;
    LUT4 i5408_2_lut_4_lut (.A(n10172), .B(I_WR_OP), .C(FF), .D(n10171), 
         .Z(n4857)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B+((D)+!C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(280[13:15])
    defparam i5408_2_lut_4_lut.init = 16'h003a;
    LUT4 n6820_bdd_2_lut (.A(n6820), .B(I_SREG_SDA_OUT[0]), .Z(n9949)) /* synthesis lut_function=(A (B)) */ ;
    defparam n6820_bdd_2_lut.init = 16'h8888;
    LUT4 i8100_2_lut_2_lut (.A(reset_n_N_1), .B(n9159), .Z(n4434)) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam i8100_2_lut_2_lut.init = 16'h1111;
    LUT4 i5_3_lut_adj_47 (.A(I_SDA_PIPE[5]), .B(I_SDA_PIPE[3]), .C(I_SDA_PIPE[4]), 
         .Z(n14_adj_538)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(228[13:42])
    defparam i5_3_lut_adj_47.init = 16'h8080;
    LUT4 I_SDA_DEB_keep_I_0_527_2_lut (.A(I_SDA_DEB), .B(I_SDA_DEB_1), .Z(I_SDA_RISE)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(193[33:57])
    defparam I_SDA_DEB_keep_I_0_527_2_lut.init = 16'h2222;
    LUT4 I_SDA_DEB_keep_I_0_528_2_lut (.A(I_SDA_DEB), .B(I_SDA_DEB_1), .Z(I_SDA_HIGH)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(194[33:56])
    defparam I_SDA_DEB_keep_I_0_528_2_lut.init = 16'h8888;
    LUT4 n6820_bdd_2_lut_8310 (.A(RFF), .B(I_RD_VAL[0]), .Z(n9948)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n6820_bdd_2_lut_8310.init = 16'h4444;
    LUT4 n9154_bdd_2_lut (.A(n9154), .B(ackout_state[0]), .Z(n9952)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n9154_bdd_2_lut.init = 16'h4444;
    LUT4 equal_1151_i16_2_lut_rep_158 (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), 
         .Z(n10152)) /* synthesis lut_function=(A+(B)) */ ;
    defparam equal_1151_i16_2_lut_rep_158.init = 16'heeee;
    LUT4 i7933_3_lut (.A(\RAM[1] [14]), .B(\RAM[1] [6]), .C(I_REG_ADDR[0]), 
         .Z(n9459)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7933_3_lut.init = 16'hcaca;
    LUT4 i5320_2_lut_rep_144_3_lut (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), 
         .C(FF), .Z(n10138)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5320_2_lut_rep_144_3_lut.init = 16'hfefe;
    LUT4 I_START_FF_keep_I_0_542_2_lut (.A(I_START_FF), .B(I_START_FF_1), 
         .Z(I_START_EDGE)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(275[23:49])
    defparam I_START_FF_keep_I_0_542_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_122_3_lut_4_lut (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), 
         .C(n10161), .D(FF), .Z(n10116)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_122_3_lut_4_lut.init = 16'h0010;
    LUT4 i8125_3_lut_rep_90_3_lut_4_lut_4_lut (.A(n14_adj_532), .B(n10116), 
         .C(n10101), .D(n23), .Z(n10084)) /* synthesis lut_function=(!(A (B)+!A !((C+!(D))+!B))) */ ;
    defparam i8125_3_lut_rep_90_3_lut_4_lut_4_lut.init = 16'h7377;
    LUT4 n9764_bdd_2_lut_3_lut (.A(n9763), .B(reset_n_N_1), .C(n10133), 
         .Z(n9765)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n9764_bdd_2_lut_3_lut.init = 16'h0202;
    LUT4 i2495_4_lut (.A(n239[2]), .B(sh8in_state[2]), .C(n4592), .D(n10172), 
         .Z(n6_adj_542)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2495_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_126_3_lut_4_lut (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), 
         .C(n10165), .D(FF), .Z(n10120)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_126_3_lut_4_lut.init = 16'h0010;
    LUT4 I_STOP_EDGE_I_0_581_2_lut (.A(I_START_FF), .B(I_START_FF_1), .Z(I_STOP_EDGE)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(276[22:48])
    defparam I_STOP_EDGE_I_0_581_2_lut.init = 16'h4444;
    LUT4 i7932_3_lut (.A(\RAM[0] [14]), .B(\RAM[0] [6]), .C(I_REG_ADDR[0]), 
         .Z(n9458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7932_3_lut.init = 16'hcaca;
    LUT4 i8140_2_lut_rep_87_2_lut_4_lut (.A(n9199), .B(n10110), .C(n6982), 
         .D(n10126), .Z(n10081)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (D))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i8140_2_lut_rep_87_2_lut_4_lut.init = 16'h00f7;
    LUT4 i5248_2_lut (.A(I_SDA_ACK_OUT), .B(I_ACK_OE), .Z(I_SDA_SOURCE_1)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(181[31:68])
    defparam i5248_2_lut.init = 16'h8888;
    LUT4 i7748_2_lut_2_lut_3_lut_4_lut (.A(n23), .B(n10120), .C(n9513), 
         .D(reset_n_N_1), .Z(n9273)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;
    defparam i7748_2_lut_2_lut_3_lut_4_lut.init = 16'hff8f;
    LUT4 i2_2_lut_3_lut (.A(n10167), .B(sh8out_state[3]), .C(I_SCL_FALL), 
         .Z(n4483)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(480[9] 483[12])
    defparam i2_2_lut_3_lut.init = 16'h2020;
    LUT4 i3635_3_lut_4_lut_4_lut (.A(n23), .B(n10120), .C(n10105), .D(n14_adj_532), 
         .Z(n5151)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (D))) */ ;
    defparam i3635_3_lut_4_lut_4_lut.init = 16'hcc08;
    LUT4 i2_4_lut_4_lut (.A(n10167), .B(sh8out_state[3]), .C(n4492), .D(RFF), 
         .Z(n9148)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C (D))+!B (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(480[9] 483[12])
    defparam i2_4_lut_4_lut.init = 16'h2eff;
    LUT4 i1_3_lut_4_lut (.A(n23), .B(n10120), .C(n10105), .D(n10106), 
         .Z(n4_adj_543)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf0f8;
    LUT4 i7936_3_lut (.A(\RAM[1] [15]), .B(\RAM[1] [7]), .C(I_REG_ADDR[0]), 
         .Z(n9462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7936_3_lut.init = 16'hcaca;
    LUT4 i5249_2_lut (.A(I_SREG_SDA_OUT[7]), .B(I_RD_OE), .Z(I_SDA_SOURCE_2)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(182[31:72])
    defparam i5249_2_lut.init = 16'h8888;
    LUT4 i7935_3_lut (.A(\RAM[0] [15]), .B(\RAM[0] [7]), .C(I_REG_ADDR[0]), 
         .Z(n9461)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7935_3_lut.init = 16'hcaca;
    LUT4 I_SDA_SOURCE_1_keep_I_0_2_lut (.A(I_SDA_SOURCE_1), .B(I_SDA_SOURCE_2), 
         .Z(I_SDA_OUT_keep)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(183[31:64])
    defparam I_SDA_SOURCE_1_keep_I_0_2_lut.init = 16'heeee;
    LUT4 equal_12_i3_2_lut_rep_161 (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .Z(n10155)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(354[16:35])
    defparam equal_12_i3_2_lut_rep_161.init = 16'heeee;
    LUT4 n198_bdd_4_lut (.A(n10117), .B(FF), .C(n2694), .D(ST_FSM_STATE[0]), 
         .Z(n9990)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam n198_bdd_4_lut.init = 16'hc4c0;
    LUT4 i134_2_lut_rep_103_3_lut_4_lut (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .C(n10122), .D(I_CTRL_BYTE[0]), .Z(n10097)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(354[16:35])
    defparam i134_2_lut_rep_103_3_lut_4_lut.init = 16'hf1ff;
    LUT4 i2298_2_lut_3_lut_4_lut (.A(n14_adj_535), .B(n10119), .C(n10120), 
         .D(n23), .Z(n3799)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam i2298_2_lut_3_lut_4_lut.init = 16'hf888;
    LUT4 i1_2_lut_rep_129_3_lut_4_lut (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .C(FF), .D(I_RD_OP), .Z(n10123)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(354[16:35])
    defparam i1_2_lut_rep_129_3_lut_4_lut.init = 16'he000;
    LUT4 n1_bdd_4_lut_8482 (.A(I_CTRL_BYTE[0]), .B(n10155), .C(I_RD_OP), 
         .D(n10122), .Z(n9983)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!B)) */ ;
    defparam n1_bdd_4_lut_8482.init = 16'hff3b;
    LUT4 i139_2_lut_3_lut_4_lut (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .C(n10122), .D(I_CTRL_BYTE[0]), .Z(n199)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(354[16:35])
    defparam i139_2_lut_3_lut_4_lut.init = 16'hfff1;
    LUT4 i2066_2_lut_rep_162 (.A(FF), .B(ST_FSM_STATE[0]), .Z(n10156)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2066_2_lut_rep_162.init = 16'h4444;
    LUT4 i2491_4_lut (.A(n239[3]), .B(sh8in_state[3]), .C(n4592), .D(n10172), 
         .Z(n6_adj_544)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2491_4_lut.init = 16'hcac0;
    LUT4 mux_1220_i2_3_lut (.A(I_RD_VAL[1]), .B(I_SREG_SDA_OUT[0]), .C(RFF), 
         .Z(n1633[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1220_i2_3_lut.init = 16'hcaca;
    LUT4 i5399_2_lut (.A(I_SREG_SDA_OUT[1]), .B(n6820), .Z(n1624[1])) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5399_2_lut.init = 16'h8888;
    LUT4 i5360_2_lut (.A(I_SDA_DATA[0]), .B(reset_n_N_1), .Z(RAM_0__15__N_82[40])) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1047[5] 1102[8])
    defparam i5360_2_lut.init = 16'heeee;
    LUT4 mux_1220_i3_3_lut (.A(I_RD_VAL[2]), .B(I_SREG_SDA_OUT[1]), .C(RFF), 
         .Z(n1633[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1220_i3_3_lut.init = 16'hcaca;
    LUT4 i5400_2_lut (.A(I_SREG_SDA_OUT[2]), .B(n6820), .Z(n1624[2])) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5400_2_lut.init = 16'h8888;
    LUT4 mux_1220_i4_3_lut (.A(I_RD_VAL[3]), .B(I_SREG_SDA_OUT[2]), .C(RFF), 
         .Z(n1633[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1220_i4_3_lut.init = 16'hcaca;
    LUT4 i5401_2_lut (.A(I_SREG_SDA_OUT[3]), .B(n6820), .Z(n1624[3])) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5401_2_lut.init = 16'h8888;
    LUT4 i5357_2_lut (.A(I_SDA_DATA[2]), .B(reset_n_N_1), .Z(RAM_0__15__N_82[34])) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1047[5] 1102[8])
    defparam i5357_2_lut.init = 16'heeee;
    LUT4 i8129_2_lut_rep_149_2_lut (.A(n2694), .B(reset_n_N_1), .Z(n10143)) /* synthesis lut_function=((B)+!A) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i8129_2_lut_rep_149_2_lut.init = 16'hdddd;
    LUT4 i5358_2_lut (.A(I_SDA_DATA[3]), .B(reset_n_N_1), .Z(RAM_0__15__N_82[35])) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1047[5] 1102[8])
    defparam i5358_2_lut.init = 16'heeee;
    LUT4 i7930_3_lut (.A(\RAM[1] [13]), .B(\RAM[1] [5]), .C(I_REG_ADDR[0]), 
         .Z(n9456)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7930_3_lut.init = 16'hcaca;
    LUT4 i5359_2_lut (.A(I_SDA_DATA[4]), .B(reset_n_N_1), .Z(RAM_0__15__N_82[36])) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1047[5] 1102[8])
    defparam i5359_2_lut.init = 16'heeee;
    LUT4 mux_1220_i5_3_lut (.A(I_RD_VAL[4]), .B(I_SREG_SDA_OUT[3]), .C(RFF), 
         .Z(n1633[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1220_i5_3_lut.init = 16'hcaca;
    LUT4 n3353_bdd_4_lut (.A(sh8in_state[1]), .B(sh8in_state[2]), .C(sh8in_state[0]), 
         .D(I_SCL_RISE), .Z(n9996)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n3353_bdd_4_lut.init = 16'h8000;
    LUT4 i5402_2_lut (.A(I_SREG_SDA_OUT[4]), .B(n6820), .Z(n1624[4])) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5402_2_lut.init = 16'h8888;
    LUT4 mux_1220_i6_3_lut (.A(I_RD_VAL[5]), .B(I_SREG_SDA_OUT[4]), .C(RFF), 
         .Z(n1633[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1220_i6_3_lut.init = 16'hcaca;
    LUT4 i5403_2_lut (.A(I_SREG_SDA_OUT[5]), .B(n6820), .Z(n1624[5])) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5403_2_lut.init = 16'h8888;
    LUT4 mux_1220_i7_3_lut (.A(I_RD_VAL[6]), .B(I_SREG_SDA_OUT[5]), .C(RFF), 
         .Z(n1633[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1220_i7_3_lut.init = 16'hcaca;
    LUT4 i5404_2_lut (.A(I_SREG_SDA_OUT[6]), .B(n6820), .Z(n1624[6])) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5404_2_lut.init = 16'h8888;
    LUT4 n10000_bdd_2_lut (.A(n10000), .B(sh8in_state[2]), .Z(n10001)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n10000_bdd_2_lut.init = 16'h2222;
    LUT4 i7929_3_lut (.A(\RAM[0] [13]), .B(\RAM[0] [5]), .C(I_REG_ADDR[0]), 
         .Z(n9455)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7929_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_100_3_lut_3_lut_4_lut_4_lut (.A(n2694), .B(n10157), 
         .C(n10158), .D(reset_n_N_1), .Z(n10094)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_rep_100_3_lut_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 n3_bdd_4_lut (.A(n10142), .B(I_SCL_RISE), .C(sh8in_state[1]), 
         .D(sh8in_state[0]), .Z(n10000)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam n3_bdd_4_lut.init = 16'h0afc;
    LUT4 i1095_2_lut_rep_163 (.A(FF), .B(RFF), .Z(n10157)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1095_2_lut_rep_163.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_48 (.A(FF), .B(RFF), .C(sh8out_state[3]), 
         .Z(n9199)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_3_lut_adj_48.init = 16'h4040;
    LUT4 mux_1220_i8_3_lut (.A(I_RD_VAL[7]), .B(I_SREG_SDA_OUT[6]), .C(RFF), 
         .Z(n1633[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1220_i8_3_lut.init = 16'hcaca;
    LUT4 i5405_2_lut (.A(I_SREG_SDA_OUT[7]), .B(n6820), .Z(n1624[7])) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5405_2_lut.init = 16'h8888;
    PFUMX mux_880_i3 (.BLUT(n1223[2]), .ALUT(n1233[2]), .C0(n9321), .Z(ST_FSM_STATE_2__N_192[2]));
    FD1P3JX READ_S_478 (.D(n10143), .SP(CLOCK_keep_enable_70), .PD(n6957), 
            .CK(clk_out_2_pre_keep), .Q(READ_S_c)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam READ_S_478.GSR = "ENABLED";
    FD1P3JX READREG_S_477 (.D(n10143), .SP(CLOCK_keep_enable_70), .PD(n5195), 
            .CK(clk_out_2_pre_keep), .Q(READREG_S_c)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam READREG_S_477.GSR = "ENABLED";
    FD1P3JX READCTRL_S_476 (.D(n8585), .SP(CLOCK_keep_enable_70), .PD(n5194), 
            .CK(clk_out_2_pre_keep), .Q(READCTRL_S_c)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam READCTRL_S_476.GSR = "ENABLED";
    FD1P3JX IDLE_S_475 (.D(n8585), .SP(CLOCK_keep_enable_70), .PD(n5193), 
            .CK(clk_out_2_pre_keep), .Q(IDLE_S_c)) /* synthesis syn_preserve=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(283[8] 519[4])
    defparam IDLE_S_475.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_164 (.A(ST_FSM_STATE[0]), .B(ST_FSM_STATE[2]), .Z(n10158)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_rep_164.init = 16'h2222;
    LUT4 i5361_2_lut (.A(I_SDA_DATA[1]), .B(reset_n_N_1), .Z(RAM_0__15__N_82[41])) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1047[5] 1102[8])
    defparam i5361_2_lut.init = 16'heeee;
    LUT4 i1614_4_lut (.A(I_SDA_DEB_1), .B(I_SDA_DEB), .C(I_SDA_DEB_N_360), 
         .D(I_SDA_DEB_N_361), .Z(I_SDA_DEB_1_N_369)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(233[14] 237[12])
    defparam i1614_4_lut.init = 16'hccac;
    LUT4 i2_2_lut_rep_116_2_lut_3_lut_3_lut_4_lut (.A(ST_FSM_STATE[0]), .B(ST_FSM_STATE[2]), 
         .C(reset_n_N_1), .D(n2694), .Z(n10110)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i2_2_lut_rep_116_2_lut_3_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i1617_2_lut (.A(I_SCL_DEB_N_367), .B(reset_n_N_1), .Z(n3116)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(214[5] 238[8])
    defparam i1617_2_lut.init = 16'heeee;
    LUT4 i1920_4_lut (.A(n239[0]), .B(sh8in_state[0]), .C(n4592), .D(n10172), 
         .Z(n6_adj_545)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1920_4_lut.init = 16'hcac0;
    LUT4 i5364_2_lut (.A(I_SDA_DATA[7]), .B(reset_n_N_1), .Z(RAM_0__15__N_82[55])) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1047[5] 1102[8])
    defparam i5364_2_lut.init = 16'heeee;
    LUT4 i5254_2_lut (.A(I_SCL_DEB), .B(I_SCL_DEB_N_366), .Z(I_SCL_DEB_N_364)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(223[14] 227[12])
    defparam i5254_2_lut.init = 16'h8888;
    LUT4 i8097_3_lut_rep_88_3_lut_4_lut (.A(ST_FSM_STATE[0]), .B(ST_FSM_STATE[2]), 
         .C(n3263), .D(reset_n_N_1), .Z(n10082)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (D))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i8097_3_lut_rep_88_3_lut_4_lut.init = 16'h00df;
    LUT4 i8136_2_lut_2_lut (.A(n2694), .B(ST_FSM_STATE[2]), .Z(n9323)) /* synthesis lut_function=((B)+!A) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i8136_2_lut_2_lut.init = 16'hdddd;
    LUT4 i2893_4_lut (.A(I_ACK_OE), .B(n10139), .C(n9159), .D(ackout_state[1]), 
         .Z(I_ACK_OE_N_444)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i2893_4_lut.init = 16'h0aca;
    LUT4 n217_bdd_3_lut_8348 (.A(ST_FSM_STATE[2]), .B(ST_FSM_STATE[0]), 
         .C(FF), .Z(n10016)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam n217_bdd_3_lut_8348.init = 16'h4040;
    LUT4 i2_3_lut_3_lut (.A(ackout_state[1]), .B(I_SCL_FALL), .C(ackout_state[0]), 
         .Z(n9112)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 i5438_3_lut_3_lut_4_lut_4_lut (.A(ackout_state[1]), .B(n10154), 
         .C(sh8in_state[1]), .D(ackout_state[0]), .Z(n14_adj_546)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5438_3_lut_3_lut_4_lut_4_lut.init = 16'hc0c8;
    LUT4 equal_116_i3_2_lut_rep_148_2_lut (.A(ackout_state[1]), .B(ackout_state[0]), 
         .Z(n10142)) /* synthesis lut_function=((B)+!A) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam equal_116_i3_2_lut_rep_148_2_lut.init = 16'hdddd;
    LUT4 i19_2_lut_2_lut (.A(ackout_state[1]), .B(n9154), .Z(n9072)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i19_2_lut_2_lut.init = 16'h2222;
    PFUMX mux_880_i1 (.BLUT(n1185[0]), .ALUT(n1233[0]), .C0(n9315), .Z(ST_FSM_STATE_2__N_192[0]));
    LUT4 i1_3_lut (.A(I_REG_ADDR[4]), .B(I_REG_ADDR[3]), .C(I_REG_ADDR[2]), 
         .Z(n6_adj_529)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut.init = 16'heaea;
    LUT4 i1_4_lut_adj_49 (.A(n3512), .B(n10169), .C(n6_adj_547), .D(ackout_state[0]), 
         .Z(n9159)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut_adj_49.init = 16'h0080;
    LUT4 i26_3_lut_4_lut_3_lut (.A(ST_FSM_STATE[0]), .B(FF), .C(n2694), 
         .Z(n13)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i26_3_lut_4_lut_3_lut.init = 16'h1212;
    PFUMX i31 (.BLUT(n19), .ALUT(n4_adj_548), .C0(n15), .Z(n16));
    LUT4 i8_4_lut_adj_50 (.A(n15_adj_549), .B(I_SCL_PIPE[6]), .C(n14_adj_550), 
         .D(I_SCL_PIPE[1]), .Z(I_SCL_DEB_N_367)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(218[13:42])
    defparam i8_4_lut_adj_50.init = 16'h8000;
    LUT4 i6_4_lut_adj_51 (.A(I_SCL_PIPE[7]), .B(I_SCL_PIPE[9]), .C(I_SCL_PIPE[2]), 
         .D(I_SCL_PIPE[8]), .Z(n15_adj_549)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(218[13:42])
    defparam i6_4_lut_adj_51.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_adj_52 (.A(ST_FSM_STATE[0]), .B(FF), .C(n2694), 
         .Z(n4592)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_3_lut_adj_52.init = 16'hfefe;
    LUT4 i2011_2_lut (.A(ackout_state[1]), .B(I_SCL_FALL), .Z(n3512)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(845[5] 878[12])
    defparam i2011_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_53 (.A(n10154), .B(n10173), .C(n4961), .D(ST_FSM_STATE[2]), 
         .Z(n6_adj_547)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_53.init = 16'ha088;
    LUT4 FF_keep_I_0_559_1_lut_rep_165 (.A(FF), .Z(n10159)) /* synthesis lut_function=(!(A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam FF_keep_I_0_559_1_lut_rep_165.init = 16'h5555;
    LUT4 n199_bdd_4_lut_8275_4_lut (.A(FF), .B(sh8in_state[2]), .C(ST_FSM_STATE[0]), 
         .D(n239[2]), .Z(n9892)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam n199_bdd_4_lut_8275_4_lut.init = 16'hc5c0;
    PFUMX mux_597_i3 (.BLUT(n833[2]), .ALUT(n2698[2]), .C0(n10103), .Z(I_REG_ADDR_7__N_168[2]));
    LUT4 i7885_4_lut_4_lut (.A(FF), .B(ST_FSM_STATE[0]), .C(sh8in_state[0]), 
         .D(n239[0]), .Z(n9411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam i7885_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i2_3_lut_4_lut_adj_54 (.A(I_CTRL_BYTE[0]), .B(n10122), .C(ST_FSM_STATE[0]), 
         .D(n10123), .Z(n9207)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(366[17:45])
    defparam i2_3_lut_4_lut_adj_54.init = 16'h2000;
    LUT4 n217_bdd_3_lut (.A(n10149), .B(ST_FSM_STATE[2]), .C(ST_FSM_STATE[0]), 
         .Z(n10017)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n217_bdd_3_lut.init = 16'h0808;
    LUT4 i5_3_lut_adj_55 (.A(I_SCL_PIPE[5]), .B(I_SCL_PIPE[3]), .C(I_SCL_PIPE[4]), 
         .Z(n14_adj_550)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(218[13:42])
    defparam i5_3_lut_adj_55.init = 16'h8080;
    PFUMX mux_597_i2 (.BLUT(n833[1]), .ALUT(n2698[1]), .C0(n10103), .Z(I_REG_ADDR_7__N_168[1]));
    LUT4 i7744_2_lut_3_lut (.A(I_CTRL_BYTE[0]), .B(n10122), .C(n2694), 
         .Z(n9269)) /* synthesis lut_function=((B+(C))+!A) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(366[17:45])
    defparam i7744_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i8_4_lut_adj_56 (.A(n15_adj_551), .B(I_SCL_PIPE[6]), .C(n14_adj_552), 
         .D(I_SCL_PIPE[1]), .Z(I_SCL_DEB_N_366)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(223[18:47])
    defparam i8_4_lut_adj_56.init = 16'hfffe;
    LUT4 i2501_4_lut (.A(n239[1]), .B(sh8in_state[1]), .C(n4592), .D(n10172), 
         .Z(n6_adj_553)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2501_4_lut.init = 16'hcac0;
    LUT4 i8042_3_lut (.A(n9936), .B(n9411), .C(n2694), .Z(n9412)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i8042_3_lut.init = 16'hcaca;
    LUT4 i7807_4_lut_4_lut (.A(FF), .B(ST_FSM_STATE[0]), .C(sh8in_state[1]), 
         .D(n239[1]), .Z(n9333)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam i7807_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i8044_3_lut (.A(n9939), .B(n9414), .C(n2694), .Z(n9415)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i8044_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_4_lut_adj_57 (.A(FF), .B(n4483), .C(n10110), .D(RFF), 
         .Z(n1650)) /* synthesis lut_function=(!(A+!(B (C)+!B !((D)+!C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam i2_4_lut_4_lut_adj_57.init = 16'h4050;
    LUT4 i3_4_lut_4_lut (.A(FF), .B(RFF), .C(n4492), .D(sh8out_state[3]), 
         .Z(n8554)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    PFUMX mux_597_i1 (.BLUT(n833[0]), .ALUT(n2698[0]), .C0(n10103), .Z(I_REG_ADDR_7__N_168[0]));
    LUT4 i63_4_lut_4_lut (.A(FF), .B(n48), .C(n2694), .D(ST_FSM_STATE[0]), 
         .Z(n45)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam i63_4_lut_4_lut.init = 16'h5c50;
    LUT4 i8048_3_lut (.A(n9923), .B(n9333), .C(n2694), .Z(n9334)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i8048_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut_adj_58 (.A(I_SCL_PIPE[7]), .B(I_SCL_PIPE[9]), .C(I_SCL_PIPE[2]), 
         .D(I_SCL_PIPE[8]), .Z(n15_adj_551)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(223[18:47])
    defparam i6_4_lut_adj_58.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_59 (.A(FF), .B(n6_adj_554), .C(n9247), .D(n7), 
         .Z(n1562)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam i1_4_lut_4_lut_adj_59.init = 16'hf4f0;
    LUT4 i5292_3_lut_4_lut_4_lut (.A(FF), .B(I_RD_OP), .C(ST_FSM_STATE[0]), 
         .D(n2694), .Z(n6_adj_555)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam i5292_3_lut_4_lut_4_lut.init = 16'hccc4;
    LUT4 i5_3_lut_adj_60 (.A(I_SCL_PIPE[5]), .B(I_SCL_PIPE[3]), .C(I_SCL_PIPE[4]), 
         .Z(n14_adj_552)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(223[18:47])
    defparam i5_3_lut_adj_60.init = 16'hfefe;
    LUT4 I_SDA_OUT_OE_keep_I_0_499_1_lut (.A(I_SDA_OUT_OE), .Z(I_SDA_OUT_OE_keep_N_355)) /* synthesis lut_function=(!(A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(186[31:46])
    defparam I_SDA_OUT_OE_keep_I_0_499_1_lut.init = 16'h5555;
    LUT4 i7888_4_lut_4_lut (.A(FF), .B(ST_FSM_STATE[0]), .C(sh8in_state[3]), 
         .D(n239[3]), .Z(n9414)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam i7888_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1612_4_lut (.A(I_SCL_DEB_1), .B(I_SCL_DEB), .C(I_SCL_DEB_N_366), 
         .D(I_SCL_DEB_N_367), .Z(I_SCL_DEB_1_N_372)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(223[14] 227[12])
    defparam i1612_4_lut.init = 16'hccac;
    PFUMX mux_1074_i2 (.BLUT(n1441[1]), .ALUT(n1462[1]), .C0(n9325), .Z(sh8out_state_3__N_195[1]));
    LUT4 n6822_bdd_4_lut_8317 (.A(n10138), .B(n23), .C(n10161), .D(I_CTRL_BYTE[6]), 
         .Z(n9763)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam n6822_bdd_4_lut_8317.init = 16'hbf00;
    LUT4 i2_3_lut_4_lut_4_lut (.A(FF), .B(n10155), .C(ST_FSM_STATE[0]), 
         .D(n2694), .Z(n6_adj_530)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(347[12:22])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hff7f;
    LUT4 i7926_3_lut (.A(\RAM[0] [12]), .B(\RAM[0] [4]), .C(I_REG_ADDR[0]), 
         .Z(n9452)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7926_3_lut.init = 16'hcaca;
    PFUMX mux_583_i8 (.BLUT(n744[7]), .ALUT(n2679[0]), .C0(n10104), .Z(n800[7]));
    LUT4 i3_4_lut (.A(n9148), .B(ST_FSM_STATE[2]), .C(n2694), .D(n10168), 
         .Z(n9149)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_4_lut.init = 16'hffef;
    LUT4 i8109_2_lut_rep_151_2_lut (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), 
         .Z(n10145)) /* synthesis lut_function=((B)+!A) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i8109_2_lut_rep_151_2_lut.init = 16'hdddd;
    LUT4 i8145_2_lut_2_lut_3_lut_4_lut (.A(ST_FSM_STATE[2]), .B(n10127), 
         .C(n1399), .D(n10161), .Z(n9321)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;
    defparam i8145_2_lut_2_lut_3_lut_4_lut.init = 16'h2f0f;
    LUT4 i2284_4_lut (.A(n800[7]), .B(\shift8in.shift [7]), .C(n10103), 
         .D(n4_adj_543), .Z(I_REG_ADDR_7__N_168[7])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2284_4_lut.init = 16'hccca;
    LUT4 mux_1060_i2_4_lut (.A(sh8out_state[1]), .B(n10126), .C(n1440), 
         .D(n10082), .Z(n1441[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1060_i2_4_lut.init = 16'hcac0;
    LUT4 i4005_4_lut (.A(n10172), .B(I_WR_OP), .C(FF), .D(n10144), .Z(n5523)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(280[13:15])
    defparam i4005_4_lut.init = 16'h303a;
    LUT4 i1804_4_lut (.A(\shift8in.shift [0]), .B(I_SDA_DEB), .C(I_SCL_RISE), 
         .D(n10113), .Z(n2698[0])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i1804_4_lut.init = 16'hcaaa;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(ST_FSM_STATE[2]), .B(n10170), 
         .C(n10171), .D(reset_n_N_1), .Z(n6_adj_554)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i1749_4_lut (.A(I_REG_ADDR[0]), .B(\shift8in.shift [0]), .C(n3799), 
         .D(n10085), .Z(n833[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1749_4_lut.init = 16'hcac0;
    LUT4 i28_2_lut (.A(sh8in_state[1]), .B(sh8in_state[2]), .Z(n14_adj_535)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i28_2_lut.init = 16'h6666;
    LUT4 i2299_4_lut (.A(I_REG_ADDR[1]), .B(\shift8in.shift [1]), .C(n3799), 
         .D(n10085), .Z(n833[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2299_4_lut.init = 16'hcac0;
    LUT4 i2301_4_lut (.A(I_REG_ADDR[2]), .B(\shift8in.shift [2]), .C(n3799), 
         .D(n10085), .Z(n833[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2301_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_104_3_lut_3_lut_4_lut_4_lut (.A(ST_FSM_STATE[2]), .B(n10146), 
         .C(n10171), .D(reset_n_N_1), .Z(n10098)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_rep_104_3_lut_3_lut_4_lut_4_lut.init = 16'h0002;
    PFUMX i64 (.BLUT(n45), .ALUT(n4857), .C0(ST_FSM_STATE[2]), .Z(n43));
    LUT4 i2_3_lut_4_lut_4_lut_adj_61 (.A(n2694), .B(n10_adj_511), .C(I_START_EDGE_CNT[1]), 
         .D(I_START_EDGE_CNT[0]), .Z(n4_adj_548)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_61.init = 16'h1110;
    LUT4 mux_848_i1_3_lut (.A(I_START_EDGE), .B(ST_FSM_STATE[0]), .C(n1389), 
         .Z(n1185[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_848_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_110_3_lut_4_lut (.A(FF), .B(n10152), .C(n23), .D(n10165), 
         .Z(n10104)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_110_3_lut_4_lut.init = 16'h1000;
    PFUMX mux_1074_i1 (.BLUT(n1441[0]), .ALUT(n1462[0]), .C0(n9325), .Z(sh8out_state_3__N_195[0]));
    LUT4 n10_bdd_4_lut (.A(reset_n_N_1), .B(n9152), .C(n10158), .D(n2694), 
         .Z(n6820)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;
    defparam n10_bdd_4_lut.init = 16'h5545;
    LUT4 i12_3_lut (.A(n7_adj_556), .B(\shift8in.shift [6]), .C(n5151), 
         .Z(I_REG_ADDR_7__N_168[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_62 (.A(ST_FSM_STATE[2]), .B(n20_adj_557), .C(n14_adj_558), 
         .D(n9279), .Z(n19)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_4_lut_4_lut_adj_62.init = 16'h1504;
    LUT4 i11_4_lut (.A(I_REG_ADDR[6]), .B(n2725[3]), .C(n10105), .D(n9273), 
         .Z(n7_adj_556)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i11_4_lut.init = 16'hc0ca;
    LUT4 mux_878_i3_4_lut (.A(n1395), .B(n10155), .C(n10095), .D(n4_adj_526), 
         .Z(n1233[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_878_i3_4_lut.init = 16'hcac0;
    LUT4 mux_871_i3_4_lut (.A(n2694), .B(n9275), .C(n1397), .D(n6), 
         .Z(n1223[2])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_871_i3_4_lut.init = 16'hcafa;
    PFUMX mux_337_Mux_1_i7 (.BLUT(n9334), .ALUT(n6_adj_553), .C0(ST_FSM_STATE[2]), 
          .Z(n969[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;
    LUT4 i3677_2_lut_3_lut_4_lut_4_lut_4_lut (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), 
         .C(ST_FSM_STATE[0]), .D(n2694), .Z(n5195)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i3677_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i8080_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(ST_FSM_STATE[2]), .B(n2694), 
         .C(reset_n_N_1), .D(ST_FSM_STATE[0]), .Z(n6957)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (D))) */ ;
    defparam i8080_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h00f7;
    LUT4 i8092_4_lut (.A(FF), .B(n10161), .C(ST_FSM_STATE[2]), .D(n199), 
         .Z(n9513)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C)))) */ ;
    defparam i8092_4_lut.init = 16'h3f37;
    LUT4 i7757_2_lut_3_lut_4_lut_4_lut (.A(n10130), .B(n23), .C(n10146), 
         .D(n10114), .Z(n9282)) /* synthesis lut_function=(!(A ((C+!(D))+!B))) */ ;
    defparam i7757_2_lut_3_lut_4_lut_4_lut.init = 16'h5d55;
    LUT4 mux_597_i6_3_lut (.A(n833[5]), .B(\shift8in.shift [5]), .C(n5151), 
         .Z(I_REG_ADDR_7__N_168[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_597_i6_3_lut.init = 16'hcaca;
    LUT4 mux_592_i6_4_lut (.A(I_REG_ADDR[5]), .B(n2725[2]), .C(n10105), 
         .D(n9273), .Z(n833[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_592_i6_4_lut.init = 16'hc0ca;
    LUT4 i8104_2_lut_rep_135_3_lut_3_lut_3_lut (.A(ST_FSM_STATE[2]), .B(reset_n_N_1), 
         .C(n2694), .Z(CLOCK_keep_enable_70)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i8104_2_lut_rep_135_3_lut_3_lut_3_lut.init = 16'hdfdf;
    PFUMX mux_337_Mux_3_i7 (.BLUT(n9415), .ALUT(n6_adj_544), .C0(ST_FSM_STATE[2]), 
          .Z(n969[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;
    LUT4 i8143_4_lut_4_lut (.A(n10127), .B(ST_FSM_STATE[2]), .C(n2694), 
         .D(n20_adj_557), .Z(n1395)) /* synthesis lut_function=(!(A+(B (C)+!B (D)))) */ ;
    defparam i8143_4_lut_4_lut.init = 16'h0415;
    LUT4 i1819_4_lut (.A(\shift8in.shift [5]), .B(I_SDA_DEB), .C(sh8in_state[2]), 
         .D(n10136), .Z(n2725[2])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1819_4_lut.init = 16'hacaa;
    PFUMX i8349 (.BLUT(n10017), .ALUT(n10016), .C0(n2694), .Z(n10_adj_511));
    LUT4 i5381_2_lut_3_lut_4_lut (.A(n10151), .B(n10132), .C(I_SDA_DEB), 
         .D(n10118), .Z(n2690[0])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5381_2_lut_3_lut_4_lut.init = 16'h8000;
    PFUMX mux_337_Mux_0_i7 (.BLUT(n9412), .ALUT(n6_adj_545), .C0(ST_FSM_STATE[2]), 
          .Z(n969[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;
    FD1S3IX I_START_FF_1_456 (.D(I_START_FF), .CK(clk_out_2_pre_keep), .CD(reset_n_N_1), 
            .Q(I_START_FF_1));   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(242[8] 274[4])
    defparam I_START_FF_1_456.GSR = "ENABLED";
    LUT4 i3_2_lut_rep_166 (.A(sh8in_state[3]), .B(sh8in_state[2]), .Z(n10160)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3_2_lut_rep_166.init = 16'h2222;
    LUT4 mux_597_i5_3_lut (.A(n833[4]), .B(\shift8in.shift [4]), .C(n5151), 
         .Z(I_REG_ADDR_7__N_168[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_597_i5_3_lut.init = 16'hcaca;
    LUT4 mux_592_i5_4_lut (.A(I_REG_ADDR[4]), .B(n2725[1]), .C(n10105), 
         .D(n9273), .Z(n833[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_592_i5_4_lut.init = 16'hc0ca;
    LUT4 i2132_4_lut (.A(\shift8in.shift [4]), .B(I_SDA_DEB), .C(sh8in_state[2]), 
         .D(n10121), .Z(n2725[1])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2132_4_lut.init = 16'hcaaa;
    LUT4 mux_597_i4_3_lut (.A(n833[3]), .B(\shift8in.shift [3]), .C(n5151), 
         .Z(I_REG_ADDR_7__N_168[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_597_i4_3_lut.init = 16'hcaca;
    LUT4 mux_592_i4_4_lut (.A(I_REG_ADDR[3]), .B(n2725[0]), .C(n10105), 
         .D(n9273), .Z(n833[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_592_i4_4_lut.init = 16'hc0ca;
    LUT4 i1731_4_lut (.A(\shift8in.shift [3]), .B(I_SDA_DEB), .C(sh8in_state[2]), 
         .D(n10136), .Z(n2725[0])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i1731_4_lut.init = 16'hcaaa;
    LUT4 i1_2_lut_rep_154_3_lut (.A(sh8in_state[3]), .B(sh8in_state[2]), 
         .C(sh8in_state[1]), .Z(n10148)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_154_3_lut.init = 16'h0202;
    LUT4 i3679_2_lut_3_lut_4_lut_4_lut_4_lut (.A(n2694), .B(reset_n_N_1), 
         .C(ST_FSM_STATE[0]), .D(ST_FSM_STATE[2]), .Z(n5197)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i3679_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hd0f0;
    LUT4 i8093_2_lut_rep_91 (.A(reset_n_N_1), .B(n9513), .Z(n10085)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i8093_2_lut_rep_91.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_63 (.A(I_REG_ADDR[1]), .B(n10141), .C(reset_n_N_1), 
         .D(I_REG_ADDR[2]), .Z(CLOCK_keep_enable_37)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i1_2_lut_3_lut_4_lut_adj_63.init = 16'hf0f8;
    LUT4 i8149_2_lut_rep_106_2_lut (.A(n10133), .B(reset_n_N_1), .Z(n10100)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8149_2_lut_rep_106_2_lut.init = 16'h1111;
    LUT4 i8082_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n2694), .B(ST_FSM_STATE[2]), 
         .C(reset_n_N_1), .D(ST_FSM_STATE[0]), .Z(n6795)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (D))) */ ;
    defparam i8082_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h00f7;
    LUT4 i8074_2_lut_rep_137_3_lut_3_lut_3_lut (.A(n2694), .B(reset_n_N_1), 
         .C(ST_FSM_STATE[2]), .Z(CLOCK_keep_enable_66)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i8074_2_lut_rep_137_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 mux_469_i4_4_lut (.A(I_CTRL_BYTE[3]), .B(n2725[0]), .C(n10101), 
         .D(n43_adj_559), .Z(n630[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_469_i4_4_lut.init = 16'hc0ca;
    PFUMX i8338 (.BLUT(n10002), .ALUT(n10001), .C0(sh8in_state[3]), .Z(n239[0]));
    LUT4 i5380_2_lut_3_lut (.A(reset_n_N_1), .B(n9513), .C(I_REG_ADDR[7]), 
         .Z(n744[7])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i5380_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_152_3_lut (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .C(FF), .Z(n10146)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(431[16:35])
    defparam i1_2_lut_rep_152_3_lut.init = 16'hf4f4;
    LUT4 i7906_3_lut (.A(ROReg2[5]), .B(ROReg3[5]), .C(I_REG_ADDR[0]), 
         .Z(n9432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7906_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_rep_167 (.A(n2694), .B(ST_FSM_STATE[0]), .Z(n10161)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut_rep_167.init = 16'h4444;
    LUT4 i1_2_lut_rep_127 (.A(I_SCL_RISE), .B(sh8in_state[0]), .Z(n10121)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_127.init = 16'h2222;
    LUT4 i3_3_lut_4_lut (.A(I_SCL_RISE), .B(sh8in_state[0]), .C(sh8in_state[2]), 
         .D(n3526), .Z(n8_adj_560)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_3_lut_4_lut.init = 16'h0200;
    LUT4 mux_1069_i2_4_lut_4_lut_4_lut (.A(n10092), .B(n1470), .C(sh8out_state[2]), 
         .D(n10126), .Z(n1462[1])) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;
    defparam mux_1069_i2_4_lut_4_lut_4_lut.init = 16'h3047;
    PFUMX mux_1230_i8 (.BLUT(n1624[7]), .ALUT(n1633[7]), .C0(n1650), .Z(I_SREG_SDA_OUT_7__N_205[7]));
    LUT4 i63_2_lut_2_lut_3_lut_4_lut_4_lut (.A(n10133), .B(n23), .C(n10116), 
         .D(reset_n_N_1), .Z(n43_adj_559)) /* synthesis lut_function=(A+(B (C+(D))+!B (D))) */ ;
    defparam i63_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'hffea;
    LUT4 mux_469_i5_4_lut (.A(I_CTRL_BYTE[4]), .B(n2725[1]), .C(n10101), 
         .D(n43_adj_559), .Z(n630[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_469_i5_4_lut.init = 16'hc0ca;
    LUT4 i3682_1_lut (.A(I_SDA_ACK_OUT), .Z(n5200)) /* synthesis lut_function=(!(A)) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i3682_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_138_3_lut_4_lut (.A(n2694), .B(ST_FSM_STATE[0]), .C(reset_n_N_1), 
         .D(ST_FSM_STATE[2]), .Z(n10132)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_138_3_lut_4_lut.init = 16'h0004;
    LUT4 i27_4_lut_4_lut (.A(n2694), .B(ST_FSM_STATE[0]), .C(ST_FSM_STATE[2]), 
         .D(n14_adj_558), .Z(n20_adj_561)) /* synthesis lut_function=(A (C)+!A !((C+!(D))+!B)) */ ;
    defparam i27_4_lut_4_lut.init = 16'ha4a0;
    LUT4 mux_469_i6_4_lut (.A(I_CTRL_BYTE[5]), .B(n2725[2]), .C(n10101), 
         .D(n43_adj_559), .Z(n630[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_469_i6_4_lut.init = 16'hc0ca;
    PFUMX i8336 (.BLUT(n9996), .ALUT(n8341), .C0(sh8in_state[3]), .Z(n239[3]));
    LUT4 i1_2_lut_3_lut_adj_64 (.A(I_SCL_RISE), .B(sh8in_state[0]), .C(n9242), 
         .Z(n9221)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_64.init = 16'h2020;
    LUT4 i5267_2_lut_rep_168 (.A(sh8in_state[2]), .B(sh8in_state[1]), .Z(n10162)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5267_2_lut_rep_168.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_3_lut (.A(n10133), .B(I_CTRL_BYTE[7]), .C(reset_n_N_1), 
         .Z(n541[7])) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'h0404;
    PFUMX mux_1230_i7 (.BLUT(n1624[6]), .ALUT(n1633[6]), .C0(n1650), .Z(I_SREG_SDA_OUT_7__N_205[6]));
    PFUMX mux_1230_i6 (.BLUT(n1624[5]), .ALUT(n1633[5]), .C0(n1650), .Z(I_SREG_SDA_OUT_7__N_205[5]));
    PFUMX mux_1230_i5 (.BLUT(n1624[4]), .ALUT(n1633[4]), .C0(n1650), .Z(I_SREG_SDA_OUT_7__N_205[4]));
    LUT4 i1_2_lut_rep_124_3_lut_4_lut (.A(sh8in_state[2]), .B(sh8in_state[1]), 
         .C(sh8in_state[0]), .D(I_SCL_RISE), .Z(n10118)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_124_3_lut_4_lut.init = 16'h1000;
    LUT4 i2433_4_lut (.A(n597[7]), .B(\shift8in.shift [7]), .C(n10102), 
         .D(n4_adj_541), .Z(I_CTRL_BYTE_7__N_176[7])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2433_4_lut.init = 16'hccca;
    LUT4 i1_2_lut_3_lut_adj_65 (.A(I_SCL_RISE), .B(sh8in_state[0]), .C(sh8in_state[1]), 
         .Z(n4_adj_562)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_65.init = 16'h2020;
    LUT4 i6935_1_lut_2_lut (.A(sh8in_state[2]), .B(sh8in_state[1]), .Z(n8341)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6935_1_lut_2_lut.init = 16'h1111;
    PFUMX i8332 (.BLUT(n9990), .ALUT(n9989), .C0(ST_FSM_STATE[2]), .Z(n15));
    LUT4 i1_3_lut_rep_128 (.A(I_CTRL_BYTE[4]), .B(n9151), .C(I_CTRL_BYTE[6]), 
         .Z(n10122)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_3_lut_rep_128.init = 16'hdfdf;
    PFUMX mux_1230_i4 (.BLUT(n1624[3]), .ALUT(n1633[3]), .C0(n1650), .Z(I_SREG_SDA_OUT_7__N_205[3]));
    LUT4 i1_2_lut_rep_115_4_lut (.A(I_CTRL_BYTE[4]), .B(n9151), .C(I_CTRL_BYTE[6]), 
         .D(I_CTRL_BYTE[0]), .Z(n10109)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_2_lut_rep_115_4_lut.init = 16'hdfff;
    LUT4 n9374_bdd_4_lut_then_4_lut (.A(\RAM[3] [4]), .B(\RAM[2] [4]), .C(\ADD_IN[2]_keep ), 
         .D(n1), .Z(n10175)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n9374_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 mux_733_i4_3_lut (.A(n1049[3]), .B(\shift8in.shift [3]), .C(n5130), 
         .Z(I_SDA_DATA_7__N_184[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_733_i4_3_lut.init = 16'hcaca;
    PFUMX mux_1230_i3 (.BLUT(n1624[2]), .ALUT(n1633[2]), .C0(n1650), .Z(I_SREG_SDA_OUT_7__N_205[2]));
    PFUMX mux_1230_i2 (.BLUT(n1624[1]), .ALUT(n1633[1]), .C0(n1650), .Z(I_SREG_SDA_OUT_7__N_205[1]));
    LUT4 \shift8in.shift_6__keep_bdd_3_lut  (.A(\shift8in.shift [6]), .B(n9766), 
         .C(n10084), .Z(I_CTRL_BYTE_7__N_176[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam \shift8in.shift_6__keep_bdd_3_lut .init = 16'hcaca;
    LUT4 mux_728_i4_4_lut (.A(I_SDA_DATA[3]), .B(n2725[0]), .C(n10089), 
         .D(n9282), .Z(n1049[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_728_i4_4_lut.init = 16'hc0ca;
    LUT4 i2_4_lut_adj_66 (.A(n23_adj_531), .B(n10161), .C(n6_adj_539), 
         .D(FF), .Z(n20_adj_557)) /* synthesis lut_function=(A (B (C+(D)))+!A !(((D)+!C)+!B)) */ ;
    defparam i2_4_lut_adj_66.init = 16'h88c0;
    LUT4 FF_N_476_bdd_4_lut (.A(FF_N_476), .B(I_START_EDGE), .C(FF), .D(ST_FSM_STATE[0]), 
         .Z(n9841)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam FF_N_476_bdd_4_lut.init = 16'haa30;
    LUT4 i1_2_lut_rep_123_4_lut (.A(I_CTRL_BYTE[4]), .B(n9151), .C(I_CTRL_BYTE[6]), 
         .D(I_CTRL_BYTE[0]), .Z(n10117)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_2_lut_rep_123_4_lut.init = 16'hffdf;
    PFUMX mux_1160_i2 (.BLUT(n9072), .ALUT(n9112), .C0(n1562), .Z(ackout_state_1__N_203[1]));
    LUT4 n9374_bdd_4_lut_else_4_lut (.A(\RAM[0] [4]), .B(\ADD_IN[2]_keep ), 
         .C(\RAM[1] [4]), .D(n1), .Z(n10174)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n9374_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i7759_2_lut_3_lut_4_lut (.A(sh8in_state[2]), .B(sh8in_state[1]), 
         .C(reset_n_N_1), .D(ST_FSM_STATE[2]), .Z(n9284)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7759_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_67 (.A(sh8in_state[2]), .B(sh8in_state[1]), 
         .C(n10122), .D(n10164), .Z(n8623)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut_adj_67.init = 16'hffef;
    LUT4 n3309_bdd_4_lut_3_lut_4_lut (.A(sh8in_state[2]), .B(sh8in_state[1]), 
         .C(sh8in_state[0]), .D(I_SCL_RISE), .Z(n10002)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam n3309_bdd_4_lut_3_lut_4_lut.init = 16'h0ff1;
    LUT4 i1_2_lut_rep_169 (.A(sh8in_state[2]), .B(sh8in_state[1]), .C(sh8in_state[0]), 
         .Z(n10163)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_169.init = 16'hfefe;
    LUT4 i25_4_lut_4_lut (.A(sh8in_state[2]), .B(sh8in_state[1]), .C(sh8in_state[0]), 
         .D(sh8in_state[3]), .Z(n14_adj_532)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B+(C+!(D))))) */ ;
    defparam i25_4_lut_4_lut.init = 16'h0188;
    LUT4 i1_2_lut_rep_170 (.A(sh8in_state[3]), .B(sh8in_state[0]), .Z(n10164)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_170.init = 16'hdddd;
    LUT4 i1_3_lut_4_lut_adj_68 (.A(sh8in_state[3]), .B(sh8in_state[0]), 
         .C(n9302), .D(I_SCL_RISE), .Z(n4_adj_563)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_68.init = 16'h0200;
    LUT4 i2_3_lut_rep_150_4_lut (.A(sh8in_state[3]), .B(sh8in_state[0]), 
         .C(sh8in_state[1]), .D(sh8in_state[2]), .Z(n10144)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_3_lut_rep_150_4_lut.init = 16'hffdf;
    LUT4 i11_3_lut_4_lut_4_lut (.A(sh8in_state[3]), .B(sh8in_state[0]), 
         .C(sh8in_state[1]), .D(sh8in_state[2]), .Z(n23)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(C+(D))) */ ;
    defparam i11_3_lut_4_lut_4_lut.init = 16'haaad;
    LUT4 n1_bdd_3_lut_4_lut (.A(sh8in_state[3]), .B(sh8in_state[0]), .C(sh8in_state[1]), 
         .D(sh8in_state[2]), .Z(n9984)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam n1_bdd_3_lut_4_lut.init = 16'h0020;
    LUT4 i8085_2_lut_rep_157_2_lut (.A(sh8in_state[3]), .B(FF), .Z(n10151)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8085_2_lut_rep_157_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_rep_125_3_lut_4_lut_4_lut (.A(sh8in_state[3]), .B(n10152), 
         .C(n10165), .D(FF), .Z(n10119)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_125_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut (.A(ST_FSM_STATE[2]), .B(n2694), .C(reset_n_N_1), .Z(n8585)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 mux_866_i1_4_lut (.A(n10127), .B(n1397), .C(n1399), .D(n20_adj_561), 
         .Z(n1215[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_866_i1_4_lut.init = 16'hc0c5;
    LUT4 i29_4_lut (.A(n10117), .B(n6_adj_539), .C(FF), .D(n10097), 
         .Z(n14_adj_558)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;
    defparam i29_4_lut.init = 16'hac0c;
    LUT4 i1_2_lut_rep_121_3_lut_4_lut_4_lut (.A(sh8in_state[3]), .B(n10152), 
         .C(n10161), .D(FF), .Z(n10115)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_121_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i2_2_lut_rep_171 (.A(n2694), .B(ST_FSM_STATE[0]), .Z(n10165)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_rep_171.init = 16'h2222;
    LUT4 i1_2_lut_rep_143_3_lut_4_lut (.A(n2694), .B(ST_FSM_STATE[0]), .C(reset_n_N_1), 
         .D(ST_FSM_STATE[2]), .Z(n10137)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_143_3_lut_4_lut.init = 16'h0002;
    L6MUX21 ST_FSM_STATE_2__keep_I_0_530_i7 (.D0(n2_adj_564), .D1(n3_adj_565), 
            .SD(n9323), .Z(I_SDA_OUT_OE_N_375)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;
    LUT4 i5345_2_lut_rep_172 (.A(sh8out_state[1]), .B(sh8out_state[2]), 
         .Z(n10166)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5345_2_lut_rep_172.init = 16'heeee;
    LUT4 i2_3_lut_rep_98_4_lut_4_lut (.A(n10143), .B(n9199), .C(n6982), 
         .D(n10158), .Z(n10092)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i2_3_lut_rep_98_4_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_69 (.A(sh8out_state[1]), .B(sh8out_state[2]), 
         .C(I_SCL_FALL), .D(sh8out_state[0]), .Z(n4492)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_69.init = 16'h0010;
    LUT4 i7754_2_lut (.A(n2694), .B(FF), .Z(n9279)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i7754_2_lut.init = 16'h2222;
    LUT4 i5479_2_lut_3_lut_4_lut (.A(sh8out_state[1]), .B(sh8out_state[2]), 
         .C(I_SCL_FALL), .D(sh8out_state[0]), .Z(n6982)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5479_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_173 (.A(sh8out_state[2]), .B(sh8out_state[1]), .C(sh8out_state[0]), 
         .Z(n10167)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(885[5] 1013[12])
    defparam i2_3_lut_rep_173.init = 16'hfefe;
    PFUMX i8327 (.BLUT(n9984), .ALUT(n9983), .C0(FF), .Z(FF_N_476));
    LUT4 i8112_2_lut_rep_159_4_lut_4_lut (.A(sh8out_state[3]), .B(sh8out_state[0]), 
         .C(sh8out_state[1]), .D(sh8out_state[2]), .Z(n10153)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8112_2_lut_rep_159_4_lut_4_lut.init = 16'h0001;
    LUT4 i7756_3_lut (.A(n9178), .B(sh8in_state[3]), .C(sh8in_state[2]), 
         .Z(n239[2])) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(686[5] 839[12])
    defparam i7756_3_lut.init = 16'h1212;
    LUT4 i7905_3_lut (.A(ROReg0[5]), .B(ROReg1[5]), .C(I_REG_ADDR[0]), 
         .Z(n9431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7905_3_lut.init = 16'hcaca;
    LUT4 i2075_3_lut_4_lut_4_lut (.A(sh8out_state[3]), .B(I_RD_OE), .C(n9149), 
         .D(n10167), .Z(I_RD_OE_N_459)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i2075_3_lut_4_lut_4_lut.init = 16'hc0c5;
    PFUMX i7934 (.BLUT(n9458), .ALUT(n9459), .C0(I_REG_ADDR[1]), .Z(n9460));
    LUT4 i2_3_lut_adj_70 (.A(sh8in_state[0]), .B(sh8in_state[1]), .C(I_SCL_RISE), 
         .Z(n9178)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_70.init = 16'h8080;
    LUT4 mux_733_i5_3_lut (.A(n1049[4]), .B(\shift8in.shift [4]), .C(n5130), 
         .Z(I_SDA_DATA_7__N_184[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_733_i5_3_lut.init = 16'hcaca;
    LUT4 mux_728_i5_4_lut (.A(I_SDA_DATA[4]), .B(n2725[1]), .C(n10089), 
         .D(n9282), .Z(n1049[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_728_i5_4_lut.init = 16'hc0ca;
    LUT4 mux_733_i6_3_lut (.A(n1049[5]), .B(\shift8in.shift [5]), .C(n5130), 
         .Z(I_SDA_DATA_7__N_184[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_733_i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_174 (.A(FF), .B(ST_FSM_STATE[0]), .Z(n10168)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_rep_174.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_130_3_lut_4_lut (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .C(sh8in_state[3]), .D(FF), .Z(n10124)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(431[16:35])
    defparam i1_2_lut_rep_130_3_lut_4_lut.init = 16'h00b0;
    LUT4 mux_1069_i1_3_lut_4_lut (.A(I_SCL_FALL), .B(sh8out_state[0]), .C(n1470), 
         .D(n10092), .Z(n1462[0])) /* synthesis lut_function=(!(A (B+(C (D)))+!A ((C (D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1069_i1_3_lut_4_lut.init = 16'h0666;
    PFUMX i4015 (.BLUT(n12), .ALUT(n5532), .C0(ST_FSM_STATE[2]), .Z(I_WR_OP_N_417));
    LUT4 i2270_3_lut_4_lut (.A(sh8in_state[2]), .B(n10121), .C(I_SDA_DEB), 
         .D(\shift8in.shift [6]), .Z(n2725[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i2270_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_728_i6_4_lut (.A(I_SDA_DATA[5]), .B(n2725[2]), .C(n10089), 
         .D(n9282), .Z(n1049[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_728_i6_4_lut.init = 16'hc0ca;
    LUT4 mux_733_i7_3_lut (.A(n1049[6]), .B(\shift8in.shift [6]), .C(n5130), 
         .Z(I_SDA_DATA_7__N_184[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_733_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_92_3_lut_4_lut_4_lut (.A(n10143), .B(n10157), .C(sh8out_state[3]), 
         .D(n10158), .Z(n10086)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_rep_92_3_lut_4_lut_4_lut.init = 16'h0400;
    PFUMX i8313 (.BLUT(n9952), .ALUT(n9951), .C0(n1562), .Z(ackout_state_1__N_203[0]));
    LUT4 i1_4_lut_adj_71 (.A(reset_n_N_1), .B(n10_adj_524), .C(n9284), 
         .D(n4_adj_563), .Z(n9154)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_4_lut_adj_71.init = 16'hefee;
    LUT4 mux_728_i7_4_lut (.A(I_SDA_DATA[6]), .B(n2725[3]), .C(n10089), 
         .D(n9282), .Z(n1049[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_728_i7_4_lut.init = 16'hc0ca;
    LUT4 i7940_3_lut_4_lut_3_lut (.A(FF), .B(ST_FSM_STATE[0]), .C(n2694), 
         .Z(n9302)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i7940_3_lut_4_lut_3_lut.init = 16'hebeb;
    LUT4 i2607_3_lut_4_lut (.A(n10154), .B(n10169), .C(I_SDA_OUT_OE_N_396), 
         .D(I_SDA_OUT_OE), .Z(I_SDA_OUT_OE_N_394)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(351[14] 392[12])
    defparam i2607_3_lut_4_lut.init = 16'hf780;
    LUT4 i1763_4_lut (.A(n1016[7]), .B(\shift8in.shift [7]), .C(n10087), 
         .D(n4_adj_536), .Z(I_SDA_DATA_7__N_184[7])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1763_4_lut.init = 16'hccca;
    LUT4 i5406_2_lut_rep_132 (.A(I_SCL_FALL), .B(sh8out_state[0]), .Z(n10126)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5406_2_lut_rep_132.init = 16'h8888;
    LUT4 i1_2_lut_rep_175 (.A(FF), .B(sh8in_state[3]), .Z(n10169)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_rep_175.init = 16'h4444;
    LUT4 i1_2_lut_rep_131_3_lut_4_lut (.A(FF), .B(sh8in_state[3]), .C(n10170), 
         .D(sh8in_state[2]), .Z(n10125)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_rep_131_3_lut_4_lut.init = 16'h0040;
    LUT4 mux_1060_i1_4_lut_4_lut (.A(I_SCL_FALL), .B(sh8out_state[0]), .C(n10082), 
         .D(n1440), .Z(n1441[0])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(B (C+(D))+!B (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1060_i1_4_lut_4_lut.init = 16'h77c0;
    LUT4 i7924_3_lut (.A(\RAM[1] [11]), .B(\RAM[1] [3]), .C(I_REG_ADDR[0]), 
         .Z(n9450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7924_3_lut.init = 16'hcaca;
    LUT4 mux_1069_i3_4_lut (.A(sh8out_state[2]), .B(n10126), .C(n10083), 
         .D(n9294), .Z(n1462[2])) /* synthesis lut_function=(A (C+!(D))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam mux_1069_i3_4_lut.init = 16'he0ea;
    LUT4 i7903_3_lut (.A(ROReg2[4]), .B(ROReg3[4]), .C(I_REG_ADDR[0]), 
         .Z(n9429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7903_3_lut.init = 16'hcaca;
    LUT4 i5386_2_lut_3_lut_4_lut (.A(n10136), .B(n10162), .C(I_SDA_DEB), 
         .D(n10119), .Z(n2679[0])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i5386_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i163_2_lut_rep_133 (.A(reset_n_N_1), .B(I_STOP_EDGE), .Z(n10127)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(515[2] 518[5])
    defparam i163_2_lut_rep_133.init = 16'heeee;
    LUT4 i1_2_lut_rep_101_3_lut_4_lut (.A(reset_n_N_1), .B(I_STOP_EDGE), 
         .C(n10161), .D(ST_FSM_STATE[2]), .Z(n10095)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(515[2] 518[5])
    defparam i1_2_lut_rep_101_3_lut_4_lut.init = 16'h1000;
    LUT4 i7902_3_lut (.A(ROReg0[4]), .B(ROReg1[4]), .C(I_REG_ADDR[0]), 
         .Z(n9428)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7902_3_lut.init = 16'hcaca;
    LUT4 i7900_3_lut (.A(ROReg2[3]), .B(ROReg3[3]), .C(I_REG_ADDR[0]), 
         .Z(n9426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7900_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_72 (.A(sh8in_state[3]), .B(n9284), .C(n13), .D(sh8in_state[0]), 
         .Z(n9247)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_72.init = 16'h2000;
    LUT4 i5397_2_lut_rep_134_3_lut_4_lut (.A(I_START_EDGE_CNT[0]), .B(I_START_EDGE_CNT[1]), 
         .C(sh8in_state[3]), .D(FF), .Z(n10128)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(431[16:35])
    defparam i5397_2_lut_rep_134_3_lut_4_lut.init = 16'hfff4;
    LUT4 i7899_3_lut (.A(ROReg0[3]), .B(ROReg1[3]), .C(I_REG_ADDR[0]), 
         .Z(n9425)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7899_3_lut.init = 16'hcaca;
    LUT4 i3537_2_lut_rep_179 (.A(ST_FSM_STATE[0]), .B(n2694), .Z(n10173)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i3537_2_lut_rep_179.init = 16'h6666;
    LUT4 i2_2_lut_3_lut_3_lut_4_lut (.A(ST_FSM_STATE[0]), .B(n2694), .C(FF), 
         .D(sh8in_state[3]), .Z(n8706)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2_2_lut_3_lut_3_lut_4_lut.init = 16'h0006;
    LUT4 i1615_2_lut (.A(I_SDA_DEB_N_361), .B(reset_n_N_1), .Z(n3114)) /* synthesis lut_function=(A+(B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(214[5] 238[8])
    defparam i1615_2_lut.init = 16'heeee;
    LUT4 i7897_3_lut (.A(ROReg2[2]), .B(ROReg3[2]), .C(I_REG_ADDR[0]), 
         .Z(n9423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7897_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_73 (.A(ST_FSM_STATE[0]), .B(n2694), .C(sh8in_state[3]), 
         .D(FF), .Z(n4560)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_3_lut_4_lut_adj_73.init = 16'h0060;
    LUT4 i8068_2_lut_2_lut (.A(I_SDA_DEB_1), .B(I_SDA_DEB), .Z(I_SDA_LOW)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8068_2_lut_2_lut.init = 16'h1111;
    LUT4 i7896_3_lut (.A(ROReg0[2]), .B(ROReg1[2]), .C(I_REG_ADDR[0]), 
         .Z(n9422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7896_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_74 (.A(n4_adj_566), .B(n10094), .C(n6982), .D(sh8out_state[3]), 
         .Z(n1470)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_4_lut_adj_74.init = 16'h0c88;
    LUT4 i1_2_lut_adj_75 (.A(sh8out_state[2]), .B(sh8out_state[1]), .Z(n4_adj_566)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/top.v(82[11] 111[2])
    defparam i1_2_lut_adj_75.init = 16'h8888;
    LUT4 i8065_2_lut_2_lut (.A(I_SCL_DEB_1), .B(I_SCL_DEB), .Z(I_SCL_LOW)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8065_2_lut_2_lut.init = 16'h1111;
    LUT4 i7894_3_lut (.A(ROReg2[1]), .B(ROReg3[1]), .C(I_REG_ADDR[0]), 
         .Z(n9420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7894_3_lut.init = 16'hcaca;
    LUT4 i2933_4_lut (.A(\shift8in.shift [1]), .B(I_SDA_DEB), .C(n9236), 
         .D(n9242), .Z(\shift8in.shift_7__N_213 [1])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2933_4_lut.init = 16'hcaaa;
    PFUMX i8311 (.BLUT(n9949), .ALUT(n9948), .C0(n1650), .Z(I_SREG_SDA_OUT_7__N_205[0]));
    PFUMX i8304 (.BLUT(n9938), .ALUT(n9937), .C0(ST_FSM_STATE[0]), .Z(n9939));
    LUT4 i7893_3_lut (.A(ROReg0[1]), .B(ROReg1[1]), .C(I_REG_ADDR[0]), 
         .Z(n9419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7893_3_lut.init = 16'hcaca;
    PFUMX mux_474_i3 (.BLUT(n630[2]), .ALUT(n2739[2]), .C0(n10102), .Z(I_CTRL_BYTE_7__N_176[2]));
    LUT4 i7891_3_lut (.A(\RAM[2] [0]), .B(\RAM[3] [0]), .C(I_REG_ADDR[1]), 
         .Z(n9417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7891_3_lut.init = 16'hcaca;
    LUT4 i7890_3_lut (.A(\RAM[2] [8]), .B(\RAM[3] [8]), .C(I_REG_ADDR[1]), 
         .Z(n9416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7890_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_99_4_lut_4_lut (.A(n10145), .B(n10124), .C(n10163), 
         .D(n10171), .Z(n10093)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2_3_lut_rep_99_4_lut_4_lut.init = 16'h0004;
    PFUMX mux_474_i2 (.BLUT(n630[1]), .ALUT(n2739[1]), .C0(n10102), .Z(I_CTRL_BYTE_7__N_176[1]));
    LUT4 i1_2_lut_rep_93_3_lut_4_lut_4_lut (.A(n10145), .B(n10146), .C(n14_adj_532), 
         .D(n10171), .Z(n10087)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_rep_93_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_adj_76 (.A(reset_n_N_1), .B(sh8in_state[2]), .C(n8708), 
         .Z(n9242)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(686[5] 839[12])
    defparam i1_3_lut_adj_76.init = 16'h4040;
    PFUMX ST_FSM_STATE_2__keep_I_0_543_i7 (.BLUT(n3_adj_540), .ALUT(n6_adj_555), 
          .C0(ST_FSM_STATE[2]), .Z(I_RD_OP_N_427)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;
    LUT4 i2935_4_lut (.A(\shift8in.shift [2]), .B(I_SDA_DEB), .C(sh8in_state[1]), 
         .D(n9221), .Z(\shift8in.shift_7__N_213 [2])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2935_4_lut.init = 16'hcaaa;
    PFUMX ST_FSM_STATE_2__keep_I_0_530_i2 (.BLUT(I_SDA_OUT_OE_N_394), .ALUT(I_SDA_OUT_OE_N_383), 
          .C0(ST_FSM_STATE[0]), .Z(n2_adj_564)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;
    LUT4 i2937_4_lut (.A(\shift8in.shift [3]), .B(I_SDA_DEB), .C(n9242), 
         .D(n9252), .Z(\shift8in.shift_7__N_213 [3])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2937_4_lut.init = 16'hcaaa;
    LUT4 i2939_4_lut (.A(\shift8in.shift [4]), .B(I_SDA_DEB), .C(sh8in_state[1]), 
         .D(n9221), .Z(\shift8in.shift_7__N_213 [4])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2939_4_lut.init = 16'hacaa;
    PFUMX i8300 (.BLUT(n9935), .ALUT(n9934), .C0(ST_FSM_STATE[0]), .Z(n9936));
    LUT4 i2926_4_lut (.A(\shift8in.shift [5]), .B(I_SDA_DEB), .C(n6952), 
         .D(n9236), .Z(\shift8in.shift_7__N_213 [5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2926_4_lut.init = 16'hacaa;
    LUT4 n9842_bdd_3_lut (.A(n9842), .B(n9840), .C(ST_FSM_STATE[2]), .Z(FF_N_465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9842_bdd_3_lut.init = 16'hcaca;
    LUT4 i5450_4_lut (.A(n10188), .B(reset_n_N_1), .C(sh8in_state[2]), 
         .D(sh8in_state[3]), .Z(n6952)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5450_4_lut.init = 16'hfffe;
    LUT4 i7876_3_lut (.A(\RAM[2] [1]), .B(\RAM[3] [1]), .C(I_REG_ADDR[1]), 
         .Z(n9402)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7876_3_lut.init = 16'hcaca;
    LUT4 i7875_3_lut (.A(\RAM[2] [9]), .B(\RAM[3] [9]), .C(I_REG_ADDR[1]), 
         .Z(n9401)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7875_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_112_3_lut_4_lut (.A(n10151), .B(n10137), .C(n10162), 
         .D(n10136), .Z(n10106)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_112_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_94_3_lut_4_lut_4_lut (.A(n10145), .B(n10146), .C(n23), 
         .D(n10171), .Z(n10088)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_rep_94_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_95_3_lut_4_lut_4_lut (.A(n10145), .B(n10128), .C(n14_adj_535), 
         .D(n10171), .Z(n10089)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_rep_95_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i2941_4_lut (.A(\shift8in.shift [6]), .B(I_SDA_DEB), .C(n6952), 
         .D(n4_adj_562), .Z(\shift8in.shift_7__N_213 [6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2941_4_lut.init = 16'hacaa;
    LUT4 mux_474_i6_3_lut_3_lut (.A(n10084), .B(\shift8in.shift [5]), .C(n630[5]), 
         .Z(I_CTRL_BYTE_7__N_176[5])) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam mux_474_i6_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_rep_102_3_lut_4_lut_4_lut (.A(n10145), .B(n10171), .C(n10146), 
         .D(sh8in_state[3]), .Z(n10096)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_rep_102_3_lut_4_lut_4_lut.init = 16'h0001;
    PFUMX i7937 (.BLUT(n9461), .ALUT(n9462), .C0(I_REG_ADDR[1]), .Z(n9463));
    LUT4 i2943_4_lut (.A(\shift8in.shift [7]), .B(I_SDA_DEB), .C(n6952), 
         .D(n9252), .Z(\shift8in.shift_7__N_213 [7])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2943_4_lut.init = 16'hacaa;
    LUT4 mux_474_i5_3_lut_3_lut (.A(n10084), .B(\shift8in.shift [4]), .C(n630[4]), 
         .Z(I_CTRL_BYTE_7__N_176[4])) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam mux_474_i5_3_lut_3_lut.init = 16'he4e4;
    PFUMX i62 (.BLUT(n8545), .ALUT(n8623), .C0(n10159), .Z(n48));
    LUT4 i7864_3_lut (.A(\RAM[2] [2]), .B(\RAM[3] [2]), .C(I_REG_ADDR[1]), 
         .Z(n9390)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7864_3_lut.init = 16'hcaca;
    LUT4 i7863_3_lut (.A(\RAM[2] [10]), .B(\RAM[3] [10]), .C(I_REG_ADDR[1]), 
         .Z(n9389)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7863_3_lut.init = 16'hcaca;
    LUT4 i28_4_lut_adj_77 (.A(I_RD_VAL[1]), .B(n20), .C(n229), .D(n72), 
         .Z(I_RD_VAL_7__N_317[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i28_4_lut_adj_77.init = 16'hfaca;
    LUT4 i8089_2_lut_rep_136 (.A(reset_n_N_1), .B(n9509), .Z(n10130)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i8089_2_lut_rep_136.init = 16'h4444;
    LUT4 mux_474_i4_3_lut_3_lut (.A(n10084), .B(\shift8in.shift [3]), .C(n630[3]), 
         .Z(I_CTRL_BYTE_7__N_176[3])) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam mux_474_i4_3_lut_3_lut.init = 16'he4e4;
    LUT4 i61_3_lut (.A(n80), .B(n9421), .C(I_REG_ADDR[3]), .Z(n72)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i61_3_lut.init = 16'hcaca;
    LUT4 i28_4_lut_adj_78 (.A(I_RD_VAL[2]), .B(n20), .C(n229), .D(n72_adj_567), 
         .Z(I_RD_VAL_7__N_317[2])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i28_4_lut_adj_78.init = 16'hfaca;
    LUT4 i5377_2_lut_3_lut (.A(reset_n_N_1), .B(n9509), .C(I_SDA_DATA[7]), 
         .Z(n960[7])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i5377_2_lut_3_lut.init = 16'h4040;
    LUT4 i7852_3_lut (.A(\RAM[2] [3]), .B(\RAM[3] [3]), .C(I_REG_ADDR[1]), 
         .Z(n9378)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7852_3_lut.init = 16'hcaca;
    LUT4 ST_FSM_STATE_2__keep_I_0_587_i7_4_lut (.A(RFF), .B(n10156), .C(n7_adj_568), 
         .D(n2694), .Z(RFF_N_488)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam ST_FSM_STATE_2__keep_I_0_587_i7_4_lut.init = 16'hca0a;
    LUT4 i61_3_lut_adj_79 (.A(n80_adj_569), .B(n9424), .C(I_REG_ADDR[3]), 
         .Z(n72_adj_567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i61_3_lut_adj_79.init = 16'hcaca;
    LUT4 i7851_3_lut (.A(\RAM[2] [11]), .B(\RAM[3] [11]), .C(I_REG_ADDR[1]), 
         .Z(n9377)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7851_3_lut.init = 16'hcaca;
    LUT4 i28_4_lut_adj_80 (.A(I_RD_VAL[3]), .B(n20), .C(n229), .D(n72_adj_570), 
         .Z(I_RD_VAL_7__N_317[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i28_4_lut_adj_80.init = 16'hfaca;
    LUT4 i1_4_lut_adj_81 (.A(ST_FSM_STATE[2]), .B(n9207), .C(n10156), 
         .D(n2694), .Z(n7_adj_568)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_81.init = 16'h5044;
    LUT4 i7846_3_lut (.A(\RAM[1] [8]), .B(\RAM[1] [0]), .C(I_REG_ADDR[0]), 
         .Z(n9372)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7846_3_lut.init = 16'hcaca;
    LUT4 i61_3_lut_adj_82 (.A(n80_adj_571), .B(n9427), .C(I_REG_ADDR[3]), 
         .Z(n72_adj_570)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i61_3_lut_adj_82.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_83 (.A(n10141), .B(I_REG_ADDR[1]), .C(reset_n_N_1), 
         .D(I_REG_ADDR[2]), .Z(CLOCK_keep_enable_56)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_83.init = 16'hf0f2;
    LUT4 i7845_3_lut (.A(\RAM[0] [8]), .B(\RAM[0] [0]), .C(I_REG_ADDR[0]), 
         .Z(n9371)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7845_3_lut.init = 16'hcaca;
    LUT4 i28_4_lut_adj_84 (.A(I_RD_VAL[4]), .B(n20), .C(n229), .D(n72_adj_572), 
         .Z(I_RD_VAL_7__N_317[4])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i28_4_lut_adj_84.init = 16'hfaca;
    LUT4 i1_2_lut_rep_107_3_lut_4_lut (.A(n10152), .B(n10161), .C(n14_adj_535), 
         .D(n10151), .Z(n10101)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_107_3_lut_4_lut.init = 16'h4000;
    LUT4 i7840_3_lut (.A(ROReg2[0]), .B(ROReg3[0]), .C(I_REG_ADDR[0]), 
         .Z(n9366)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7840_3_lut.init = 16'hcaca;
    LUT4 i7839_3_lut (.A(ROReg0[0]), .B(ROReg1[0]), .C(I_REG_ADDR[0]), 
         .Z(n9365)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7839_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_108_3_lut_4_lut (.A(FF), .B(n10152), .C(n14_adj_532), 
         .D(n10161), .Z(n10102)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_108_3_lut_4_lut.init = 16'h1000;
    LUT4 i61_3_lut_adj_85 (.A(n80_adj_573), .B(n9430), .C(I_REG_ADDR[3]), 
         .Z(n72_adj_572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i61_3_lut_adj_85.init = 16'hcaca;
    PFUMX mux_474_i1 (.BLUT(n630[0]), .ALUT(n2739[0]), .C0(n10102), .Z(I_CTRL_BYTE_7__N_176[0]));
    LUT4 i28_4_lut_adj_86 (.A(I_RD_VAL[5]), .B(n20), .C(n229), .D(n72_adj_574), 
         .Z(I_RD_VAL_7__N_317[5])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i28_4_lut_adj_86.init = 16'hfaca;
    LUT4 i4_4_lut_adj_87 (.A(I_CTRL_BYTE[7]), .B(I_CTRL_BYTE[5]), .C(I_CTRL_BYTE[1]), 
         .D(n6_adj_575), .Z(n9151)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_87.init = 16'hfffe;
    LUT4 i7837_3_lut (.A(\RAM[2] [4]), .B(\RAM[3] [4]), .C(I_REG_ADDR[1]), 
         .Z(n9363)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7837_3_lut.init = 16'hcaca;
    PFUMX mux_460_i8 (.BLUT(n541[7]), .ALUT(n2690[0]), .C0(n10099), .Z(n597[7]));
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_88 (.A(I_REG_ADDR[2]), .B(n10140), 
         .C(I_REG_ADDR[1]), .D(reset_n_N_1), .Z(CLOCK_keep_enable_64)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_88.init = 16'hff01;
    LUT4 i1_2_lut_rep_117_3_lut_4_lut (.A(n10152), .B(n10161), .C(n10163), 
         .D(n10169), .Z(n10111)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_117_3_lut_4_lut.init = 16'h0400;
    LUT4 i7836_3_lut (.A(\RAM[2] [12]), .B(\RAM[3] [12]), .C(I_REG_ADDR[1]), 
         .Z(n9362)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7836_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_rep_139 (.A(n2694), .B(ST_FSM_STATE[0]), .C(ST_FSM_STATE[2]), 
         .D(I_START_EDGE), .Z(n10133)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+!(D))))) */ ;
    defparam i1_4_lut_rep_139.init = 16'h4140;
    LUT4 i1_2_lut_adj_89 (.A(I_CTRL_BYTE[2]), .B(I_CTRL_BYTE[3]), .Z(n6_adj_575)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_89.init = 16'heeee;
    PFUMX mux_733_i2 (.BLUT(n1049[1]), .ALUT(n2730[1]), .C0(n10087), .Z(I_SDA_DATA_7__N_184[1]));
    LUT4 I_SCL_HIGH_keep_I_0_538_2_lut_rep_140 (.A(I_SCL_HIGH), .B(I_SDA_RISE), 
         .Z(n10134)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(268[18:41])
    defparam I_SCL_HIGH_keep_I_0_538_2_lut_rep_140.init = 16'h8888;
    LUT4 i61_3_lut_adj_90 (.A(n80_adj_576), .B(n9433), .C(I_REG_ADDR[3]), 
         .Z(n72_adj_574)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i61_3_lut_adj_90.init = 16'hcaca;
    LUT4 i7828_3_lut (.A(\RAM[2] [5]), .B(\RAM[3] [5]), .C(I_REG_ADDR[1]), 
         .Z(n9354)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7828_3_lut.init = 16'hcaca;
    PFUMX i8431 (.BLUT(n10222), .ALUT(n10223), .C0(n3), .Z(n10224));
    LUT4 i5255_2_lut (.A(I_SDA_DEB), .B(I_SDA_DEB_N_360), .Z(I_SDA_DEB_N_358)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(233[14] 237[12])
    defparam i5255_2_lut.init = 16'h8888;
    PFUMX mux_733_i3 (.BLUT(n1049[2]), .ALUT(n2730[2]), .C0(n10087), .Z(I_SDA_DATA_7__N_184[2]));
    PFUMX i8429 (.BLUT(n10219), .ALUT(n10220), .C0(n3), .Z(n10221));
    LUT4 i28_4_lut_adj_91 (.A(I_RD_VAL[6]), .B(n20), .C(n229), .D(n72_adj_578), 
         .Z(I_RD_VAL_7__N_317[6])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i28_4_lut_adj_91.init = 16'hfaca;
    PFUMX mux_733_i1 (.BLUT(n1049[0]), .ALUT(n2730[0]), .C0(n10087), .Z(I_SDA_DATA_7__N_184[0]));
    PFUMX i8427 (.BLUT(n10216), .ALUT(n10217), .C0(n3), .Z(n10218));
    PFUMX mux_719_i8 (.BLUT(n960[7]), .ALUT(n2711[0]), .C0(n10088), .Z(n1016[7]));
    LUT4 i61_3_lut_adj_92 (.A(n80_adj_579), .B(n9436), .C(I_REG_ADDR[3]), 
         .Z(n72_adj_578)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i61_3_lut_adj_92.init = 16'hcaca;
    PFUMX ST_FSM_STATE_2__keep_I_0_530_i3 (.BLUT(n1_adj_534), .ALUT(n6_adj_533), 
          .C0(ST_FSM_STATE[2]), .Z(n3_adj_565)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;
    PFUMX i8425 (.BLUT(n10213), .ALUT(n10214), .C0(n3), .Z(n10215));
    LUT4 i28_4_lut_adj_93 (.A(I_RD_VAL[7]), .B(n20), .C(n229), .D(n72_adj_580), 
         .Z(I_RD_VAL_7__N_317[7])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i28_4_lut_adj_93.init = 16'hfaca;
    PFUMX i8290 (.BLUT(n9922), .ALUT(n9921), .C0(ST_FSM_STATE[0]), .Z(n9923));
    PFUMX i8423 (.BLUT(n10210), .ALUT(n10211), .C0(n3), .Z(n10212));
    LUT4 i7827_3_lut (.A(\RAM[2] [13]), .B(\RAM[3] [13]), .C(I_REG_ADDR[1]), 
         .Z(n9353)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7827_3_lut.init = 16'hcaca;
    PFUMX i8421 (.BLUT(n10207), .ALUT(n10208), .C0(n3), .Z(n10209));
    PFUMX i7184 (.BLUT(n8706), .ALUT(n8707), .C0(ST_FSM_STATE[2]), .Z(n8708));
    LUT4 I_SCL_HIGH_keep_I_0_2_lut_rep_141 (.A(I_SCL_HIGH), .B(I_SDA_FALL), 
         .Z(n10135)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(259[13:36])
    defparam I_SCL_HIGH_keep_I_0_2_lut_rep_141.init = 16'h8888;
    PFUMX mux_119_Mux_1_i15 (.BLUT(n4426), .ALUT(n14_adj_546), .C0(sh8in_state[3]), 
          .Z(n239[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=111 */ ;
    PFUMX i8419 (.BLUT(n10204), .ALUT(n10205), .C0(n3), .Z(n10206));
    PFUMX i2025 (.BLUT(n4560), .ALUT(n9181), .C0(ST_FSM_STATE[2]), .Z(n3526));
    LUT4 i2923_4_lut (.A(\shift8in.shift [0]), .B(I_SDA_DEB), .C(n9296), 
         .D(n8_adj_560), .Z(\shift8in.shift_7__N_213 [0])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam i2923_4_lut.init = 16'hacaa;
    PFUMX i8278 (.BLUT(n9896), .ALUT(n6_adj_542), .C0(ST_FSM_STATE[2]), 
          .Z(n9897));
    PFUMX i8417 (.BLUT(n10201), .ALUT(n10202), .C0(n3), .Z(n10203));
    LUT4 i7771_2_lut (.A(reset_n_N_1), .B(sh8in_state[1]), .Z(n9296)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7771_2_lut.init = 16'heeee;
    PFUMX i8415 (.BLUT(n10198), .ALUT(n10199), .C0(n3), .Z(n10200));
    LUT4 i5260_3_lut_4_lut_4_lut (.A(I_SCL_HIGH), .B(I_SDA_FALL), .C(I_START_FF), 
         .D(I_SDA_RISE), .Z(I_START_FF_N_434)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (C)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(259[13:36])
    defparam i5260_3_lut_4_lut_4_lut.init = 16'hd8f8;
    LUT4 i2304_4_lut_4_lut (.A(n10093), .B(n10136), .C(I_SDA_DEB), .D(\shift8in.shift [1]), 
         .Z(n2730[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i2304_4_lut_4_lut.init = 16'hfb40;
    PFUMX i8413 (.BLUT(n10195), .ALUT(n10196), .C0(n3), .Z(n10197));
    LUT4 i1809_2_lut_rep_142 (.A(I_SCL_RISE), .B(sh8in_state[0]), .Z(n10136)) /* synthesis lut_function=(A (B)) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1809_2_lut_rep_142.init = 16'h8888;
    PFUMX i8411 (.BLUT(n10192), .ALUT(n10193), .C0(n3), .Z(n10194));
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_94 (.A(I_REG_ADDR[2]), .B(n10140), 
         .C(I_REG_ADDR[1]), .D(reset_n_N_1), .Z(CLOCK_keep_enable_42)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(1081[13] 1100[20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_94.init = 16'hff10;
    PFUMX i8276 (.BLUT(n9894), .ALUT(n9893), .C0(ST_FSM_STATE[0]), .Z(n9895));
    PFUMX i8409 (.BLUT(n10189), .ALUT(n10190), .C0(n3), .Z(n10191));
    LUT4 i61_3_lut_adj_95 (.A(n80_adj_581), .B(n9439), .C(I_REG_ADDR[3]), 
         .Z(n72_adj_580)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(98[29:39])
    defparam i61_3_lut_adj_95.init = 16'hcaca;
    PFUMX i8407 (.BLUT(n10186), .ALUT(n10187), .C0(n10146), .Z(n10188));
    LUT4 i1_2_lut_3_lut_adj_96 (.A(I_SCL_RISE), .B(sh8in_state[0]), .C(sh8in_state[1]), 
         .Z(n9236)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i1_2_lut_3_lut_adj_96.init = 16'h8080;
    PFUMX i8405 (.BLUT(n10183), .ALUT(n10184), .C0(n3), .Z(n10185));
    LUT4 mux_1074_i3_3_lut_4_lut_4_lut (.A(n10092), .B(n1462[2]), .C(n1470), 
         .D(n10126), .Z(sh8out_state_3__N_195[2])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam mux_1074_i3_3_lut_4_lut_4_lut.init = 16'h0c5c;
    LUT4 i2921_2_lut_3_lut (.A(I_SCL_RISE), .B(sh8in_state[0]), .C(sh8in_state[1]), 
         .Z(n4426)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/andy/workdir/MXO2_test/I2C_SLAVE.v(316[5] 513[12])
    defparam i2921_2_lut_3_lut.init = 16'h7878;
    LUT4 i7819_3_lut (.A(\RAM[2] [6]), .B(\RAM[3] [6]), .C(I_REG_ADDR[1]), 
         .Z(n9345)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7819_3_lut.init = 16'hcaca;
    LUT4 i7818_3_lut (.A(\RAM[2] [14]), .B(\RAM[3] [14]), .C(I_REG_ADDR[1]), 
         .Z(n9344)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7818_3_lut.init = 16'hcaca;
    PFUMX i8403 (.BLUT(n10180), .ALUT(n10181), .C0(n3), .Z(n10182));
    L6MUX21 i85 (.D0(n9445), .D1(n9403), .SD(I_REG_ADDR[2]), .Z(n80));
    L6MUX21 i85_adj_97 (.D0(n9448), .D1(n9391), .SD(I_REG_ADDR[2]), .Z(n80_adj_569));
    L6MUX21 i85_adj_98 (.D0(n9451), .D1(n9379), .SD(I_REG_ADDR[2]), .Z(n80_adj_571));
    L6MUX21 i84 (.D0(n9373), .D1(n9418), .SD(I_REG_ADDR[2]), .Z(n79));
    L6MUX21 i85_adj_99 (.D0(n9454), .D1(n9364), .SD(I_REG_ADDR[2]), .Z(n80_adj_573));
    L6MUX21 i85_adj_100 (.D0(n9457), .D1(n9355), .SD(I_REG_ADDR[2]), .Z(n80_adj_576));
    L6MUX21 i85_adj_101 (.D0(n9460), .D1(n9346), .SD(I_REG_ADDR[2]), .Z(n80_adj_579));
    L6MUX21 i85_adj_102 (.D0(n9463), .D1(n9337), .SD(I_REG_ADDR[2]), .Z(n80_adj_581));
    PFUMX i7811 (.BLUT(n9335), .ALUT(n9336), .C0(I_REG_ADDR[0]), .Z(n9337));
    LUT4 i1_2_lut_rep_111_3_lut_4_lut (.A(n10152), .B(n10165), .C(n14_adj_535), 
         .D(n10151), .Z(n10105)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_111_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_119_3_lut_4_lut (.A(n10152), .B(n10165), .C(n10163), 
         .D(n10169), .Z(n10113)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_119_3_lut_4_lut.init = 16'h0400;
    PFUMX i7931 (.BLUT(n9455), .ALUT(n9456), .C0(I_REG_ADDR[1]), .Z(n9457));
    PFUMX i8401 (.BLUT(n10177), .ALUT(n10178), .C0(n3), .Z(n10179));
    LUT4 i2719_4_lut_4_lut (.A(n10093), .B(n10121), .C(I_SDA_DEB), .D(\shift8in.shift [2]), 
         .Z(n2730[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i2719_4_lut_4_lut.init = 16'hfb40;
    PFUMX i8399 (.BLUT(n10174), .ALUT(n10175), .C0(n3), .Z(n10176));
    LUT4 i1_2_lut_rep_109_3_lut_4_lut (.A(FF), .B(n10152), .C(n14_adj_532), 
         .D(n10165), .Z(n10103)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_109_3_lut_4_lut.init = 16'h1000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

