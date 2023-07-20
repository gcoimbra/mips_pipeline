`define VERBOSE
module mDataMemory
(
	input wire clock,
	input wire reset,
	input wire[31:0] address,
	input wire[31:0] write_data,
	input wire ctrl_mem_read,
	input wire ctrl_mem_write,
	output reg[31:0] read_data

);
	reg[31:0] memory[0:63];

	always @ (address, write_data, ctrl_mem_read)begin
		if(ctrl_mem_read)begin
			read_data <= memory[address]; //dado lido da memoria
		end
	end

	always @ (posedge clock) begin
		if(ctrl_mem_write)begin
			memory[address] <= write_data; //dado escrito na memoria
		end
	end

endmodule
