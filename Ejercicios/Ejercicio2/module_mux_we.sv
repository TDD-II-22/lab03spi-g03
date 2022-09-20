module module_mux_we (
    input logic         we_i,
                        reg_sel_i,
    output  logic       wr1_o,
                        wr2_o
        
);

    always@(*) begin
    
        case(reg_sel_i)
        
            0: 
                begin
                    wr1_o = we_i;
                    wr2_o = 0;
                end
            
            1:  
                begin
                    wr1_o = 0;
                    wr2_o = we_i;
                end
            
        endcase

    end

endmodule