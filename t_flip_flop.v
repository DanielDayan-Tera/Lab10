module t_flip_flop(
    input T,
    input btnC,
    output Q,
    output Q_nt
    );
    
    jk_flip_flop_1 jk_flip(
        .J(T),
        .K(T),
        .btnC(btnC),
        .Q(Q),
        .Q_nt(Q_nt)
    );
    
endmodule
