module  top
(
    clk_in,     //Input Clock
    reset_n,      // Reset Input
	i2c_scl,
	i2c_sda,
	rd_en,
	paddr,
	pdata,
	
    IDLE_S,
    READCTRL_S,
	READREG_S,
    READ_S,
    WRITE_S,
	STOP_S,
	
	debug,
    clk_out_1,  // Output Clock 1
	clk_out_2   // Output Clock 2
);

//-----------INOUT Ports---------------
inout   i2c_sda;
wire    i2c_sda /* synthesis syn_keep = 1 */;
//-----------Input Ports---------------
input   clk_in;
input   reset_n;
input   i2c_scl;
input   rd_en;
input   [2:0]    paddr;
//-----------Output Ports---------------
output  clk_out_1;
output  clk_out_2;
output  [15:0]   pdata;
output  debug;

//output    I_SDA_DEB;
//output    I_SCL_DEB;
//output    I_SDA_DEB_1;
//output    I_SCL_DEB_1;
//output    I_SDA_OUT_OE;
output    IDLE_S;
output    READCTRL_S;
output	  READREG_S;
output    READ_S;
output    WRITE_S;
output	  STOP_S;

wire    debug;

wire    clk_out_1;
wire    clk_out_2;
wire    clk_out_1_pre;
wire    clk_out_2_pre;

wire    reset = ~ reset_n;

my_pll my_pll_inst (.CLKI(clk_in), .CLKOP(clk_out_1_pre), .CLKOS(clk_out_2_pre)) /* synthesis syn_noprune=1 */;

clk_div #
(
  .N    (1000)
) clk_div_inst_1
(
  .clk_in  (clk_out_1_pre),
  .reset   (reset),
  .clk_out (clk_out_1)
)/* synthesis syn_noprune=1 */;

clk_div #
(
  .N    (1000)
) clk_div_inst_2
(
  .clk_in  (clk_out_2_pre),
  .reset   (reset),
  .clk_out (clk_out_2)
)/* synthesis syn_noprune=1 */;


I2C_SLAVE U_I2C_SLAVE
(      
    .CLOCK                      (clk_out_2_pre),
    .RESET                      (reset),
	.SCL                        (i2c_scl),      // 100kHz for i2c
	.SDA                        (i2c_sda),
    .RD_EN                      (rd_en),
    .ADD_IN                     (paddr), 
    .DAT_OUT                    (pdata),
	
//	.I_SDA_DEB					(I_SDA_DEB),
//    .I_SCL_DEB					(I_SCL_DEB),
//    .I_SDA_DEB_1				(I_SDA_DEB_1),
//    .I_SCL_DEB_1				(I_SCL_DEB_1),
//	.I_SDA_OUT_OE				(I_SDA_OUT_OE),
	
	.IDLE_S						(IDLE_S),
    .READCTRL_S					(READCTRL_S),
	.READREG_S					(READREG_S),
    .READ_S						(READ_S),
    .WRITE_S					(WRITE_S),
	.STOP_S						(STOP_S),
	
	.debug                      (debug)
    
//    .MCLK_SPEED                 (MCLK_SPEED),                                    // 和rx_decoder模块等连接
//    .MCLK_MODE                  (MCLK_MODE),                                     // 和rx_decoder模块等连接
//    .ROWS_DELAY                 (ROWS_DELAY),                                    // 和rx_decoder模块等连接
//    .IDLE_MODE                  (IDLE_MODE)                                      // 和rx_decoder模块等连接
);

endmodule