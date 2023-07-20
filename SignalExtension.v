// Gabriel Coimbra - 3044
// Maria Dalila - 3030

//Modulo de extensao de sinal
// Usado para extender o endereco de 16 bits presente na instrucao
//para um numero de 32 bits, para que possa ser somado ao PC
module mSignalExtension
(
	// Entrada do IF/ID
	input wire[15:0] current_instruction_if_id,

	// Saída extendida
	output reg[31:0] extension_out
);

	always @ (current_instruction_if_id) begin
	//out recebe in,
	//mantendo o sinal do valor recebido
		extension_out <= $signed(current_instruction_if_id);

	end
endmodule
