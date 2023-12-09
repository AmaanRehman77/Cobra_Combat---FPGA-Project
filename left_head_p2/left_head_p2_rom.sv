module left_head_p2_rom (
	input logic clock,
	input logic [9:0] address,
	output logic [3:0] q
);

logic [3:0] memory [0:575] /* synthesis ram_init_file = "./left_head_p2/left_head_p2.mif" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
