//      Author:lhj                                                              //
//                                                                              //
//          ALINX(shanghai) Technology Co.,Ltd                                  //
//          heijin                                                              //
//     WEB: http://www.alinx.com/                                               //
//     BBS: http://www.heijin.org/                                              //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// Copyright (c) 2017,ALINX(shanghai) Technology Co.,Ltd                        //
//                    All rights reserved                                       //
//                                                                              //
// This source file may be used and distributed without restriction provided    //
// that this copyright statement is not removed from the file and that any      //
// derivative work contains the original copyright notice and the associated    //
// disclaimer.                                                                  //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

//================================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//2019/07/31                   1.0          Original
//*******************************************************************************/
module top
(
    input   wire            sys_clk_n   ,//System differential clock
    input   wire            sys_clk_p   ,
    input   wire            rst_n       ,//system reset
    input   wire            i2c_scl     ,
    inout   wire            i2c_sda     ,
    output  wire            test
);

wire            clk                     ;
IBUFDS   sys_clk_ibufds(
    .O(clk          ),
    .I(sys_clk_p    ),
    .IB(sys_clk_n   )
);

wire            reset                   ;
assign          reset = ~ rst_n         ;

wire                                clk_50MHz;
clk_wiz_0 clk_refm0
(
    .clk_out1                       (clk_50MHz              ),      // output clk_out1
    .resetn                         (rst_n                  ),      // input reset
    .locked                         (                       ),      // output locked
    .clk_in1                        (clk                    )       // input clk_in1
); 
assign test = clk_50MHz;

I2C_SLAVE U_I2C_SLAVE
(      
    .CLOCK                      (clk_50MHz),
    .RESET                      (reset),
	.SCL                        (i2c_scl),      // 100kHz for i2c
	.SDA                        (i2c_sda),
    .RD_EN                      (),
    .ADD_IN                     (), 
    .DAT_OUT                    ()
);

endmodule
