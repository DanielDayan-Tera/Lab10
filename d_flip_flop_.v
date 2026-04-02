module d_flip_flop_(
    input btnC,
    input D,
    output reg Q,
    output reg Q_nt
    );
    
    initial begin
        Q = 1'b0;
        Q_nt = 1'b1;
    end
    
    always @(posedge btnC) begin
        if (btnC) begin
            Q <= D;
            Q_nt <= ~D;
         end     
    end
    
endmodule
