`timescale 1ns / 1ps


module counter (
        clock , // Clock input of the design
        reset , // active high, synchronous Reset input
        enable , // Active high enable signal for counter
        counter_out // 4 bit vector output of the counter
    ); // End of port list
        
    //-------------Input Ports-----------------------------
    input clock ;
    input reset ;
    input enable ;
    
    //-------------Output Ports----------------------------
    output [3:0] counter_out ;
    
    //-------------Input ports Data Type-------------------
    wire clock ;
    wire reset ;
    wire enable ;

    reg [3:0] counter_out ;
    
    always @ (clock)
    begin : COUNTER // Block Name
      if (reset == 1'b1) begin
        counter_out <= 4'b0000;
      end
      else if (enable == 1'b1) begin
        counter_out <= counter_out + 1;
      end
    end // End of Block COUNTER

endmodule // End of Module scounter