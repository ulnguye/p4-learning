parser p(out bit<32> b) {
    bit<32> a_0;
    bool tmp;
    bit<32> tmp_0;
    bit<32> tmp_1;
    bool tmp_2;
    bit<32> tmp_3;
    bool tmp_4;
    bit<32> tmp_5;
    bit<32> tmp_6;
    bit<32> tmp_7;
    bit<32> tmp_8;
    state start {
        a_0 = 32w1;
        tmp = a_0 == 32w0;
        if (tmp) 
            tmp_0 = 32w2;
        else 
            tmp_0 = 32w3;
        b = tmp_0;
        tmp_1 = b + 32w1;
        b = tmp_1;
        tmp_2 = a_0 > 32w0;
        if (tmp_2) {
            tmp_4 = a_0 > 32w1;
            if (tmp_4) {
                tmp_6 = b + 32w1;
                tmp_5 = tmp_6;
            }
            else {
                tmp_7 = b + 32w2;
                tmp_5 = tmp_7;
            }
            tmp_3 = tmp_5;
        }
        else {
            tmp_8 = b + 32w3;
            tmp_3 = tmp_8;
        }
        b = tmp_3;
        transition accept;
    }
}

parser proto(out bit<32> b);
package top(proto _p);
top(p()) main;