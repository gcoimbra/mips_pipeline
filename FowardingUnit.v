// Gabriel Coimbra - 3044
// Maria Dalila - 3030
// `define VERBOSE

module mForwardingUnit
(
	//Input
	input wire clock,
	ctrl_reg_write_ex_mem,
	ctrl_reg_write_mem_wb,
	input wire[4:0] mux_reg_dst_out_ex_mem,
	mux_reg_dst_out_mem_wb,
	register_RS, //[25:21]  ->  reg_1_address
	register_RT,  //[20:16]  ->  reg_2_address

	//Output
	output reg [1:0] ctrl_forwardingA,
	output reg [1:0] ctrl_forwardingB
);

	always @ (*) begin

		//Não precisa de forwarding
		ctrl_forwardingA <= 2'b01;
		ctrl_forwardingB <= 2'b01;

		//Forwarding de uma instrucao a frente
		if(ctrl_reg_write_ex_mem)begin
			`ifdef VERBOSE_FOWARD
				$display("mForwardingUnit: Fowarding needed! 1 instruction ahead.");
			`endif
			if(mux_reg_dst_out_ex_mem == register_RS) ctrl_forwardingA <= 2'b10;
			if(mux_reg_dst_out_ex_mem == register_RT) ctrl_forwardingB <= 2'b10;
		end

		//Forwarding de duas instrucoes a frente
		if(ctrl_reg_write_mem_wb)begin
			if(mux_reg_dst_out_mem_wb == register_RS)begin
				`ifdef VERBOSE_FOWARD
					$display("mForwardingUnit: Fowarding needed! 2 instruction ahead. Case 1");
				`endif
				 if (!ctrl_reg_write_ex_mem  || register_RS != mux_reg_dst_out_ex_mem)
					 ctrl_forwardingA <= 2'b11;
			end
			if(mux_reg_dst_out_mem_wb == register_RT)begin
				`ifdef VERBOSE_FOWARD
					$display("mForwardingUnit: Fowarding needed! 2 instruction ahead. Case 2");
				`endif
				if (!ctrl_reg_write_ex_mem  ||  register_RT != mux_reg_dst_out_ex_mem)
					 ctrl_forwardingB <= 2'b11;
			end
		end

	end

endmodule
