// Gabriel Coimbra - 3044
// Maria Dalila - 3030

`define VERBOSE

module mHazardDetectionUnity
(
		//Input
		input wire clock,
		input wire[4:0] registerRT_id_ex,
		input wire[4:0] registerRS_if_id,
		input wire[4:0] registerRT_if_id,

		//controle de Hazard de dados (avalia se temos um lw)
		input wire ctrl_mem_read_id_ex,

		//controle de Hazard de controle (avalia se temos uma instrucao de desvio)
		input wire ctrl_jump,//jump
		input wire ctrl_branch,

		//Output
		output reg ctrl_hazard_pc_write,
		ctrl_hazard_if_id_write,
		ctrl_hazard_mux_hazard
);

	// Caso inicial 
	initial begin 
		ctrl_hazard_pc_write = 1;
		ctrl_hazard_if_id_write = 1;
		ctrl_hazard_mux_hazard = 0;
	end

	always@(clock, ctrl_mem_read_id_ex, registerRT_id_ex, registerRS_if_id, registerRT_if_id) begin

		//Stall de Hazard de dados
		if(ctrl_mem_read_id_ex & (registerRT_if_id == registerRT_id_ex  || registerRS_if_id == registerRT_id_ex) )
			begin
				`ifdef VERBOSE
					$display("mHazardDetectionUnity: Hazard detected! NOPING");
				`endif
				ctrl_hazard_pc_write = 0;
				ctrl_hazard_if_id_write = 0;
				ctrl_hazard_mux_hazard = 1;
			end

		else
			begin
				ctrl_hazard_pc_write = 1;
				ctrl_hazard_if_id_write = 1;
				ctrl_hazard_mux_hazard = 0;
			end

			//Stall de Hazard de Controle/Desvio
			if(ctrl_jump || ctrl_branch)begin
				`ifdef VERBOSE
					$display("mHazardDetectionUnity: ControlHazard detected! NOPING");
				`endif
				ctrl_hazard_pc_write = 1;
				ctrl_hazard_if_id_write = 1;
				ctrl_hazard_mux_hazard = 1;
			end

	end



endmodule
