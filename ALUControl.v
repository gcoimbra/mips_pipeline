// Gabriel Coimbra - 3044
// Maria Dalila - 3030

module mALUControl(
	input [1:0] ctrl_alu_op_id_ex, // sinais de controle
	input [5:0] ctrl_funct, //campo da instrucao MIPS
	output reg [3:0] ctrl_alu //ctrl_alu (4 bits de operacao da ALU)
	);

//Decide, de acordo com o campo 'ctrl_funct' da instrucao e/ou sinais de controle ctrl_alu_op_id_ex0 e ctrl_alu_op_id_ex1
// qual sera o ctrl_alu_op_id_ex enviado para o modulo mALU

	always @ (ctrl_alu_op_id_ex, ctrl_funct) begin
		case(ctrl_alu_op_id_ex) // decisao tomada por meio do sinal de controle
			0: ctrl_alu = 2; //AND
			1: ctrl_alu = 6; //SUB
			2: case (ctrl_funct) // decisao tomada usando o campo ctrl_funct da instrucao
						36: ctrl_alu = 0; // AND
						37: ctrl_alu = 1; // OR
						32: ctrl_alu = 2; // ADD
						42: ctrl_alu = 7; //SLT
						34: ctrl_alu = 6; // SUB
						default: ctrl_alu = 13;
				endcase
			default: ctrl_alu = 13;
		endcase
  end
endmodule
