module Venom_rom (
	input logic clock,
	input logic [5:0] address,
	output logic [2:0] q
);

logic [2:0] memory [0:63] /* synthesis ram_init_file = "./Venom/Venom.mif" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
