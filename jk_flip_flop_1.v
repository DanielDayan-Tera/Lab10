module jk_flip_flop_1(
    input J,
    input K,
    input btnC,
    output Q,
    output Q_nt
    );
    
    wire d_flip;
    assign d_flip = (J&~Q)|(~K&Q);
    
    d_flip_flop_ d_flop(
        .D(d_flip),
        .btnC(btnC),
        .Q(Q),
        .Q_nt(Q_nt)
    ); 
endmodule
