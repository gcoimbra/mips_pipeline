// // Gabriel Coimbra - 3044
// // Maria Dalila - 3030

// // Agradecimentos: Daniel Freitas
// //modulo responsavel por fazer um jump
// // desloca 4 bits e soma o valor 4'd4 ao endereco dado na instrucao
module mJump
( //Jump relativo ao PC
	input  wire[25:0] address_in,
	input  wire[31:0] somador_pc_plus_4_if_id,
	output reg[31:0] address_out
);

	always @ (*) begin
		address_out = 32'b0;

		address_out[31:28] = somador_pc_plus_4_if_id[31:28];
		address_out = address_out + (address_in <<2);//Para memoria que caminha com indices de um em um


		$display("mJump(): adin %b jump %b pce4 %b",address_in,address_out,somador_pc_plus_4_if_id);

	end
endmodule
