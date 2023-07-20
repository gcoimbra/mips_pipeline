// Todos essses módulos funcionam da mesma forma. Armazenam os valores das entradas para repassar esses valores na variação de borda de clock.

module mIF_ID
(
	input wire clock,

	// Entrada somador PC
	input wire[31:0] somador_pc_plus_4,

	// Entrada Memória de instruções
	current_instruction,

	input wire ctrl_hazard_if_id_write,

	// Saída somador PC
	output reg[31:0] somador_pc_plus_4_if_id,

	// Saída Memória de instruções
	current_instruction_if_id
);

	always @(clock) begin
		if(ctrl_hazard_if_id_write == 1) begin
			somador_pc_plus_4_if_id   <= somador_pc_plus_4;
			current_instruction_if_id <= current_instruction;
		end
	end

endmodule



module mID_EX
(
	input wire clock,

	// Entrada IF/ID
	input wire[31:0] somador_pc_plus_4_if_id,
	// Entrada do extensor de sinal
	extension_out,

	// Entradas RegisterFile
	reg_1_content,
	reg_2_content,
	current_instruction_if_id,

	input wire ctrl_alu_op0_hazard_mux,
	ctrl_alu_op1_hazard_mux,

	// Entradas Multiplexador Hazard
	ctrl_reg_dst_hazard_mux,
	ctrl_alu_src_hazard_mux,
	ctrl_mem_to_reg_hazard_mux,
	ctrl_reg_write_hazard_mux,
	ctrl_mem_read_hazard_mux,
	ctrl_mem_write_hazard_mux,
	ctrl_branch_hazard_mux,

	// Saída IF/ID
	output reg[31:0] somador_pc_plus_4_id_ex,

	// Saída do extensor de sinal
	extension_out_id_ex,
	reg_1_content_id_ex,
	reg_2_content_id_ex,

	current_instruction_id_ex,

	// Saídas Control Unit
	output reg ctrl_reg_dst_id_ex,
	ctrl_alu_src_id_ex,
	ctrl_mem_to_reg_id_ex,
	ctrl_reg_write_id_ex,
	ctrl_mem_read_id_ex,
	ctrl_mem_write_id_ex,
	ctrl_branch_id_ex,

	output reg[1:0] ctrl_alu_op_id_ex
);

	always @(clock) begin
		somador_pc_plus_4_id_ex 				 <= somador_pc_plus_4_if_id;

		// Control Unit
		ctrl_reg_dst_id_ex					<= ctrl_reg_dst_hazard_mux;
		ctrl_alu_src_id_ex					<= ctrl_alu_src_hazard_mux;
		ctrl_mem_to_reg_id_ex				<= ctrl_mem_to_reg_hazard_mux;
		ctrl_reg_write_id_ex				<= ctrl_reg_write_hazard_mux;
		ctrl_mem_read_id_ex					<= ctrl_mem_read_hazard_mux;
		ctrl_mem_write_id_ex				<= ctrl_mem_write_hazard_mux;
		ctrl_branch_id_ex					<= ctrl_branch_hazard_mux;
		ctrl_alu_op_id_ex[0]				<= ctrl_alu_op0_hazard_mux;
		ctrl_alu_op_id_ex[1]				<= ctrl_alu_op1_hazard_mux;

		extension_out_id_ex					<= extension_out;
		reg_1_content_id_ex					<= reg_1_content;
		reg_2_content_id_ex					<= reg_2_content;
		current_instruction_id_ex			<= current_instruction_if_id;
	end

endmodule



module mEX_MEM
(
	input wire clock,

	//Entradas Control Unity
	input wire ctrl_mem_to_reg_id_ex,
	ctrl_reg_write_id_ex,
	ctrl_mem_read_id_ex,
	ctrl_mem_write_id_ex,

	//Entradas ALU
	input wire alu_zero,
	input wire[31:0] alu_main_out,

	//Entradas ID_EX
	reg_2_content_id_ex,

	//Entradas MultiplexorRegDst
	input wire[4:0] mux_reg_dst_out,

	//Saida Controk Unity
	output reg ctrl_mem_to_reg_ex_mem,
	ctrl_reg_write_ex_mem,
	ctrl_mem_read_ex_mem,
	ctrl_mem_write_ex_mem,

	//Saidas ALU
	output reg alu_zero_ex_mem,
	output reg[31:0] alu_main_out_ex_mem,

	//Saidas ID_EX
  reg_2_content_ex_mem,

	//Saidas MultiplexorRegDst
	output reg[4:0] mux_reg_dst_out_ex_mem
);

	always @(clock) begin
		alu_zero_ex_mem					 <= alu_zero;
		ctrl_mem_to_reg_ex_mem			<= ctrl_mem_to_reg_id_ex;
		ctrl_reg_write_ex_mem			<= ctrl_reg_write_id_ex;
		ctrl_mem_read_ex_mem			<= ctrl_mem_read_id_ex;
		ctrl_mem_write_ex_mem			<= ctrl_mem_write_id_ex;
		alu_main_out_ex_mem				<= alu_main_out;
		reg_2_content_ex_mem			<= reg_2_content_id_ex;
		mux_reg_dst_out_ex_mem				<= mux_reg_dst_out;
	end

endmodule



module mMEM_WB
(
	input wire clock,

//Entradas EX_MEM
	input wire 	ctrl_reg_write_ex_mem,
	ctrl_mem_to_reg_ex_mem,
	input wire [4:0] mux_reg_dst_out_ex_mem,
	input wire [31:0] alu_main_out_ex_mem,

	//Entradas DataMemory
	data_mem_out,

	//Saidas EX_MEM
	output reg 	ctrl_reg_write_mem_wb,
	ctrl_mem_to_reg_mem_wb,
	output reg [4:0] mux_reg_dst_out_mem_wb,
	output reg [31:0] alu_main_out_mem_wb,

	//Entradas DataMemory
	data_mem_out_mem_wb

);

	always @(clock) begin
		ctrl_reg_write_mem_wb     <= ctrl_reg_write_ex_mem;
		ctrl_mem_to_reg_mem_wb    <= ctrl_mem_to_reg_ex_mem;
		mux_reg_dst_out_mem_wb      <= mux_reg_dst_out_ex_mem;
		alu_main_out_mem_wb       <= alu_main_out_ex_mem;
		data_mem_out_mem_wb       <= data_mem_out;
	end

endmodule
