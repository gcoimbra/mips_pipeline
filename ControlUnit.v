// Gabriel Coimbra - 3044
// Maria Dalila - 3030

//Modulo responsavel por definir os valores dos sinais de controle
module mControlUnit(
	input wire[5:0] ctrl_op_code, //6 bits mais significativos da instrucao
	output reg ctrl_reg_dst,
	output reg ctrl_alu_src,
	output reg ctrl_mem_to_reg,
	output reg ctrl_reg_write,
	output reg ctrl_mem_read,
	output reg ctrl_mem_write,
	output reg ctrl_branch,
	output reg ctrl_alu_op1,
	output reg ctrl_alu_op0,
	output reg ctrl_jump
);


//Define de acordo com opcode da instrucao, quais serao os valores dos sinais de controle
always @ (ctrl_op_code) begin
	case(ctrl_op_code) // tipo r
		0: begin //add, sub
 				ctrl_reg_dst	<= 1;
				ctrl_alu_src	<= 0;
				ctrl_mem_to_reg	<= 0;
				ctrl_reg_write	<= 1;
				ctrl_mem_read	<= 0;
				ctrl_mem_write	<= 0;
				ctrl_branch		<= 0;
				ctrl_alu_op1	<= 1;
				ctrl_alu_op0	<= 0;
				ctrl_jump 		<= 0;
			end
			1: begin //addi
	 				ctrl_reg_dst	<= 0;
					ctrl_alu_src	<= 1;
					ctrl_mem_to_reg	<= 0;
					ctrl_reg_write	<= 1;
					ctrl_mem_read	<= 0;
					ctrl_mem_write	<= 0;
					ctrl_branch		<= 0;
					ctrl_alu_op1	<= 0;
					ctrl_alu_op0	<= 0;
					ctrl_jump 		<= 0;
				end
		35:begin  //lw
				ctrl_reg_dst	<= 0;
				ctrl_alu_src	<= 1;
				ctrl_mem_to_reg	<= 1;
				ctrl_reg_write	<= 1;
				ctrl_mem_read	<= 1;
				ctrl_mem_write	<= 0;
				ctrl_branch		<= 0;
				ctrl_alu_op1	<= 0;
				ctrl_alu_op0	<= 0;
				ctrl_jump 		<= 0;
			end
		43:begin  //sw
				ctrl_reg_dst	<= 0;
				ctrl_alu_src	<= 1;
				ctrl_mem_to_reg	<= 0;
				ctrl_reg_write	<= 0;
				ctrl_mem_read	<= 0;
				ctrl_mem_write	<= 1;
				ctrl_branch		<= 0;
				ctrl_alu_op1	<= 0;
				ctrl_alu_op0	<= 0;
				ctrl_jump 		<= 0;
			end
		4:begin //beq
				ctrl_reg_dst	<=	0;
				ctrl_alu_src	<= 0;
				ctrl_mem_to_reg	<= 0;
				ctrl_reg_write	<= 0;
				ctrl_mem_read	<= 0;
				ctrl_mem_write	<= 0;
				ctrl_branch		<= 1;
				ctrl_alu_op1	<= 0;
				ctrl_alu_op0	<= 1;
				ctrl_jump 		<= 0;
		end
		2: begin //j
				ctrl_reg_dst	<=	0;
				ctrl_alu_src	<= 0;
				ctrl_mem_to_reg	<= 0;
				ctrl_reg_write	<= 0;
				ctrl_mem_read	<= 0;
				ctrl_mem_write	<= 0;
				ctrl_branch		<= 0;
				ctrl_alu_op1	<= 0;
				ctrl_alu_op0	<= 0;
				ctrl_jump 		<= 1;
			end
		default: //nop
		begin
			ctrl_reg_dst	<= 0;
			ctrl_alu_src	<= 0;
			ctrl_mem_to_reg	<= 0;
			ctrl_reg_write	<= 0;
			ctrl_mem_read	<= 0;
			ctrl_mem_write	<= 0;
			ctrl_branch		<= 0;
			ctrl_alu_op1	<= 0;
			ctrl_alu_op0	<= 0;
			ctrl_jump 		<= 0;
		end
	endcase
end

endmodule
