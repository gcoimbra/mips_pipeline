// Gabriel Coimbra - 3044
// Maria Dalila - 3030

// Modulo responsavel por fazer um shiftleft
module mShiftLogicalLeft(
	// Entrada é a 
	input wire[31:0] extension_out,
	output reg[31:0] sll_out
);

	always @ (extension_out) begin
		sll_out = extension_out << 2;
	end

endmodule
