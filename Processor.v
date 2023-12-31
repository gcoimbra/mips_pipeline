
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module HELLO_FPGA2(

	//////////// CLOCK //////////
	CLOCK_50,
	CLOCK2_50,
	CLOCK3_50,

	//////////// Sma //////////
	SMA_CLKIN,
	SMA_CLKOUT,

	//////////// LED //////////
	LEDG,
	LEDR,

	//////////// KEY //////////
	KEY,

	//////////// EX_IO //////////
	EX_IO,

	//////////// SW //////////
	SW,

	//////////// SEG7 //////////
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,
	HEX6,
	HEX7,

	//////////// LCD //////////
	LCD_BLON,
	LCD_DATA,
	LCD_EN,
	LCD_ON,
	LCD_RS,
	LCD_RW,

	//////////// RS232 //////////
	UART_CTS,
	UART_RTS,
	UART_RXD,
	UART_TXD,

	//////////// PS2 for Keyboard and Mouse //////////
	PS2_CLK,
	PS2_CLK2,
	PS2_DAT,
	PS2_DAT2,

	//////////// SDCARD //////////
	SD_CLK,
	SD_CMD,
	SD_DAT,
	SD_WP_N,

	//////////// VGA //////////
	VGA_B,
	VGA_BLANK_N,
	VGA_CLK,
	VGA_G,
	VGA_HS,
	VGA_R,
	VGA_SYNC_N,
	VGA_VS,

	//////////// Audio //////////
	AUD_ADCDAT,
	AUD_ADCLRCK,
	AUD_BCLK,
	AUD_DACDAT,
	AUD_DACLRCK,
	AUD_XCK,

	//////////// I2C for EEPROM //////////
	EEP_I2C_SCLK,
	EEP_I2C_SDAT,

	//////////// I2C for Audio Tv-Decoder HSMC  //////////
	I2C_SCLK,
	I2C_SDAT,

	//////////// Ethernet 0 //////////
	ENET0_GTX_CLK,
	ENET0_INT_N,
	ENET0_LINK100,
	ENET0_MDC,
	ENET0_MDIO,
	ENET0_RST_N,
	ENET0_RX_CLK,
	ENET0_RX_COL,
	ENET0_RX_CRS,
	ENET0_RX_DATA,
	ENET0_RX_DV,
	ENET0_RX_ER,
	ENET0_TX_CLK,
	ENET0_TX_DATA,
	ENET0_TX_EN,
	ENET0_TX_ER,
	ENETCLK_25,

	//////////// Ethernet 1 //////////
	ENET1_GTX_CLK,
	ENET1_INT_N,
	ENET1_LINK100,
	ENET1_MDC,
	ENET1_MDIO,
	ENET1_RST_N,
	ENET1_RX_CLK,
	ENET1_RX_COL,
	ENET1_RX_CRS,
	ENET1_RX_DATA,
	ENET1_RX_DV,
	ENET1_RX_ER,
	ENET1_TX_CLK,
	ENET1_TX_DATA,
	ENET1_TX_EN,
	ENET1_TX_ER,

	//////////// TV Decoder //////////
	TD_CLK27,
	TD_DATA,
	TD_HS,
	TD_RESET_N,
	TD_VS,

	//////////// USB 2.0 OTG //////////
	OTG_ADDR,
	OTG_CS_N,
	OTG_DACK_N,
	OTG_DATA,
	OTG_DREQ,
	OTG_FSPEED,
	OTG_INT,
	OTG_LSPEED,
	OTG_RD_N,
	OTG_RST_N,
	OTG_WE_N,

	//////////// IR Receiver //////////
	IRDA_RXD,

	//////////// SDRAM //////////
	DRAM_ADDR,
	DRAM_BA,
	DRAM_CAS_N,
	DRAM_CKE,
	DRAM_CLK,
	DRAM_CS_N,
	DRAM_DQ,
	DRAM_DQM,
	DRAM_RAS_N,
	DRAM_WE_N,

	//////////// SRAM //////////
	SRAM_ADDR,
	SRAM_CE_N,
	SRAM_DQ,
	SRAM_LB_N,
	SRAM_OE_N,
	SRAM_UB_N,
	SRAM_WE_N,

	//////////// Flash //////////
	FL_ADDR,
	FL_CE_N,
	FL_DQ,
	FL_OE_N,
	FL_RST_N,
	FL_RY,
	FL_WE_N,
	FL_WP_N,

	//////////// GPIO, GPIO connect to GPIO Default //////////
	gpioGPIO,

	//////////// HSMC, HSMC connect to HSMC Default //////////
	hsmcCLKIN_N1,
	hsmcCLKIN_N2,
	hsmcCLKIN_P1,
	hsmcCLKIN_P2,
	hsmcCLKIN0,
	hsmcCLKOUT_N1,
	hsmcCLKOUT_N2,
	hsmcCLKOUT_P1,
	hsmcCLKOUT_P2,
	hsmcCLKOUT0,
	hsmcD,
	hsmcRX_D_N,
	hsmcRX_D_P,
	hsmcTX_D_N,
	hsmcTX_D_P
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		          		CLOCK_50;
input 		          		CLOCK2_50;
input 		          		CLOCK3_50;

//////////// Sma //////////
input 		          		SMA_CLKIN;
output		          		SMA_CLKOUT;

//////////// LED //////////
output		     [8:0]		LEDG;
output		    [17:0]		LEDR;

//////////// KEY //////////
input 		     [3:0]		KEY;

//////////// EX_IO //////////
inout 		     [6:0]		EX_IO;

//////////// SW //////////
input 		    [17:0]		SW;

//////////// SEG7 //////////
output		     [6:0]		HEX0;
output		     [6:0]		HEX1;
output		     [6:0]		HEX2;
output		     [6:0]		HEX3;
output		     [6:0]		HEX4;
output		     [6:0]		HEX5;
output		     [6:0]		HEX6;
output		     [6:0]		HEX7;

//////////// LCD //////////
output		          		LCD_BLON;
inout 		     [7:0]		LCD_DATA;
output		          		LCD_EN;
output		          		LCD_ON;
output		          		LCD_RS;
output		          		LCD_RW;

//////////// RS232 //////////
output		          		UART_CTS;
input 		          		UART_RTS;
input 		          		UART_RXD;
output		          		UART_TXD;

//////////// PS2 for Keyboard and Mouse //////////
inout 		          		PS2_CLK;
inout 		          		PS2_CLK2;
inout 		          		PS2_DAT;
inout 		          		PS2_DAT2;

//////////// SDCARD //////////
output		          		SD_CLK;
inout 		          		SD_CMD;
inout 		     [3:0]		SD_DAT;
input 		          		SD_WP_N;

//////////// VGA //////////
output		     [7:0]		VGA_B;
output		          		VGA_BLANK_N;
output		          		VGA_CLK;
output		     [7:0]		VGA_G;
output		          		VGA_HS;
output		     [7:0]		VGA_R;
output		          		VGA_SYNC_N;
output		          		VGA_VS;

//////////// Audio //////////
input 		          		AUD_ADCDAT;
inout 		          		AUD_ADCLRCK;
inout 		          		AUD_BCLK;
output		          		AUD_DACDAT;
inout 		          		AUD_DACLRCK;
output		          		AUD_XCK;

//////////// I2C for EEPROM //////////
output		          		EEP_I2C_SCLK;
inout 		          		EEP_I2C_SDAT;

//////////// I2C for Audio Tv-Decoder HSMC  //////////
output		          		I2C_SCLK;
inout 		          		I2C_SDAT;

//////////// Ethernet 0 //////////
output		          		ENET0_GTX_CLK;
input 		          		ENET0_INT_N;
input 		          		ENET0_LINK100;
output		          		ENET0_MDC;
inout 		          		ENET0_MDIO;
output		          		ENET0_RST_N;
input 		          		ENET0_RX_CLK;
input 		          		ENET0_RX_COL;
input 		          		ENET0_RX_CRS;
input 		     [3:0]		ENET0_RX_DATA;
input 		          		ENET0_RX_DV;
input 		          		ENET0_RX_ER;
input 		          		ENET0_TX_CLK;
output		     [3:0]		ENET0_TX_DATA;
output		          		ENET0_TX_EN;
output		          		ENET0_TX_ER;
input 		          		ENETCLK_25;

//////////// Ethernet 1 //////////
output		          		ENET1_GTX_CLK;
input 		          		ENET1_INT_N;
input 		          		ENET1_LINK100;
output		          		ENET1_MDC;
inout 		          		ENET1_MDIO;
output		          		ENET1_RST_N;
input 		          		ENET1_RX_CLK;
input 		          		ENET1_RX_COL;
input 		          		ENET1_RX_CRS;
input 		     [3:0]		ENET1_RX_DATA;
input 		          		ENET1_RX_DV;
input 		          		ENET1_RX_ER;
input 		          		ENET1_TX_CLK;
output		     [3:0]		ENET1_TX_DATA;
output		          		ENET1_TX_EN;
output		          		ENET1_TX_ER;

//////////// TV Decoder //////////
input 		          		TD_CLK27;
input 		     [7:0]		TD_DATA;
input 		          		TD_HS;
output		          		TD_RESET_N;
input 		          		TD_VS;

//////////// USB 2.0 OTG //////////
output		     [1:0]		OTG_ADDR;
output		          		OTG_CS_N;
output		     [1:0]		OTG_DACK_N;
inout 		    [15:0]		OTG_DATA;
input 		     [1:0]		OTG_DREQ;
inout 		          		OTG_FSPEED;
input 		     [1:0]		OTG_INT;
inout 		          		OTG_LSPEED;
output		          		OTG_RD_N;
output		          		OTG_RST_N;
output		          		OTG_WE_N;

//////////// IR Receiver //////////
input 		          		IRDA_RXD;

//////////// SDRAM //////////
output		    [12:0]		DRAM_ADDR;
output		     [1:0]		DRAM_BA;
output		          		DRAM_CAS_N;
output		          		DRAM_CKE;
output		          		DRAM_CLK;
output		          		DRAM_CS_N;
inout 		    [31:0]		DRAM_DQ;
output		     [3:0]		DRAM_DQM;
output		          		DRAM_RAS_N;
output		          		DRAM_WE_N;

//////////// SRAM //////////
output		    [19:0]		SRAM_ADDR;
output		          		SRAM_CE_N;
inout 		    [15:0]		SRAM_DQ;
output		          		SRAM_LB_N;
output		          		SRAM_OE_N;
output		          		SRAM_UB_N;
output		          		SRAM_WE_N;

//////////// Flash //////////
output		    [22:0]		FL_ADDR;
output		          		FL_CE_N;
inout 		     [7:0]		FL_DQ;
output		          		FL_OE_N;
output		          		FL_RST_N;
input 		          		FL_RY;
output		          		FL_WE_N;
output		          		FL_WP_N;

//////////// GPIO, GPIO connect to GPIO Default //////////
inout 		    [35:0]		gpioGPIO;

//////////// HSMC, HSMC connect to HSMC Default //////////
input 		          		hsmcCLKIN_N1;
input 		          		hsmcCLKIN_N2;
input 		          		hsmcCLKIN_P1;
input 		          		hsmcCLKIN_P2;
input 		          		hsmcCLKIN0;
output		          		hsmcCLKOUT_N1;
output		          		hsmcCLKOUT_N2;
output		          		hsmcCLKOUT_P1;
output		          		hsmcCLKOUT_P2;
output		          		hsmcCLKOUT0;
inout 		     [3:0]		hsmcD;
inout 		    [16:0]		hsmcRX_D_N;
inout 		    [16:0]		hsmcRX_D_P;
inout 		    [16:0]		hsmcTX_D_N;
inout 		    [16:0]		hsmcTX_D_P;


	//variaveis dos modulos de desvio(sinais de controle)
	wire ctrl_jump;
	wire ctrl_branch;
	//PC
	wire [31:0] pc_in;  //PCSrcMUX
	wire [31:0] mux_PCSrc_out;  //PCSrcMUX

	wire[31:0] current_instruction_address;

	wire[31:0] somador_pc_plus_4;
	wire[31:0] current_instruction;

	//variaveis do modulo  mMultiplexorRegDst
	wire ctrl_reg_dst;
	wire[4:0] mux_reg_dst_out;

	//variaveis do modulo mRegisterFile
	wire ctrl_reg_write;
	wire[31:0] reg_1_content;
	wire[31:0] reg_2_content;
	wire[31:0] mem_to_reg_out;

	//extensao de sinal
	wire[31:0] extension_out;

	//variaveis do moeudlo mMultiplexorALUSrc
	wire ctrl_alu_src;
	wire[31:0] mux_alu_src_out;

	//variaveis do modulo mALUControl
	wire[1:0] ctrl_alu_op;
	wire ctrl_alu_op0, ctrl_alu_op1, address_out;
	wire[3:0] ctrl_alu;

	//variaveis do modulo mALU
	wire alu_zero;
	wire[31:0] alu_main_out;


	//variaveis do modulo mShiftLogicalLeft
	wire[31:0] sll_out;

	//variaveis do modulo mALU para ibranchALU
	wire[31:0] somador_branch_out;

	//variaveis do modulo mAnd
	wire and_gate_out;

	//variaveis do modulo mEqualRegisters
	wire equal_registers_out;

	//variaveis do modulo mMemDataMemory
	wire ctrl_mem_read, ctrl_mem_write;
	wire[31:0] data_mem_out;

	//variaveis do mMultiplexorMemToReg
	wire ctrl_mem_to_reg;

	// Endereço de jump shiftado (modulo mJump)
	wire[0:31] shifted_jump_address;

	// IF_ID
	wire [31:0] somador_pc_plus_4_if_id;
	wire [31:0] current_instruction_if_id;

	// ID_EX
	wire[31:0] somador_pc_plus_4_id_ex, extension_out_id_ex, reg_1_content_id_ex, reg_2_content_id_ex, current_instruction_id_ex;
	wire[1:0] ctrl_alu_op_id_ex;

	wire ctrl_reg_dst_id_ex,
	ctrl_alu_src_id_ex,
	ctrl_mem_to_reg_id_ex,
	ctrl_reg_write_id_ex,
	ctrl_mem_read_id_ex,
	ctrl_mem_write_id_ex,
	ctrl_branch_id_ex,

	//EX_MEM
	ctrl_mem_to_reg_ex_mem,
	ctrl_reg_write_ex_mem,
	ctrl_mem_read_ex_mem,
	ctrl_mem_write_ex_mem,
	alu_zero_ex_mem;

	wire [31:0] alu_main_out_ex_mem, reg_2_content_ex_mem;
	wire [4:0] mux_reg_dst_out_ex_mem;

	//MEM_WB
	wire ctrl_reg_write_mem_wb, ctrl_mem_to_reg_mem_wb;
	wire [4:0] mux_reg_dst_out_mem_wb;
	wire [31:0] alu_main_out_mem_wb, data_mem_out_mem_wb;

	//ForwardingUnity
	wire [1:0] ctrl_forwardingA, ctrl_forwardingB;
	wire [31:0] mux_ForwardA_out, mux_ForwardB_out;

	// Hazard unit
	wire ctrl_hazard_pc_write, ctrl_hazard_if_id_write, ctrl_hazard_mux_hazard;
	wire[31:0] current_instruction_hazard_mux;

	// Multiplexor hazard
	wire ctrl_reg_dst_hazard_mux,ctrl_alu_src_hazard_mux,ctrl_mem_to_reg_hazard_mux,ctrl_reg_write_hazard_mux,ctrl_mem_read_hazard_mux,ctrl_mem_write_hazard_mux,ctrl_branch_hazard_mux,ctrl_jump_hazard_mux,ctrl_alu_op0_hazard_mux,ctrl_alu_op1_hazard_mux;

	reg clock, reset, ledg, start;
	reg [31:0] clock_divisor;
	reg [8:0] ledr;
	reg [3:0] displays_in[7:0];
	integer i;
	
// Controle de switches
always@(SW[3], SW[2], SW[0], alu_main_out, pc_in)begin
	if(SW[0] == 1)begin //start
		if(SW[3] == 1)begin
			displays_in[0] = alu_main_out[3:0];
			displays_in[1] = alu_main_out[7:4];
			displays_in[2] = alu_main_out[11:8];
			displays_in[3] = alu_main_out[15:12];
			displays_in[4] = alu_main_out[19:16];
			displays_in[5] = alu_main_out[23:20];
			displays_in[6] = alu_main_out[27:24];
			displays_in[7] = alu_main_out[31:28];
		end
		else if(SW[2] == 1) begin
			displays_in[0] = pc_in[3:0];
			displays_in[1] = pc_in[7:4];
			displays_in[2] = pc_in[11:8];
			displays_in[3] = pc_in[15:12];
			displays_in[4] = pc_in[19:16];
			displays_in[5] = pc_in[23:20];
			displays_in[6] = pc_in[27:24];
			displays_in[7] = pc_in[31:28];
		end
		else if(SW[1] == 1) begin
			displays_in[0] = 0;
			displays_in[1] = 0;
			displays_in[2] = 0;
			displays_in[3] = 0;
			displays_in[4] = 0;
			displays_in[5] = 0;
			displays_in[6] = 0;
			displays_in[7] = 0;
		end
	end
end


	mDecoder display0
	(
	 .in(displays_in[0]),
	 .out(HEX0)
	);

	mDecoder display1
	(
	 .in(displays_in[1]),
	 .out(HEX1)
	);

	mDecoder display2
	(
	 .in(displays_in[2]),
	 .out(HEX2)
	);

	mDecoder display3
	(
	 .in(displays_in[3]),
	 .out(HEX3)
	);


	mDecoder display4
	(
	 .in(displays_in[4]),
	 .out(HEX4)
	);


	mDecoder display5
	(
	 .in(displays_in[5]),
	 .out(HEX5)
	);

	mDecoder display6
	(
	 .in(displays_in[6]),
	 .out(HEX6)
	);

	mDecoder display7
	(
	 .in(displays_in[7]),
	 .out(HEX7)
	);


initial begin
	clock_divisor = 0;
	clock = 0;
	ledr = 0;
	displays_in[0] = 0;
	displays_in[1] = 0;
	displays_in[2] = 0;
	displays_in[3] = 0;
	displays_in[4] = 0;
	displays_in[5] = 0;
	displays_in[6] = 0;
	displays_in[7] = 0;
end
	
always @ (posedge CLOCK_50) begin

	if(clock_divisor == 50000000) begin
		clock_divisor = 0;
		clock =~ clock;
	end
	
	clock_divisor = clock_divisor + 1;
		
	
end


//Controle de LEDs

assign LEDR[8:0] = ledr[8:0];
assign LEDG[8] = ledg;

always@(SW[3], SW[2], reset, clock)begin
	if(SW[0] == 1)	begin//start
		if(SW[8])   ledr[8] = 1; else ledr[8] = 0;
		if(SW[7])   ledr[7] = 1; else ledr[7] = 0;
		if(SW[6])   ledr[6] = 1; else ledr[6] = 0;
		if(SW[5])   ledr[5] = 1; else ledr[5] = 0;
		if(SW[4])   ledr[4] = 1; else ledr[4] = 0;
		if(SW[3])   ledr[3] = 1; else ledr[3] = 0;
		if(SW[2])   ledr[2] = 1; else ledr[2] = 0;
		if(SW[1]) begin
				reset =1;
				ledr[1] = 1;
			end
			else begin
				reset =0;
				ledr[1] = 0;
			end
		if(clock) ledg = 1; else ledg = 0;
	end

end

	mIF_ID iIF_ID
	(
		// Input
		.clock(clock),
		.somador_pc_plus_4(somador_pc_plus_4),
		.current_instruction(current_instruction),
		.ctrl_hazard_if_id_write(ctrl_hazard_if_id_write),

		// Output
		.somador_pc_plus_4_if_id(somador_pc_plus_4_if_id),
		.current_instruction_if_id(current_instruction_if_id)
	);

	mID_EX iID_EX
	(
		// Input
		.clock(clock),
		.somador_pc_plus_4_if_id(somador_pc_plus_4_if_id),
		.extension_out(extension_out),
		.reg_1_content(reg_1_content),
		.reg_2_content(reg_2_content),
		.current_instruction_if_id(current_instruction_if_id),

		.ctrl_alu_op0_hazard_mux(ctrl_alu_op0_hazard_mux),
		.ctrl_alu_op1_hazard_mux(ctrl_alu_op1_hazard_mux),

		.ctrl_reg_dst_hazard_mux(ctrl_reg_dst_hazard_mux),
		.ctrl_alu_src_hazard_mux(ctrl_alu_src_hazard_mux),
		.ctrl_mem_to_reg_hazard_mux(ctrl_mem_to_reg_hazard_mux),
		.ctrl_reg_write_hazard_mux(ctrl_reg_write_hazard_mux),
		.ctrl_mem_read_hazard_mux(ctrl_mem_read_hazard_mux),
		.ctrl_mem_write_hazard_mux(ctrl_mem_write_hazard_mux),
		.ctrl_branch_hazard_mux(ctrl_branch_hazard_mux),

		// Output
		.somador_pc_plus_4_id_ex(somador_pc_plus_4_id_ex),
		.extension_out_id_ex(extension_out_id_ex),
		.reg_1_content_id_ex(reg_1_content_id_ex),
		.reg_2_content_id_ex(reg_2_content_id_ex),
		.current_instruction_id_ex(current_instruction_id_ex),

		.ctrl_reg_dst_id_ex(ctrl_reg_dst_id_ex),
		.ctrl_alu_src_id_ex(ctrl_alu_src_id_ex),
		.ctrl_mem_to_reg_id_ex(ctrl_mem_to_reg_id_ex),
		.ctrl_reg_write_id_ex(ctrl_reg_write_id_ex),
		.ctrl_mem_read_id_ex(ctrl_mem_read_id_ex),
		.ctrl_mem_write_id_ex(ctrl_mem_write_id_ex),
		.ctrl_branch_id_ex(ctrl_branch_id_ex),
		.ctrl_alu_op_id_ex(ctrl_alu_op_id_ex)
	);

	mEX_MEM iEX_MEM
	(
		//Input
		.clock(clock),
		.ctrl_mem_to_reg_id_ex(ctrl_mem_to_reg_id_ex),
		.ctrl_reg_write_id_ex(ctrl_reg_write_id_ex),
		.ctrl_mem_read_id_ex(ctrl_mem_read_id_ex),
		.ctrl_mem_write_id_ex(ctrl_mem_write_id_ex),
		.alu_zero(alu_zero),
		.alu_main_out(alu_main_out),
		.reg_2_content_id_ex(reg_2_content_id_ex),
		.mux_reg_dst_out(mux_reg_dst_out),

		//Output
		.ctrl_mem_to_reg_ex_mem(ctrl_mem_to_reg_ex_mem),
		.ctrl_reg_write_ex_mem(ctrl_reg_write_ex_mem),
		.ctrl_mem_read_ex_mem(ctrl_mem_read_ex_mem),
		.ctrl_mem_write_ex_mem(ctrl_mem_write_ex_mem),
		.alu_zero_ex_mem(alu_zero_ex_mem),
		.alu_main_out_ex_mem(alu_main_out_ex_mem),
		.reg_2_content_ex_mem(reg_2_content_ex_mem),
		.mux_reg_dst_out_ex_mem(mux_reg_dst_out_ex_mem)
	);

	mMEM_WB iMEM_WB
	(
		//Input
		.clock(clock),
		.ctrl_reg_write_ex_mem(ctrl_reg_write_ex_mem),
		.ctrl_mem_to_reg_ex_mem(ctrl_mem_to_reg_ex_mem),
		.mux_reg_dst_out_ex_mem(mux_reg_dst_out_ex_mem),
		.alu_main_out_ex_mem(alu_main_out_ex_mem),
		.data_mem_out(data_mem_out),

		//Output
		.ctrl_reg_write_mem_wb(ctrl_reg_write_mem_wb),
		.ctrl_mem_to_reg_mem_wb(ctrl_mem_to_reg_mem_wb),
		.mux_reg_dst_out_mem_wb(mux_reg_dst_out_mem_wb),
		.alu_main_out_mem_wb(alu_main_out_mem_wb),
		.data_mem_out_mem_wb(data_mem_out_mem_wb)
	);

	mForwardingUnit iForwardingUnit
	(
		//Input
		.clock(clock),
		.ctrl_reg_write_ex_mem(ctrl_reg_write_ex_mem),
		.ctrl_reg_write_mem_wb(ctrl_reg_write_mem_wb),
		.mux_reg_dst_out_ex_mem(mux_reg_dst_out_ex_mem),
		.mux_reg_dst_out_mem_wb(mux_reg_dst_out_mem_wb),
		.register_RS(current_instruction_id_ex[25:21]),
		.register_RT(current_instruction_id_ex[20:16]),

		//Output
		.ctrl_forwardingA(ctrl_forwardingA),
		.ctrl_forwardingB(ctrl_forwardingB)
	);

	mMultiplexorForwardA iMultiplexorForwardA
	(
		//Input
		.reg_1_content_id_ex(reg_1_content_id_ex),
		.alu_main_out_ex_mem(alu_main_out_ex_mem),
		.mem_to_reg_out(mem_to_reg_out),
		.ctrl_forwardingA(ctrl_forwardingA),

		//Output
		.mux_ForwardA_out(mux_ForwardA_out)
	);

	mMultiplexorForwardB iMultiplexorForwardB
	(
		//Input
		.reg_2_content_id_ex(reg_2_content_id_ex),
		.alu_main_out_ex_mem(alu_main_out_ex_mem),
		.mem_to_reg_out(mem_to_reg_out),
		.ctrl_forwardingB(ctrl_forwardingB),

		//Output
		.mux_ForwardB_out(mux_ForwardB_out)
	);

	mHazardDetectionUnity iHazardDetectionUnity
	(
		// Input
		.clock(clock),
		.registerRT_id_ex(current_instruction_id_ex[20:16]),
		.registerRS_if_id(current_instruction_if_id[25:21]),
		.registerRT_if_id(current_instruction_if_id[20:16]),
		.ctrl_mem_read_id_ex(ctrl_mem_read_id_ex),
		.ctrl_jump(ctrl_jump),
		.ctrl_branch(ctrl_branch),

		// Output
		.ctrl_hazard_pc_write(ctrl_hazard_pc_write),
		.ctrl_hazard_if_id_write(ctrl_hazard_if_id_write),
		.ctrl_hazard_mux_hazard(ctrl_hazard_mux_hazard)
	);

	mMultiplexorHazard iMultiplexorHazard
	(
		// Input
		.ctrl_hazard_mux_hazard(ctrl_hazard_mux_hazard),

		// Control unit
		.ctrl_reg_dst(ctrl_reg_dst),
		.ctrl_alu_src(ctrl_alu_src),
		.ctrl_mem_to_reg(ctrl_mem_to_reg),
		.ctrl_reg_write(ctrl_reg_write),
		.ctrl_mem_read(ctrl_mem_read),
		.ctrl_mem_write(ctrl_mem_write),
		.ctrl_branch(ctrl_branch),
		.ctrl_jump(ctrl_jump),
		.ctrl_alu_op1(ctrl_alu_op1),
		.ctrl_alu_op0(ctrl_alu_op0),

		// Output
		.ctrl_reg_dst_hazard_mux(ctrl_reg_dst_hazard_mux),
		.ctrl_alu_src_hazard_mux(ctrl_alu_src_hazard_mux),
		.ctrl_mem_to_reg_hazard_mux(ctrl_mem_to_reg_hazard_mux),
		.ctrl_reg_write_hazard_mux(ctrl_reg_write_hazard_mux),
		.ctrl_mem_read_hazard_mux(ctrl_mem_read_hazard_mux),
		.ctrl_mem_write_hazard_mux(ctrl_mem_write_hazard_mux),
		.ctrl_branch_hazard_mux(ctrl_branch_hazard_mux),
		.ctrl_jump_hazard_mux(ctrl_jump_hazard_mux),
		.ctrl_alu_op0_hazard_mux(ctrl_alu_op0_hazard_mux),
		.ctrl_alu_op1_hazard_mux(ctrl_alu_op1_hazard_mux)
	);

	mInstructionMemory iInstructionMemory
	(
		// Input
		.current_instruction_address(current_instruction_address),

		// Output
		.current_instruction(current_instruction)
	);

	mControlUnit iControlUnit
	(
		// Input
		.ctrl_op_code(current_instruction_if_id[31:26]),

		// Output
		.ctrl_reg_dst(ctrl_reg_dst),
		.ctrl_alu_src(ctrl_alu_src),
		.ctrl_mem_to_reg(ctrl_mem_to_reg),
		.ctrl_reg_write(ctrl_reg_write),
		.ctrl_mem_read(ctrl_mem_read),
		.ctrl_mem_write(ctrl_mem_write),
		.ctrl_branch(ctrl_branch),
		.ctrl_alu_op1(ctrl_alu_op1),
		.ctrl_alu_op0(ctrl_alu_op0),
		.ctrl_jump(ctrl_jump)
	);

	mMultiplexorRegDst iMultiplexorRegDst
	(
		// Input
		.current_instruction_20_16_rt(current_instruction_id_ex[20:16]), //RT
		.current_instruction_15_11_rd(current_instruction_id_ex[15:11]), //RD
		.ctrl_reg_dst_id_ex(ctrl_reg_dst_id_ex),

		// Output
		.mux_reg_dst_out(mux_reg_dst_out)
	);

	mSignalExtension iSignalExtension
	(
		// Input
		.current_instruction_if_id(current_instruction_if_id[15:0]),

		// Output
		.extension_out(extension_out)
	);

	mRegisterFile iRegisterFile
	(
		// Input
		.clock(clock),
		.reg_1_address(current_instruction_if_id[25:21]), //RS
		.reg_2_address(current_instruction_if_id[20:16]), //RT
		.reg_write_address(mux_reg_dst_out_mem_wb),
		.data(mem_to_reg_out),
		.ctrl_reg_write(ctrl_reg_write_mem_wb),

		// Output
		.reg_1_content(reg_1_content),
		.reg_2_content(reg_2_content)
	);

	mMultiplexorALUSrc iMultiplexorALUSrc
	(
		// Input
		.reg_2_content(mux_ForwardB_out),
		.extension_out_id_ex(extension_out_id_ex),
		.ctrl_alu_src_id_ex(ctrl_alu_src_id_ex),

		// Output
		.mux_alu_src_out(mux_alu_src_out)
	);

	mALUControl iALUControl
	(
		// Input
		.ctrl_alu_op_id_ex(ctrl_alu_op_id_ex),
		.ctrl_funct(current_instruction_id_ex[5:0]),

		// Output
		.ctrl_alu(ctrl_alu)
	);

	mALU iALU
	(
		// Input
		.A(mux_ForwardA_out),
		.B(mux_alu_src_out),
		.ctrl_alu(ctrl_alu),

		// Output
		.alu_main_out(alu_main_out),
		.alu_zero(alu_zero)
	);

	mShiftLogicalLeft iShiftLogicalLeft
	(
		// Input
		.extension_out(extension_out),

		// Output
		.sll_out(sll_out)
	);

	mSomadorBranch iSomadorBranch
	(
		// Input
		.somador_pc_plus_4_if_id(somador_pc_plus_4_if_id),
		.sll_out(sll_out),

		// Outputpc
		.somador_branch_out(somador_branch_out)
	);

	mMultiplexorPCSrc iMultiplexorPCSrc
	(
		// Input
		.somador_pc_plus_4(somador_pc_plus_4),
		.somador_branch_out(somador_branch_out),
		.and_gate_out(and_gate_out),

		// Output
		.mux_PCSrc_out(mux_PCSrc_out)
	);

	mAnd iAnd
	(
		// Input
		.A(ctrl_branch),
		.B(equal_registers_out),

		// Output
		.result(and_gate_out)
	);

	//Verifica se é um beq
	mEqualRegisters iEqualRegisters
	(
		//input
		.reg_2_content(reg_2_content),
		.reg_1_content(reg_1_content),

		//output
		.equal_registers_out(equal_registers_out)
	);

	mDataMemory iDataMem
	(
		// Input
		.clock(clock),
		.reset(reset),
		.address(alu_main_out_ex_mem),
		.write_data(reg_2_content_ex_mem),
		.ctrl_mem_read(ctrl_mem_read_ex_mem),
		.ctrl_mem_write(ctrl_mem_write_ex_mem),

		// Output
		.read_data(data_mem_out)
	);

	mMultiplexorMemToReg iMultiplexorMemToReg
	(
		// Input
		.alu_main_out_mem_wb(alu_main_out_mem_wb),
		.data_mem_out_mem_wb(data_mem_out_mem_wb),
		.ctrl_mem_to_reg_mem_wb(ctrl_mem_to_reg_mem_wb),

		// Output
		.mem_to_reg_out(mem_to_reg_out)
	);

	mPC iPC
	(
		// Input
		.clock(clock),
		.reset(reset),
		.ctrl_hazard_pc_write(ctrl_hazard_pc_write),
		.pc_in(pc_in),

		// Output
		.current_instruction_address(current_instruction_address)
	);

	mSomadorPC iSomadorPC
	(
		// Input
		.current_instruction_address(current_instruction_address),

		// Output
		.somador_pc_plus_4(somador_pc_plus_4)
	);

	mJump iJump
	(
		//Input
		.address_in(current_instruction_if_id[25:0]),
		.somador_pc_plus_4_if_id(somador_pc_plus_4_if_id),

		// Output
		.address_out(address_out)
	);

	mMultiplexorJump iMultiplexorJump
	(
		// Input
		.shifted_jump_address(shifted_jump_address),
		.mux_PCSrc_out(mux_PCSrc_out),
		.ctrl_jump(ctrl_jump),

		// Output
		.pc_in(pc_in)
	);


endmodule
