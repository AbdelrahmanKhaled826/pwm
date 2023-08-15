`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:23:28 08/15/2023 
// Design Name: 
// Module Name:    pwm 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pwm
#(parameter R=9)(
input clk,
input reset,
input [R-1:0] duty,
output reg pwm 
 );
reg [R-1:0] count;
initial count<=0;
always @(posedge clk)begin
	if(reset)	
	count<=0;
else	
	if(duty>count)begin 	pwm=1;	 end
	else begin			pwm=0;		end
	count<=count+1;
	

end
always @(duty)begin
	count<=0;
	
	end
endmodule
