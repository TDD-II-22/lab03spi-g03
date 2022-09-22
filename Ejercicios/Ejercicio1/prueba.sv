`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2022 20:42:04
// Design Name: 
// Module Name: prueba
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module prueba;

    logic                   clk_100Mhz_pi,
                            reset_pi,
                            control_pi,
                            clk_10Mhz,
                            clk_en1,
                            clk_en2,
                            clk_en,
                            flag,
                            flanco,
                            locked;
    logic       [2 : 0]     counter,
                            counter_digito;
    logic       [1 : 0]     periodos_pi;
    logic       [2 : 0]     rgb_po;
    logic       [6 : 0]     display_po,
                            display_ver;
    
    logic       [7 : 0]     display_select_po = 0,
                            display_select_ver;
    logic       [31: 0]     display_1,
                            display_2,
                            display_o,
                            count;
    logic   [3 : 0]         Display1,
                            Display2,
                            Display3,
                            Display4,
                            Display5,
                            Display6,
                            Display7,
                            Display8;
    logic   [2 : 0]         contador;
    
    int divider;






top_simulate_7seg_v3 top_simualte_7seg_v3(

    .clk_100Mhz_pi              (clk_100Mhz_pi),
    .reset_pi                   (reset_pi),
    .control_pi                 (control_pi),
    .periodos_pi                (periodos_pi),
    .rgb_po                     (rgb_po),
    .display_po                 (display_po),
    .display_select_po          (display_select_po),
    .display_1                  (display_1),
    .display_2                  (display_2),
    .clk_10Mhz                  (clk_10Mhz),
    .clk_en1                    (clk_en1),
    .clk_en2                    (clk_en2),
    .clk_en                     (clk_en)
    );

    initial begin
    reset_pi            =1;
    control_pi          =0;
    clk_100Mhz_pi       =0;
    periodos_pi         =0;
    contador            =0;
    counter             =0;
    counter_digito      =0;
    display_1           =0;
    display_2           =0;
    display_o           =0;
    flag                =0;
    flanco              =0;
    locked              =1;
    divider             =100;
    count               =0;
    clk_en              =0;
    clk_en1             =0;
    clk_en2             =0;
    display_ver         =0;
    display_select_ver  =0;
    
    
    forever #5 clk_100Mhz_pi = ~clk_100Mhz_pi;
    end
    
      //aplicar reset
    always @(posedge locked) begin
        #20000;
        reset_pi = 0;
    end
    
    always @(posedge clk_10Mhz)begin
        
        if(reset_pi) begin
        
            count         = 0;
            clk_en         = 0;  
            
        end else begin
            
            if(count  == (divider - 1)) begin //esto genera un flanco reloj, que se va a dar justo en el counter         
                
                count = 0;
                clk_en = ~clk_en;                 
                if(!clk_en) begin
                    clk_en1        = 1;     
                end else begin
                    clk_en2        = 1;
                end     
                  
            end else if(count  > (divider - 1)) begin
                                        
                    count         = 1;
                    clk_en1        = 0;
                    clk_en2         = 0;
            
            end else begin
                    
                    count         = count + 1;
                    clk_en1         = 0;
                    clk_en2         = 0;
            end 
                
        end
    end
    
    
    
    always @(negedge clk_en1)begin
        display_1         <= {$random} %32'hffff_ffff;
    
    end
    
    always @(posedge clk_en2)begin
        if(reset_pi) begin
        
            Display1 <= 4'hd;
            Display2 <= 0;
            Display3 <= 0;
            Display4 <= 0;
            Display5 <= 0;
            Display6 <= 0;
            Display7 <= 0;
            Display8 <= 0;
            contador <= 1;
        end
        
        contador <= contador + 1;
                    
        if(contador == 7) contador <=0;
               
                    case(contador)
                        0:
                            begin
                                Display1 <= 4'hd;
                                Display2 <= 4'h0;
                                Display3 <= 4'h0;
                                Display4 <= 4'h0;
                                Display5 <= 4'h0;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        1:
                            begin
                                Display1 <= 4'ha;
                                Display2 <= 4'hd;
                                Display3 <= 4'h0;
                                Display4 <= 4'h0;
                                Display5 <= 4'h0;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        2:
                            begin
                                Display1 <= 4'h1;
                                Display2 <= 4'ha;
                                Display3 <= 4'hd;
                                Display4 <= 4'h0;
                                Display5 <= 4'h0;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        3:
                            begin
                                Display1 <= 4'he;
                                Display2 <= 4'h1;
                                Display3 <= 4'ha;
                                Display4 <= 4'hd;
                                Display5 <= 4'h0;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        4:
                            begin
                                Display1 <= 4'hb;
                                Display2 <= 4'he;
                                Display3 <= 4'h1;
                                Display4 <= 4'ha;
                                Display5 <= 4'hd;
                                Display6 <= 4'h0;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        5:
                            begin
                                Display1 <= 4'he;
                                Display2 <= 4'hb;
                                Display3 <= 4'he;
                                Display4 <= 4'h1;
                                Display5 <= 4'ha;
                                Display6 <= 4'hd;
                                Display7 <= 4'h0;
                                Display8 <= 4'h0;
                            end
                        6:
                            begin
                                Display1 <= 4'hb;
                                Display2 <= 4'he;
                                Display3 <= 4'hb;
                                Display4 <= 4'he;
                                Display5 <= 4'h1;
                                Display6 <= 4'ha;
                                Display7 <= 4'hd;
                                Display8 <= 4'h0;
                            end
                        7:
                            begin
                                Display1 <= 4'he;
                                Display2 <= 4'hb;
                                Display3 <= 4'he;
                                Display4 <= 4'hb;
                                Display5 <= 4'he;
                                Display6 <= 4'h1;
                                Display7 <= 4'ha;
                                Display8 <= 4'hd;
                            end
                    endcase  
                        
        assign display_2 = {Display8, Display7, Display6, Display5, 
                     Display4, Display3, Display2, Display1};
    end
    
    always @(posedge clk_10Mhz)begin
        if(!clk_en) display_o = display_1;
        
        else        display_o = display_2;
    end
    
    
    //generar flancos de reloj "artificial" para verificacion
    always @(posedge clk_10Mhz) begin
        if(!reset_pi)begin
            if(locked) begin
        
                if(!flag) begin
                    flag <= 1;
                end else begin
                    if(counter == 4) begin       
                        counter <= 0;
                        flanco  <= ~flanco;
                    end else begin
                        counter <= counter + 1;
                    end
                end 
            end 
        end    
    end
    
    
    always @(posedge flanco) begin
      
        case(counter_digito)
            0: display_ver = comprobador_display(display_o[3 : 0]);
            1: display_ver = comprobador_display(display_o[7 : 4]);
            2: display_ver = comprobador_display(display_o[11 : 8]);
            3: display_ver = comprobador_display(display_o[15 : 12]);
            4: display_ver = comprobador_display(display_o[19 : 16]);
            5: display_ver = comprobador_display(display_o[23 : 20]);
            6: display_ver = comprobador_display(display_o[27 : 24]);
            7: display_ver = comprobador_display(display_o[31 : 28]);
        endcase
        
        case(counter_digito)
            3'h0: display_select_ver = 8'b1111_1110;
            3'h1: display_select_ver = 8'b1111_1101;
            3'h2: display_select_ver = 8'b1111_1011;
            3'h3: display_select_ver = 8'b1111_0111;
            3'h4: display_select_ver = 8'b1110_1111;
            3'h5: display_select_ver = 8'b1101_1111;
            3'h6: display_select_ver = 8'b1011_1111;
            3'h7: display_select_ver = 8'b0111_1111;
       endcase 
        
        if(display_po != display_ver) 
            $display ("ERROR!, Se registro un dato catodo incorrecto, time=%0t", $time);
            
        if(display_select_po != display_select_ver) 
            $display ("ERROR!, Se registro un dato anodo incorrecto, time=%0t", $time);
        
        if(counter_digito == 7)
            counter_digito = 0;
        else
            counter_digito = counter_digito + 1;
       
    end
    
    function [6 : 0] comprobador_display (input [3 : 0] display);
        
        logic [6 : 0] fun_display;
        
        case(display)
                        4'h0: fun_display = 7'b100_0000;    //CERO
                        4'h1: fun_display = 7'b111_1001;    //UNO
                        4'h2: fun_display = 7'b010_0100;    //DOS
                        4'h3: fun_display = 7'b011_0000;    //TRES
                        4'h4: fun_display = 7'b001_1001;    //CUATRO
                        4'h5: fun_display = 7'b001_0010;    //CINCO
                        4'h6: fun_display = 7'b000_0010;    //SEIS
                        4'h7: fun_display = 7'b111_1000;    //SIETE
                        4'h8: fun_display = 7'b000_0000;    //OCHO
                        4'h9: fun_display = 7'b001_1000;    //NUEVE
                        4'ha: fun_display = 7'b000_1000;    //A
                        4'hb: fun_display = 7'b000_0011;    //B
                        4'hc: fun_display = 7'b100_0110;    //C
                        4'hd: fun_display = 7'b010_0001;    //D
                        4'he: fun_display = 7'b000_0110;    //E
                        4'hf: fun_display = 7'b000_1110;    //F
        endcase    
        
        return fun_display;
        
    endfunction
    
    
    
    
    
    
    

endmodule
