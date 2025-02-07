`include "nand.v"
`include "Xor.v"

module moduleName;
    reg a, b;
    wire out;
    Xor obj(a, b, out);

    initial begin
        a = 0;
        b = 0;
        #10 a = 1;
        #10 b = 1;
            a = 0;
        #10 a = 1;
            b = 1;
    end

    initial begin
        $monitor("a=%d b=%d out=%d \n", a, b, out);
    end
    
endmodule