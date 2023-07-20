// Gabriel Coimbra - 3044
// Maria Dalila - 3030

// Agradecimentos Computer Organization and Design

`define VERBOSE

module mRegisterFile
(
	input wire clock,

	// Entrada do IF_ID
	input wire[4:0] reg_1_address,
	input wire[4:0] reg_2_address,

	// Entrada write-back
	input wire[4:0] reg_write_address,
	input wire[31:0] data,

	// Entrada Ctrl  
	input wire ctrl_reg_write,

	// Saída de conteúdo
	output reg[31:0] reg_1_content,
	output reg[31:0] reg_2_content
);

	reg update;
	reg[31:0] registers[0:31];			//Registradores
	integer i;
	//registradores usados são ligados a seus respectivos valore
	always @ (reg_1_address) begin
			reg_1_content <= registers[reg_1_address];
			// $display("registers(reading reg1) %d %d",reg_1_content,reg_1_address);
	end

	always @ (reg_2_address, update) begin
		reg_2_content <= registers[reg_2_address];
		// $display("registers(reading reg2) %d %d",reg_2_content,reg_2_address);
		update <= 0;
	end

	//aqui os dados sao escritos nos registradores
	always@(clock) begin
		if(ctrl_reg_write == 1) begin
			registers[reg_write_address] = data;
			`ifdef VERBOSE
				$display("mRegisterFile(): registers(writing) %d %d",$signed(registers[reg_write_address]),reg_write_address);
			`endif
			update = 1;
		end
	end
endmodule
