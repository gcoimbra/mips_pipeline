// Gabriel Coimbra - 3044
// Maria Dalila - 3030

//Modulo feito para inserir instrucoes para testes
module mInstructionMemory (
	input wire[31:0] current_instruction_address,
	output reg[31:0] current_instruction
	);

//vetor de reistradores
	reg[31:0]memory[0:127];
	integer i;
	initial begin
		for(i = 0; i < 32; i = i + 1) 
		begin
			memory[i] = 31'b0;
		end
		
		//TESTE PARA DESVIOS
		memory[0]  = 32'b00001000000000000000000000000100;	//jump

		/* STANDART TEST | STANDART TEST | STANDART TEST */
	  	memory[16]  = 32'b00000100000010000000000000001010;		//addi $t0,$zero,10
		memory[20]  = 32'b00000100000010010000000000000110;		//addi $t1,$zero,6
		memory[24]  = 32'b00000100000010010000000000000110;		//addi $t1,$zero,6
    	memory[28] = 32'b00000100000010100000000000000100;		//addi $t2,$zero,4
	  	memory[32] = 32'b00000100000010110000000000000100;		//addi $t3,$zero,4

		//TESTE PARA branch com desvio 'negativo'
		// memory[36] = 32'b00010001010010111111111111111101;		//beq $t2 $t3 1   // Turn back two words (8 bits)

		memory[36] = 32'b00000100000011000000000001001101;		//addi $t4,$zero,77
		memory[40] = 32'b00000100000100011111111111111111;		//addi $s1,$zero,-1
		memory[44] = 32'b00000100000100100000000000000010;		//addi $s2,$zero,2
		memory[48] = 32'b00000010001100101000000000101010;		//slt $s0, $s1, $s2 // 1
		memory[52] = 32'b00000001000010011000000000100000;		//add $s0 $t0 $t1 // 10 + 6 = 16 HEX: 10
		memory[56] = 32'b00000010000010101000000000100010;		//sub $s0 $s0 $t2 // 16 - 4 = 12 HEX: C
		memory[60] = 32'b00010001010010110000000000000010;		//beq $t2 $t3 1   // Skips two words (8 bits)
		//para testar o branch
		memory[64]  = 32'b00000100000010000000000000001010;		//addi $t0,$zero,10
		memory[68]  = 32'b00000100000010000000000000001011;		//addi $t0,$zero,11
		memory[72]  = 32'b00000100000010000000000000001100;		//addi $t0,$zero,12

		memory[76] = 32'b00000010000010011000000000100010;		//sub $s0 $s0 $t1 // 12 - 6 = 6  HEX: 6
		memory[80] = 32'b10101100000011000000000000000100;		//sw $t4 4($0) 	  //Saves 77 on the data memory
		memory[84] = 32'b10001100000011010000000000000100;		//lw $t5 4($0)	  //Loads 77 from the data memory
		//
		memory[88] = 32'b00000001101100010110100000100000;		//add $t5 $t5 $s1 // 77 - 1 = 76
		// memory[92] = 32'b00010001010010111111111111110111;		//beq $t2 $t3 -9  //Goes back to the beginning


	end

//sempre que houver valor em address
//significa que ha uma instrucao a ser processada
	always @ (current_instruction_address) begin
		current_instruction = memory[current_instruction_address];
	end
endmodule
