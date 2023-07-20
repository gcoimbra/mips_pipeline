// Gabriel Coimbra - 3044
// Maria Dalila - 3030
//Modulo responsavel por testar se os dois registradores de saida
//do modulo mRegisterFile sao iguais
//OBS: Foi feito para antecipar a decisao do Branch, e reduzir o
//custo do desvio tomado
module mEqualRegisters
(
	//Input
	input wire [31:0] reg_2_content,
	reg_1_content,

	//Output
	output reg equal_registers_out
);
	always @ ( * ) begin
		equal_registers_out = 0;

		if(reg_1_content == reg_2_content)  equal_registers_out = 1;
	end

endmodule
