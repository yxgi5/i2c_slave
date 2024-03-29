// clk_div_5_5_tb.v
// Testbench

`timescale 1ns/ 1ns
//`define CheckByteNum 6000
//`ifndef xx
//`define xx yy // or parameter xx = yy;
//`endif
//`undef XX

module TOP_tb();

reg     rst;
reg     clk;   // 180MHz sampling clock
wire    sda;
reg     scl;
reg     sda_r;
reg     oe;

wire [7:0]  myReg0;
wire [7:0]  myReg1;

I2C_SLAVE
#(
    .I2C_SLAVE_ADDR (8'h58),
    .I2C_SLAVE_REG_MODE (2'b10),
    .I2C_SLAVE_DAT_MODE (2'b10)
)UUT
(
  .CLOCK(clk),
  .RESET(rst),
  .SDA(sda),
  .SCL(scl)
);

initial
begin
    clk = 1;
    rst = 1;
    scl = 1;
    oe  = 0;
    sda_r = 1;

    #5000;
    rst = 0;

    #1000;
    oe  = 1;
    #2000;
////////////////////////////////////////////////////////////////////

    // start
    sda_r=1;#1000;scl=1;#1000;sda_r=0;#2000;scl=0;#4000;
    
    //8'b01011000=0x58
    sda_r=0;
    #2000;

    // pos 1 , 前面那个sda_r=1;
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=1;
    #2000;

    // pos 2
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=1;
    #2000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=1;
    #2000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    oe  = 0;
    #2000;

    // ack
    scl=1;
    #4000;
    scl=0;
    #4000;

    #4000;
    #4000;
//////////////////////
    // 8'b00000100=0x00
    #1000;
    oe  = 1;
    #2000;
    sda_r=0;
    #2000;

    // pos 1 , 前面那个sda_r=1;
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;


    // pos 2
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    oe  = 0;
    #2000;

    // ack
    scl=1;
    #4000;
    scl=0;
    #4000;
//////////////////////
    // 8'b00000100=0x00
    #1000;
    oe  = 1;
    #2000;
    sda_r=0;
    #2000;

    // pos 1 , 前面那个sda_r=1;
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;


    // pos 2
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    oe  = 0;
    #2000;

    // ack
    scl=1;
    #4000;
    scl=0;
    #4000;
//////////////////////
    // 8'b00000100=0x00
    #1000;
    oe  = 1;
    #2000;
    sda_r=0;
    #2000;

    // pos 1 , 前面那个sda_r=1;
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;


    // pos 2
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    oe  = 0;
    #2000;

    // ack
    scl=1;
    #4000;
    scl=0;
    #4000;
/////////////////////
    // 8'b00000011=0x03
    #1000;
    oe  = 1;
    #2000;
    sda_r=0;
    #2000;

    // pos 1 , 前面那个sda_r=1;
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;


    // pos 2
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=1;
    #2000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=1;
    #2000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    oe  = 0;
    #2000;

    // ack
    scl=1;
    #4000;
    scl=0;
    #4000;
///////////////////////////////
    #1000;
    oe  = 1;
    #2000;
    // start
    sda_r=1;#1000;scl=1;#1000;sda_r=0;#2000;scl=0;#4000;
    
    //8'b01011000=0x58
    sda_r=0;
    #2000;

    // pos 1 , 前面那个sda_r=1;
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=1;
    #2000;

    // pos 2
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=1;
    #2000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=1;
    #2000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=0;
    #2000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #2000;
    sda_r=1;
    #2000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    oe  = 0;
    #20000;

    // ack
    scl=1;
    #4000;
    scl=0;
    #4000;

    #4000;
    #4000;
//////////////////////

//////////////////////
    //read
    // pos 1 
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 2
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    
    // ack
    oe=1;
    #2000;
    sda_r=0;
    #2000;
    scl=1;
    #4000;
    scl=0;
    #4000;
/////////////    

//////////////////////

    oe  = 0;
    #2000;
    //read
    // pos 1 
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 2
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    
    // ack
    oe=1;
    #2000;
    sda_r=0;
    #2000;
    scl=1;
    #4000;
    scl=0;
    #4000;
//////////////////////

    oe  = 0;
    #2000;
    //read
    // pos 1 
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 2
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    
    // ack
    oe=1;
    #2000;
    sda_r=0;
    #2000;
    scl=1;
    #4000;
    scl=0;
    #4000;
    
//////////////////////
    oe  = 0;
    #2000;
    //read
    // pos 1 
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 2
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 3
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 4
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 5
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 6
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 7
    scl=1;
    #4000;
    scl=0;
    #4000;

    // pos 8
    scl=1;
    #4000;
    scl=0;
    #2000;
    
    // nack
    oe=1;
    #2000;
    sda_r=1;
    #2000;
    scl=1;
    #4000;
    scl=0;
    #4000;
    
    #4000;

    // stop
    scl=1;
    sda_r=0;
    #2000;
    oe  = 1;
    #2000;
    sda_r=1;
    #4000;

///////////////////////////////////////////////////////



end

always
begin
    #1 clk = ~clk;
end


assign  sda=oe?sda_r:1'bz;

endmodule


