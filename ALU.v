// Gabriel Coimbra - 3044
// Maria Dalila - 3030

//Unidade Logica Aritmetica
module mALU
(
	// Variáveis de dados
	input signed [31:0] A,
	input signed [31:0] B,

	// Controle
	input[3:0] ctrl_alu,

	// Saída de dados
	output reg[31:0] alu_main_out,

	// Zero para fazer desvios condicionais
	output wire alu_zero
);

//SO DA PRA FAZER DE OUTRA FORMA, SE 'alu_zero' FOR 'reg'
	assign alu_zero = (alu_main_out == 0);		//Flag da alu, se o resultado da operacao for nulo, ele é 1

//Decide a operacao feita pela ALU, de acordo com 'ctrl_alu_control', que é um numero s
	always @ (A,B, ctrl_alu) begin
		case (ctrl_alu)
			0: alu_main_out = A & B;  //AND
			1: alu_main_out = A | B;  //OR
			2: alu_main_out = A + B;  //ADD
			6: alu_main_out = A - B;  //SUB
			7: alu_main_out = A < B;  //SLT
			12: alu_main_out =~ (A | B); //NOR
			default: alu_main_out <= 0;
		endcase
	end
endmodule
