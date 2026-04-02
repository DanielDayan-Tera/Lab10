
module top(
    input [3:0]sw,
    input btnC,
    output [5:0]led
    );
    t_flip_flop t(
        .T(sw[3]),
        .btnC(btnC),
        .Q(led[4]),
        .Q_nt(led[5])
    );
     jk_flip_flop_1 jk(
        .J(sw[1]),
        .K(sw[2]),
        .btnC(btnC),
        .Q(led[2]),
        .Q_nt(led[3])
    );
    d_flip_flop_ d(
        .D(sw[0]),
        .btnC(btnC),
        .Q(led[0]),
        .Q_nt(led[1])
    );    
endmodule
