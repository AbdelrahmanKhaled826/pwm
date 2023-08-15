`timescale 1ns / 1ps

module pwm_tb;
integer i;
parameter N=9;
	// Inputs
	reg clk;
	reg reset;
	reg [N-1:0] duty;

	// Outputs
	wire pwm;

	// Instantiate the Unit Under Test (UUT)
	pwm uut (
		.clk(clk), 
		.reset(reset), 
		.duty(duty), 
		.pwm(pwm)
	);

	initial begin
		clk = 0;
		reset=0;
		#1000000
		$finish;
	
	end
	
initial begin
duty=0;
for(i=0;i<=N;i=i+1)begin
#100000
duty[i]=1;
end
end


always #5 clk=~clk;
endmodule

