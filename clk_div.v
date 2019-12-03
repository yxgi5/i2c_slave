module clk_div #
(
    parameter   N = 27000000
)
(
    clk_in,     //Input Clock
    reset,      // Reset Input
    clk_out     // Output Clock
);


	
//-----------Input Ports---------------
input   clk_in;
input   reset;
//-----------Output Ports---------------
output  clk_out;
	
//-------------Code Start-----------------
	
// Posedge counter
reg     [31:0]   pos_cnt;
// Neg edge counter
reg     [31:0]   neg_cnt;
reg clk_out;


always @ (posedge clk_in)
begin
    if (reset)
    begin
      pos_cnt <= 0;
    end
    else
    begin
      pos_cnt <= (pos_cnt == N-1) ? 0 : pos_cnt + 1;
    end
end
	

always @ (negedge clk_in)
begin
    if (reset)
    begin
      neg_cnt <= 0;
    end
    else
    begin
      neg_cnt <= (neg_cnt == N-1) ? 0 : neg_cnt + 1;
    end
end


always @ (*)
begin
    if (N % 2)
    begin
        clk_out = ((pos_cnt < (N+1)/2) && (neg_cnt < (N+1)/2));
    end
    else
    begin
        clk_out = (pos_cnt < N/2);
    end
end
// assign clk_out = ((pos_cnt != 2) && (neg_cnt != 2));
// assign  clk_out = ((pos_cnt < (N+1)/2) && (neg_cnt < (N+1)/2));
	
endmodule
