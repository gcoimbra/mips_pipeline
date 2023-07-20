// `define VERBOSE_SOMADOR_BRANCH
module mSomadorPC
(
	// Saída do PC
	input wire[31:0] current_instruction_address,

	// Saída PC mais quatro
	output reg[31:0] somador_pc_plus_4
);

	// Soma 4 ao PC

//	always @ ( current_instruction_address ) begin ANTIGO
always @ (current_instruction_address) begin
		somador_pc_plus_4 = current_instruction_address + 4;
	end

endmodule

module mSomadorBranch
(
	//
	input wire[31:0] somador_pc_plus_4_if_id,
	input signed [31:0] sll_out,
	output reg[31:0] somador_branch_out
);

	always @ (*) begin
		somador_branch_out = $signed(somador_pc_plus_4_if_id + sll_out);
		`ifdef VERBOSE_SOMADOR_BRANCH
			$display("mSomadorBranch(): somador_pc_plus_4_if_id %b sll_out %b somador_branch_out %b",somador_pc_plus_4_if_id,sll_out,somador_branch_out);
		`endif
	end

endmodule
