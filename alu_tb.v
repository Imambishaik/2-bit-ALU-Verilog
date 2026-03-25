module alu_tb;

reg [1:0] a, b;
reg [2:0] sel;
wire [2:0] y;

// Instantiate ALU
alu_2bit uut(a, b, sel, y);

initial begin
    // Monitor values
    $monitor("Time=%0t | a=%b b=%b sel=%b | y=%b", $time, a, b, sel, y);

    // Test Addition
    a = 2'b01; b = 2'b01; sel = 3'b000;
    #10;

    // Test Subtraction
    a = 2'b10; b = 2'b01; sel = 3'b001;
    #10;

    // Test AND
    a = 2'b11; b = 2'b01; sel = 3'b010;
    #10;

    // Test OR
    a = 2'b10; b = 2'b01; sel = 3'b011;
    #10;

    // Test XOR
    a = 2'b11; b = 2'b01; sel = 3'b100;
    #10;

    $stop;
end

endmodule
