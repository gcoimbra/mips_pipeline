// Gabriel Coimbra - 3044
// Maria Dalila - 3030
// o modulo abaixo representa uma porta and, a qual é responsavel pela decisao de desvio
module mAnd
(
	input wire A, //sinal de controle que avalia se a instrucao atual é um branch
	input wire B, //valor da flag zero da ALU
	output reg result
);

	always @ (A, B) begin
		result = A & B;
	end

endmodule