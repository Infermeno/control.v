module control_unit(clk,opcode,ID_EX_WB,EX_MEM_WB,MEM_WB_WB,ID_EX_M,EX_MEM_M,ID_EX_EX);
    output reg ID_EX_WB,EX_MEM_WB,MEM_WB_WB,ID_EX_M,EX_MEM_M,ID_EX_EX;
    input [31:26] opcode;
    input clk;

    always@(clk) 
    begin
        ID_EX_WB = 2'b00;
        EX_MEM_WB = 2'b00;
        MEM_WB_WB = 2'b00;
        ID_EX_M = 3'b000;
        EX_MEM_M = 3'b000;
        ID_EX_EX = 8'b00000000;

        if(opcode == 6'b100100) 
        begin
            ID_EX_WB = 2'b11;
            ID_EX_M = 3'b010;
            ID_EX_EX = 8'b01001001;
        end

        if(opcode == 6'b100101)
        begin
            ID_EX_M = 3'b001;
            ID_EX_EX = 8'b01001011;
        end

        if(opcode == 6'b000001)
        begin
            ID_EX_WB = 2'b10;
            ID_EX_EX = 8'b10000010;
        end

        if(opcode == 6'b000011)
        begin
            ID_EX_WB = 2'b10;
            ID_EX_EX = 8'b10000110;
        end

        if(opcode == 6'b000101)
        begin
            ID_EX_WB = 2'b10;
            ID_EX_EX = 8'b10001010;
        end

        if(opcode == 6'000110)
        begin
             ID_EX_WB = 2'b10;
            ID_EX_EX = 8'b10001100;
        end

        if(opcode == 6'b100000)
        begin
            ID_EX_WB = 2'b10;
            ID_EX_EX = 8'b01000001;
        end

        if(opcode == 6'b100001)
        begin
            ID_EX_WB = 2'b10;
            ID_EX_EX = 8'b01000011;
        end

        if(opcode == 6'b101000)
        begin
            ID_EX_M = 3'b100;
            ID_EX_EX = 8'b01010000;
        end

         if(opcode == 6'b101001)
        begin
            ID_EX_M = 3'b100;
            ID_EX_EX = 8'b01010010;
        end

        if(opcode == 6'b101010)
        begin
            ID_EX_M = 3'b100;
            ID_EX_EX = 8'b01010100;
        end
    end

endmodule