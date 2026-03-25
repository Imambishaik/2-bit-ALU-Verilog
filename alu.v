module alu_2bit(a, b, sel, y);

input [1:0] a, b;
input [2:0] sel;
output reg [2:0] y;   // 3-bit to handle carry in addition

always @(*) begin
    case(sel)
        3'b000: y = a + b;   // Addition
        3'b001: y = a - b;   // Subtraction
        3'b010: y = a & b;   // AND
        3'b011: y = a | b;   // OR
        3'b100: y = a ^ b;   // XOR
        default: y = 3'b000;
    endcase
end

endmodule
