// Gabriel Coimbra - 3044
// Maria Dalila - 3030

`define VERBOSE

module mPC
(
	input wire clock, reset, ctrl_hazard_pc_write,

	// Endereço de entrada
	input wire [31:0] pc_in,

	// Endereço de saída
	output reg[31:0] current_instruction_address
);

	initial begin
		current_instruction_address = 0;
	end
	
	always @ (clock) begin
		if(ctrl_hazard_pc_write == 1) begin

			// Adiciona suporte reset
			if (reset == 0) begin
				current_instruction_address <= pc_in;
				`ifdef VERBOSE
					$display("mPC: Novo PC %d",current_instruction_address);
				`endif
			end
			else begin
				current_instruction_address <= 32'b0;
			end
		end
	end

endmodule
