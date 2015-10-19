
`timescale 1 ns / 1 ps

  module image_filter_am_addmul_8ns_9ns_12ns_22_1_DSP48_1(a, b, c, p);
input [8 - 1 : 0] a; 
input [9 - 1 : 0] b; 
input [12 - 1 : 0] c; 
output [22 - 1 : 0] p; 

wire [10 - 1 : 0] s; 
assign s =  $unsigned (a) + $unsigned (b);
assign p = $unsigned (s) * $unsigned (c); 

endmodule

`timescale 1 ns / 1 ps
module image_filter_am_addmul_8ns_9ns_12ns_22_1(
    din0,
    din1,
    din2,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;



image_filter_am_addmul_8ns_9ns_12ns_22_1_DSP48_1 image_filter_am_addmul_8ns_9ns_12ns_22_1_DSP48_1_U(
    .a( din0 ),
    .b( din1 ),
    .c( din2 ),
    .p( dout ));

endmodule

