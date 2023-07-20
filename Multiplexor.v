// Gabriel Coimbra - 3044
// Maria Dalila - 3030

//MUX responsavel por decidir qual é o registrador de destino
module mMultiplexorRegDst
(
	input wire[4:0] current_instruction_20_16_rt, current_instruction_15_11_rd,
	input wire ctrl_reg_dst_id_ex, //sinal de controle que indica qual sera o registrador de destino
	output reg[4:0] mux_reg_dst_out
);

	always @ (current_instruction_20_16_rt, current_instruction_15_11_rd, ctrl_reg_dst_id_ex) begin
		case(ctrl_reg_dst_id_ex)
			0: mux_reg_dst_out <= current_instruction_20_16_rt;
			1: mux_reg_dst_out <= current_instruction_15_11_rd;
		endcase
	end
endmodule

module mMultiplexorALUSrc
(
	input wire[31:0] reg_2_content, extension_out_id_ex,
	input wire ctrl_alu_src_id_ex,
	output reg[31:0] mux_alu_src_out
);

	always @ (reg_2_content, extension_out_id_ex, ctrl_alu_src_id_ex) begin
		case(ctrl_alu_src_id_ex)
			0: mux_alu_src_out <= reg_2_content;
			1: mux_alu_src_out <= extension_out_id_ex;
		endcase
	end
endmodule


//Multiplexador que se encontra apos a ALU
//Decide se os dados levados para a memoria de registradores sairam da ALU, ou
// ou dos dados de leitura, da memoria de dados
module mMultiplexorMemToReg
(
	input wire[31:0] alu_main_out_mem_wb, data_mem_out_mem_wb,
	input wire ctrl_mem_to_reg_mem_wb,
	output reg[31:0] mem_to_reg_out
);

	always @ (alu_main_out_mem_wb, data_mem_out_mem_wb, ctrl_mem_to_reg_mem_wb) begin
		case(ctrl_mem_to_reg_mem_wb)
			0: mem_to_reg_out <= alu_main_out_mem_wb;
			1: mem_to_reg_out <= data_mem_out_mem_wb;
		endcase
	end
endmodule

module mMultiplexorPCSrc
(
	input wire[31:0] somador_pc_plus_4, somador_branch_out,
	input wire and_gate_out,
	output reg[31:0] mux_PCSrc_out
);

	always @ (somador_pc_plus_4, somador_branch_out, and_gate_out) begin
		case(and_gate_out)
			0: mux_PCSrc_out <= somador_pc_plus_4;
			1: mux_PCSrc_out <= somador_branch_out;
			default: mux_PCSrc_out <= somador_pc_plus_4;
		endcase
	end
endmodule


// Multiplexador que define se o desvio é feito por j ou por beq
module mMultiplexorJump
(
	input wire[31:0] shifted_jump_address, mux_PCSrc_out,
	input wire ctrl_jump, //sinal de controle
	output reg[31:0] pc_in
);

always @ (*) begin

	case(ctrl_jump)
		0: pc_in = mux_PCSrc_out;
		1: pc_in = shifted_jump_address;
		default: pc_in = mux_PCSrc_out;
	endcase

end
endmodule


//Primeiro Multiplexador da ForwardingUnity
module mMultiplexorForwardA
(
	input wire [31:0] reg_1_content_id_ex, alu_main_out_ex_mem, mem_to_reg_out,
	input wire [1:0] ctrl_forwardingA, //controle do mux
	output reg [31:0] mux_ForwardA_out
);
	always @ (reg_1_content_id_ex, alu_main_out_ex_mem, mem_to_reg_out, ctrl_forwardingA) begin

		case (ctrl_forwardingA)
			1: mux_ForwardA_out <= reg_1_content_id_ex;
			2: mux_ForwardA_out <= alu_main_out_ex_mem;
			3: mux_ForwardA_out <= mem_to_reg_out;
			default: mux_ForwardA_out <= reg_1_content_id_ex;
		endcase

	end
endmodule

//Segundo Multiplexador da ForwardingUnity
module mMultiplexorForwardB
(
	input wire [31:0] reg_2_content_id_ex, alu_main_out_ex_mem, mem_to_reg_out,
	input wire [1:0] ctrl_forwardingB, //controle do mux
	output reg [31:0] mux_ForwardB_out
);
	always @ (reg_2_content_id_ex, alu_main_out_ex_mem, mem_to_reg_out, ctrl_forwardingB) begin

		case (ctrl_forwardingB)
			1: mux_ForwardB_out <= reg_2_content_id_ex;
			2: mux_ForwardB_out <= alu_main_out_ex_mem;
			3: mux_ForwardB_out <= mem_to_reg_out;
			default: mux_ForwardB_out <= reg_2_content_id_ex;
		endcase

	end
endmodule

//Multiplexador da HazardDetectionUnity
module mMultiplexorHazard
(

	input wire ctrl_hazard_mux_hazard,
	ctrl_reg_dst,
	ctrl_alu_src,
	ctrl_mem_to_reg,
	ctrl_reg_write,
	ctrl_mem_read,
	ctrl_mem_write,
	ctrl_branch,
	ctrl_jump,
	ctrl_alu_op1,
	ctrl_alu_op0,

	output reg ctrl_reg_dst_hazard_mux,
	ctrl_alu_src_hazard_mux,
	ctrl_mem_to_reg_hazard_mux,
	ctrl_reg_write_hazard_mux,
	ctrl_mem_read_hazard_mux,
	ctrl_mem_write_hazard_mux,
	ctrl_branch_hazard_mux,
	ctrl_jump_hazard_mux,
	ctrl_alu_op0_hazard_mux,
	ctrl_alu_op1_hazard_mux
);

always @(ctrl_hazard_mux_hazard,ctrl_reg_dst,ctrl_alu_src,ctrl_mem_to_reg,ctrl_reg_write,ctrl_mem_read,ctrl_mem_write,ctrl_branch,ctrl_jump,ctrl_alu_op1,ctrl_alu_op0) begin
	if(ctrl_hazard_mux_hazard) begin
		ctrl_reg_dst_hazard_mux		= 0;
		ctrl_alu_src_hazard_mux 	= 0;
		ctrl_mem_to_reg_hazard_mux 	= 0;
		ctrl_reg_write_hazard_mux 	= 0;
		ctrl_mem_read_hazard_mux 	= 0;
		ctrl_mem_write_hazard_mux 	= 0;
		ctrl_branch_hazard_mux 		= 0;
		ctrl_jump_hazard_mux 		= 0;
		ctrl_alu_op0_hazard_mux 	= 0;
		ctrl_alu_op1_hazard_mux		= 0;
	end
	else begin
		ctrl_reg_dst_hazard_mux		= ctrl_reg_dst;
		ctrl_alu_src_hazard_mux 	= ctrl_alu_src;
		ctrl_mem_to_reg_hazard_mux 	= ctrl_mem_to_reg;
		ctrl_reg_write_hazard_mux 	= ctrl_reg_write;
		ctrl_mem_read_hazard_mux 	= ctrl_mem_read;
		ctrl_mem_write_hazard_mux 	= ctrl_mem_write;
		ctrl_branch_hazard_mux 		= ctrl_branch;
		ctrl_jump_hazard_mux 		= ctrl_jump;
		ctrl_alu_op0_hazard_mux 	= ctrl_alu_op0;
		ctrl_alu_op1_hazard_mux		= ctrl_alu_op1;
	end

	

end

endmodule
