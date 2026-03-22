`timescale 1ns / 1ps

module test_bench;
    reg [3:0]a,b;
	wire [7:0]mul_out;

    multiplier dut(a, b, mul_out);
		always begin
			
			a=4'b1111;
			b=4'b1111;
            #10;
            a=4'd8;
			b=4'd7;
            #10;
             a=4'd11;
             b=4'd12;
            #10;
             a=4'd12;
             b=4'd15;
             #10;

		end
    initial
    begin $monitor("%0d * %0d = %0d ",a, b, mul_out);
    #100 $finish;
    end
endmodule