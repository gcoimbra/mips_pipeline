// Gabriel Coimbra - 3044
// Maria Dalila - 3030

`include "Processor.v"


//Modulo usado para os testes do mips

module main();
	reg clock,start,reset;

//Chamada do modulo processador
	processor iProcessor(clock, reset, start);
//atribuicao de valores para os parametros de entrada do modulo chamado acima
	initial begin
		#0 clock = 1'b0;
		#0 reset = 1;
		#1 start = 0;

		#0 reset = 0;
		#1 start = 1;

		$dumpfile("ondas.vcd");

		$dumpvars(0, iProcessor);
		#500;
		$finish;
	end

//Gerador de clock
	always
		begin
		#1;
		clock = ~clock;

	end
endmodule
