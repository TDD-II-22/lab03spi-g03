
# Lab 3. Interfaces con periféricos

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays
- **SPI**: Serial Peripheral Interface

## 2. Referencias
[1] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo


### 3.1 Ejercicio 1. Display de 7 segmentos Extendido
Este ejercicio se basa en un control de dos registros para los displays de 7 segmentos de l placa Nexys 4.

#### 3.1.1 Módulo top
Módulo más general del ejercicio el cual contiene e interconecta a todos los submódulos necesarios para el funcionamiento de la implementación requerida
##### Encabezado del módulo.

```SystemVerilog
module top_module_7seg_v3(
    
    input     logic               clk_100Mhz_pi,
                                  reset_pi,
                                  control_pi,
                       [1 : 0]    periodos_pi,
    output    logic    [2 : 0]    rgb_po,
                       [6 : 0]    display_po,
                       [7 : 0]    display_select_po
    );
```

##### Parámetros
- `PERIODO_ANODO`: El periodo de la frecuecia de refresco para los ánodos de los displays

##### Entradas y salidas:
- `clk:100Mhz_pi`: Entrada del clock de la FPGA.
- `reset_pi`: Entrada del botón de reset.
- `control_pi`: Entrada del switch de control para pausar la generación de nuevos valores a mostrar en el display.
- `periodos_pi`: Entradas de los switches que determinan la frecuencia a la que se cambian los registros.
- `rgb_po`: Salida para el LED RGB
- `display_po`: Salida de los ánodos de los displays.
- `display_select_po` Salida de los cátodos de los displays. 

##### Criterios de diseño
Este módulo es el módulo rpincipal en el cual se llaman a los demás submódulos y se interconectan tal y como lo muestra la figura a continuación:
<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/Esquematico%201.png" >

#### 3.1.2 Módulo WCLK.xci
El archivo WCLL.xci crea un archivo verilog que contiene un circuito de reloj personalizado según los requisitos del reloj del usuario.

##### Encabezado del módulo

```SystemVerilog

module WCLK (
  // Clock out ports
  output        CLK_10MHZ,
  // Status and control signals
  output        locked,
  // Clock in ports
  input         CLK_100MHZ
 );
	
```

##### Parámetros
El módulo no posee parámetros.

##### Entradas y salidas:
- `CLK_100MHZ`: Entrada de reloj del módulo
- `locked`: Salida del módulo. Presenta un pulso una vez que el bloque WCLK se estabiliza.
- `CLK_10MHZ`: Salida del módulo. Genera un reloj con un periodo de 100ns.


#### 3.1.3 Módulo clock_mux_divider
Este módulo es el encargando de generar distintos clock enables para poder controlar el cambio de los registros a mostrar en los displays, así como también el clock enable principal.

##### Encabezado del módulo
```SystemVerilog
module module_clock_mux_divider(

    input   logic               clk_10Mhz_i,
                                reset_i,
                    [1 : 0]     periodos_i,
    output  logic               clock_o,
                                clk_en1,
                                clk_en2 
    
    );
```
##### Parámetros
- Este módulo no posee parámetros.

##### Entradas y salidas:
- `clk_10Mhz_i`: Clock de la FPGA.
- `reset_i`: Botón de reset.
- `periodos_i`: Switches que van a controlar la frecuencia de los eneables de los registros.
- `clock_o`: Salida de clock enable para funcionamiento de los módulos.
- `clk_en1`: Salida de clock enable para el registro 1.
- `clk_en2`: Salida de clock enable para el registro 2.

##### Criterios de diseño

Este módulo se basa en tomar como entrada la señal de reloj de la FPGA y con ella generar 3 distintos clock enables, uno a 10 MHz para el funcionamiento de toda la lógica secuencial, y los enables de los registros lo cuales cambian de frecuencia según sea la combinación de la entrada `periodos_i` por medio de un case tal que sigue la combinación:

| `periodos_i[1]` 		| `periodos_i[0]` | Periodo de refresco de los registros    |
| :----------------------:|:---------------:| :---------------------------------------:|
| 0        	| 0    | 0.5 segundos     |
| 0        		| 1  | 1 segundo          |
| 1       	| 0    | 2 segundos   |
| 1        		| 1  | 3 segundos          |




#### 3.1.4 Módulo module_view_display 

Este módulo es el encargando de generar los datos que se van a guardar en cada uno de los registros para posteriormente mostrarse en los displays. Se basa en llamar a dos submódulos: `module_pseudo_random` y `module_bebe_sweept` los cuales son quienes generan datos para los registros.

##### Encabezado del módulo
```SystemVerilog
module module_view_display(
        input   logic                   clk_i,
                                        rst_i,
                                        clk_en1_i,
                                        clk_en2_i,
                                        pause_i,
        output  logic   [31 : 0]        salida_view1_o,
                                        salida_view2_o
    );
```
##### Parámetros

- `NUM_BITS` Setea el número de bits a la salida, se configura en 32.

##### Entradas y salidas:

- `clk_i`: Clock de 10 MHz.
- `rst_i`: Botón de reset.
- `clk_en1_i`: Entrada de clock enable para el registro 1.
- `clk_en2_i`: Entrada de clock enable para el registro 2.
- `pause_i`: Entrada del switch que activa o no el Write Enable de los registros.
- `salida_view1_o`: Salida de los datos del registro 1.
- `salida_view2_o`: Salida de los datos del registro 2.


##### Criterios de diseño

Este módulo funciona como un tipo de top module para los generadores de datos `module_pseudo_random` y `module_bebe_sweept`.

El módulo de `module_pseudo_random` es un módulo para generar números pseudoaleatorios de una cantidad determinada de bits, en este caso esa cantidad de bits es la del parámetro `NUM_BITS`. Se generan nuevos valores cada que `clk_en1_i` se pone en 1.

El módulo de `module_bebe_sweept` es un módulo para generar un barrido de una palabra en específico. Se pinta un nuevo valor de la palabra cada que `clk_en2_i` se pone en 1.



#### 3.1.5 Módulo module_registros 

Este módulo es el encargando de recibir los datos generados por el módulo `module_view_display` y enviarlos a cada uno de los registros, además de encargarse de enviarlos al módulo de control del display de 7 segmentos `module_seg7_control`.

##### Encabezado del módulo
```SystemVerilog
module module_registros(
    input   logic                   clk_i,
                                    rst_i,
                                    write_en_i,
                                    clk_en_i,
                    [31 : 0]        entrada_r1_i,
                                    entrada_r2_i,
    output  logic   [31 : 0]        salida_ro    
    );
```
##### Parámetros

Este módulo no tiene parámetros.

##### Entradas y salidas:

- `clk_i`: Clock de 10 MHz.
- `rst_i`: Botón de reset.
- `write_en_i`: Write Enable de los registros.
- `clk_en_i`: Entrada de clock enable.
- `entrada_r1_i`: Datos para el registro 1.
- `entrada_r2_i`: Datos para el registro 2.
- `salida_ro`: Salida de los datos a pintar en los displays.


##### Criterios de diseño

Este módulo se encarg del control de los registros en donde se almacenan los datos que se pintarán en los displays según la señal de enable lo indique.





#### 3.1.6 Módulo module_seg7_control 

Este módulo es el encargando de recibir los datos de los registros y pintar los datos en los displayse seleccionando de manera adecuada los cátodos y los ánodos.

##### Encabezado del módulo
```SystemVerilog

module module_seg7_control #(parameter real PERIODO = 1e-3)(
    
    input   logic               clk_10Mhz_i,
                                reset_i,
                    [31 : 0]    display_i,
    output  logic   [6 : 0]     display_o,
                    [7 : 0]     display_select_o
    
    );

```
##### Parámetros

- `PERIODO`: Define el periodo para la frecuecncia de refresco de los los displays.

##### Entradas y salidas:

- `clk_10MHz_i`: Clock de 10 MHz.
- `reset_i`: Botón de reset.
- `display_i`: Entrada de datos a pintar en los displays.
- `display_o`: Ánodos del display.
- `display_select_o`: Cátodos de los displays.


##### Criterios de diseño

Este módulo toma como entrada un dato de 32 bits que es el que se pintaría en los displays. Según se requiera, se activan los cátodos y ánodos correspondientes.


#### 3.1.7 Módulo module_control_led_rgb 

Este módulo es el encargando de controlar el LED RGB enviando los valores a necesarios a un submódulo de control `module_leds_rgb`. El funcionamiento para este caso en específico es que se encienda de un color cuando se muestra el registro 1 y de otro color cuando se muestra el registro 2.

##### Encabezado del módulo
```SystemVerilog
module module_control_led_rgb(
    
    input   logic               clk_i,
                                rst_i,
                                clk_en1,
                                clk_en2,                   
    output  logic   [2 : 0]     rgb_o
    
    );

```
##### Parámetros

- `PERIODO` = 1e-3

##### Entradas y salidas:

- `clk_i`: Clock de 10 MHz.
- `rst_i`: Botón de reset.
- `clk_en1`: Entrada de clock enable del registro 1.
- `clk_en2`: Entrada de clock enable del registro 2.
- `rgb_o`: Datos para la intesidad de cada led del RGB.


##### Criterios de diseño

Este módulo en particular se encarga únicamente de enviar datos a un submódulo de control para los rgb el cual se encarga de de toda la lógica para encender o apagar los LED's según se le indica a las entradas.



#### 3.1.8 Módulo module_leds_rgb 

Este módulo es el módulo de control para los LED's RGB

##### Encabezado del módulo
```SystemVerilog
module module_leds_rgb #(parameter real PERIODO = 1e-3)(
    
    input   logic               clk_i,
                                rst_i,
                    [2 : 0]     color_i,
    output  logic   [2 : 0]     rgb_o
    
    );

```
##### Parámetros

- `OFF`             = 0,
- `ROJO`            = 1,
- `VERDE`           = 2,
- `AZUL`            = 3,
- `AMARILLO`        = 4,
- `CIAN`            = 5,
- `MAGENTA`         = 6,
- `BLANCO`          = 7;

##### Entradas y salidas:

- `clk_i`: Clock de 10 MHz.
- `rst_i`: Botón de reset.
- `color_i`: Entrada de clock enable.
- `rgb_o`: Datos para la intesidad de cada led del RGB.


##### Criterios de diseño

Este módulo establece mediante un case la combinación necesaria para encender de cirto color el RGB, además de establecer la frecuencia de refresco.


#### 3.1.9 Testbench

Para las pruebas hechas en este ejercicio, se simuló los datos que se generan para cada uno de los registros además de generar un código autoverificable.

En las imágenes mostradas a continuación se puede ver el funcionamiento del ejercicio.
<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/7SEG_GEN.jpeg" >

<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/7SEG_ZOOM.jpeg" >

Es observable como en los displays se va cambiando los datos que se pintan tal que va cambiando consecutivamente entre los datos del registro 1 que son datos pseudo aleatorios y los datos del registro 2 el cual cada ciclo hace un barrido de una palara escrita en código hezadecimal.

#### 3.1.10 Puertos Utilizados

| Señal         		| Pin   | En tarjeta    |
| :--------------------:|:-----:| :------------:|
| clk_100Mhz_pi        	| E3    | CLK100MHZ     |
| reset_pi        		| E16   | BTNC          |
| periodos_pi[0]        | U9    | SW0           |
| periodos_pi[1]        | U8    | SW1           |
| periodos_pi[2]        | R7    | SW2           |
| control_pi[0]         | P4    | SW15          |
| rgb_po[2]             | K5    | LED16_R       |
| rgb_po[1]             | F13   | LED16_G       |
| rgb_po[0]             | F6    | LED16_B       |
| display_po[0]     	| L3	| CA            |
| display_po[1]     	| N1	| CB            |
| display_po[2]     	| L5	| CC            |
| display_po[3]     	| L4	| CD            |
| display_po[4]     	| K3	| CE            |
| display_po[5]     	| M2	| CF            |
| display_po[6]     	| L6	| CG            |
| display_select_po[0]  | N6	| AN0           |
| display_select_po[1]  | M6	| AN1           |
| display_select_po[2]  | M3	| AN2           |
| display_select_po[3]  | N5	| AN3           |
| display_select_po[4]  | N2	| AN4           |
| display_select_po[5]  | N4	| AN5           |
| display_select_po[6]  | L1	| AN6           |
| display_select_po[7]  | M1	| AN7           |

#### 3.1.11 Constraints

```sdc
set_property PACKAGE_PIN E3 [get_ports clk_100Mhz_pi]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100Mhz_pi]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_100Mhz_pi]

set_property PACKAGE_PIN U9 [get_ports periodos_pi[0]]
set_property IOSTANDARD LVCMOS33 [get_ports periodos_pi[0]]
set_property PACKAGE_PIN U8 [get_ports {periodos_pi[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {periodos_pi[1]}]
set_property PACKAGE_PIN R7 [get_ports {periodos_pi[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {periodos_pi[2]}]
set_property PACKAGE_PIN P4 [get_ports {control_pi}]
set_property IOSTANDARD LVCMOS33 [get_ports {control_pi}]



set_property PACKAGE_PIN K5 [get_ports rgb_po[2]]
set_property IOSTANDARD LVCMOS33 [get_ports rgb_po[2]]
set_property PACKAGE_PIN F13 [get_ports rgb_po[1]]
set_property IOSTANDARD LVCMOS33 [get_ports rgb_po[1]]
set_property PACKAGE_PIN F6 [get_ports rgb_po[0]]
set_property IOSTANDARD LVCMOS33 [get_ports rgb_po[0]]
set_property PACKAGE_PIN L3 [get_ports {display_po[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[0]}]
set_property PACKAGE_PIN N1 [get_ports {display_po[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[1]}]
set_property PACKAGE_PIN L5 [get_ports {display_po[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[2]}]
set_property PACKAGE_PIN L4 [get_ports {display_po[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[3]}]
set_property PACKAGE_PIN K3 [get_ports {display_po[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[4]}]
set_property PACKAGE_PIN M2 [get_ports {display_po[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[5]}]
set_property PACKAGE_PIN L6 [get_ports {display_po[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[6]}]


set_property PACKAGE_PIN N6 [get_ports {display_select_po[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[0]}]
set_property PACKAGE_PIN M6 [get_ports {display_select_po[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[1]}]
set_property PACKAGE_PIN M3 [get_ports {display_select_po[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[2]}]
set_property PACKAGE_PIN N5 [get_ports {display_select_po[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[3]}]
set_property PACKAGE_PIN N2 [get_ports {display_select_po[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[4]}]
set_property PACKAGE_PIN N4 [get_ports {display_select_po[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[5]}]
set_property PACKAGE_PIN L1 [get_ports {display_select_po[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[6]}]
set_property PACKAGE_PIN M1 [get_ports {display_select_po[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[7]}]



set_property PACKAGE_PIN E16 [get_ports reset_pi]
set_property IOSTANDARD LVCMOS33 [get_ports reset_pi]



create_generated_clock -name pllclk -source [get_ports clk_100Mhz_pi] -divide_by 10 [get_pins generate_clock_10Mhz/clk_10Mhz]
set_output_delay -clock [get_clocks pllclk] 0.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]
```























### 3.2 Ejercicio 2. Interfaz SPI Maestro

Este ejercicio se basa en el diseño de una interfaz de control para periféricos basados en el protocolo de comunicación SPI. 

#### 3.2.1 Módulo top

Módulo más general del ejercicio el cual contiene e interconecta a todos los submódulos necesarios para el funcionamiento de la implementación requerida.

##### Encabezado del módulo
```SystemVerilog
module top_tactico(
    
    input   logic               clk_100Mhz_pi,
                                rst_pi,
                                miso_pi,
                                btn_send_pi,
                                sw_we_pi, //habilita el WE
                                reg_sel_pi, //controla los demux salida y we
                    [1 : 0]     sw_addr_in_pi, //selecciona la direcccion
                    [10 : 0]    sw_entrada_pi,                    
    output  logic               mosi_po,
                                locked_po,
                                cs_ctrl_po,
                    [6 : 0]     display_po,
                    [7 : 0]     display_select_po                     
    );
    
```
##### Parámetros
- `PERIODO`= 1e-3
- `PERIODO_send`=1

##### Entradas y salidas:
- `clk_100Mhz_pi`:  Clock de la FPGA
- `rst_pi`: Botón de reset
- `miso_pi`: Entrada señal MISO
- `btn_send_pi`: Botón de send
- `sw_we_pi`:  Habilita el WE
- `reg_sel_pi`: Controla los demux salida y WE
- `sw_addr_in_pi`: Selecciona la direcccion
- `sw_entrada_pi`:                    
- `mosi_po`: Salida señal MOSI
- `locked_po`: LED de locked
- `cs_ctrl_po`: LED de Chip Select
- `display_po`: Ánodos del display.
- `display_select_po`: Cátodos de los displays.  


##### Criterios de diseño

La imagen a continuación muestra el diagrama de bloques del módulo SPI.

<img src = "https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/TOP_TOP_SPI.png" >


#### 3.2.2 Módulo WCLK.xci
El archivo WCLL.xci crea un archivo verilog que contiene un circuito de reloj personalizado según los requisitos del reloj del usuario.

##### Encabezado del módulo

```SystemVerilog

module WCLK (
  // Clock out ports
  output        CLK_10MHZ,
  // Status and control signals
  output        locked,
  // Clock in ports
  input         CLK_100MHZ
 );
	
```

##### Parámetros
El módulo no posee parámetros.

##### Entradas y salidas:
- `CLK_100MHZ`: Entrada de reloj del módulo
- `locked`: Salida del módulo. Presenta un pulso una vez que el bloque WCLK se estabiliza.
- `CLK_10MHZ`: Salida del módulo. Genera un reloj con un periodo de 100ns.




#### 3.2.3 Módulo module_debounce_timer
##### Encabezado del módulo
```SystemVerilog
module module_debounce_timer #(parameter real PERIODO = 1)(

    input   logic   clk_10Mhz_i,
                    reset_i,
                    btn_send_i,
    output  logic   send_pulso_i 
    
    );
    
```
##### Parámetros
- `PERIODO`: Establece el periodo de refresco para el contador

##### Entradas y salidas:
- `clk_10Mhz_i`: Clock de entrada
- `reset_i`: Señal de reset
- `btn_send_i`: Botón de señal de send
- `send_pulso_i`: Señal de send enviada al registro de control


##### Criterios de diseño
Se basa en un contador que habilitará la señal de send que habilitará el registro control del SPI cuando el botón se habilita y está 



#### 3.2.4 Módulo top_interface_spi
##### Encabezado del módulo
```SystemVerilog
module top_interface_spi(

    input   logic               clk_i,
                                rst_i,
                                miso_i,
                                btn_send_i,
                                sw_we_i,
                                reg_sel_i,
    pkg_global::bits_n          sw_addr_in_i,
                     [10 : 0]   sw_entrada_i,                   
    
    output logic                mosi_o,
                                cs_ctrl_o,
                                proccess_o,
                                sck_o,
    pkg_global::bits_width      salida_o                    
);
    );
```
##### Parámetros
- Lista de parámetros

##### Entradas y salidas:
-    `clk_i`: Señal de clock
-    `rst_i`: Señal de reset
-    `miso_i`: Señal de MISO
-    `btn_send_i`: Señal de boton para enviar datos
-    `sw_we_i`: Señal de Write Enable
-    `reg_sel_i`: Señal para controlar los demux salida y we
-    `sw_addr_in_i`: Señal de 2 bits para seleccionar la dirección
-    `sw_entrada_i`: Señal de 11 bits para la entrada                
-    `mosi_o`: Señal de MOSI
-    `cs_ctrl_o`: Señal de Chip Select
-    `proccess_o`: Senal para los procesos
-    `sck_o`: Señal de un divisor de reloj
-    `salida_o`: Señal de salida 

##### Criterios de diseño
Sirve como una especie de sub top module el cual se encarga propiamente del control del SPI Maestro. Sigue el siguiente diagrama de bloques:

<img src = "https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/SPI.png" >


#### 3.2.5 Módulo module_mux_we
##### Encabezado del módulo
```SystemVerilog
module module_mux_we (
    input logic         we_i,
                        reg_sel_i,
    output  logic       wr1_o,
                        wr2_o
        
);
```
##### Parámetros
Este módulo no posee parámetros

##### Entradas y salidas:
- `we_i`: Señal de Write Ensblr
- `reg_sel_i`: Señal para controlar los demux salida y we
- `wr1_o`: Señal para escritura 1
- `wr2_o`: Señal para escritura 2

##### Criterios de diseño
Este modulo indica que Write Enable se activa



#### 3.2.6 Módulo top_master_race_spi
##### Encabezado del módulo
```SystemVerilog
module top_master_race_spi(

    input   logic                       clk_i,
                                        rst_i,
                                        miso_i,                                            
                    [7 : 0]             dato_in,
    pkg_global:: struct_reg_control     cntr_str_i,
     
    output logic                        mosi_o,
                                        we_rx_o,                                      
                                        proccess_o,
                                        hold_ctrl_o,
                                        we_ram2_o,
                                        cs_ctrl_o,
                                        sck_o,      
                    [7 : 0]             dato_recibido_r,
                    [9 : 0]             rx_o,
    pkg_global::bits_n                  addr2_o
                    
    ); 
```
##### Parámetros
- Este módulo no posee parámetros.

##### Entradas y salidas:
- `clk_i`: Señal de reloj
- `rst_i`: Señal para reset
- `miso_i`: Señal de datos de entarda MISO                                        
- `dato_in`: Señal de entrada de datos de ram
- `cntr_str_i`: Señal de entrada control
- `mosi_o`: Señal de datos de salida MOSI
- `we_rx_o`: Señal para Write Enable                                     
- `proccess_o`: Señal de salida del progreso de la maquina de estados
- `hold_ctrl_o`: Señal de salida control del SPI
- `we_ram2_o`: Señal de salida Write Enable de la ram
- `cs_ctrl_o`: Señal de control
- `sck_o`: Señal de un divisor de reloj     
- `dato_recibido_r`: Señal de que el dato fue recibido
- `addr2_o`: Datos de salida de el addres

##### Criterios de diseño

Modulo que contiene la maquina de estados para el control de los wr_en de la ram 2 y de las direcciones de esta misma


#### 3.2.7 Módulo module_reg_control
##### Encabezado del módulo
```SystemVerilog
module module_reg_control(

    input   logic                               clk_i,
                                                rst_i,
                                                send_i,
                                                proccess_i,
                                                we_rx_i,
                                                we_ex_i,
                     [9 : 0]                    in_rx_i,
                     [10 : 0]                   in_ex_i,
    output  pkg_global:: struct_reg_control     cntr_str_o   
    
    );
```
##### Parámetros
- Lista de parámetros

##### Entradas y salidas:
- `clk_i`: Entrada de reloj
- `rst_i`: Señal de reset
- `send_i`: Señal de entrada de enviar datos
- `proccess_i`: Señal de entrada de el proceso de la maquina de estados
- `we_rx_i`: Señal de entrada Write Enable
- `we_ex_i`: Señal de entrada Write Enable
- `in_rx_i`: Datos de entrada de registro 1
- `in_ex_i`: Datos de entrada de registro 2
- `cntr_str_o`: Registro de los estados


##### Criterios de diseño
Este modulo se encarga de el correcto control de los registros que se necesitan


#### 3.2.8 Módulo module_reg_datos
##### Encabezado del módulo
```SystemVerilog
module module_reg_datos(
    input  logic                        clk_i,  
    input  logic                        rst_i, 
    input  logic                        hold_ctrl_i,
    input  pkg_global::bits_n           addr1_i,//temporal
    input  pkg_global::bits_n           addr2_i,
    input  [10 : 0]                     in1_i,
    input  [7 : 0]                      in2_i,
    input  logic                        wr1_i,
    input  logic                        wr2_i,
    output pkg_global::bits_width       data_o
    );
```
##### Parámetros
- Lista de parámetros

##### Entradas y salidas:


- `clk_i`: Entrada de reloj
- `rst_i`: Señal de reset
- `hold_ctrl_i`: Etradad de control
- `addr1_i`: Datos de direccion 1
- `addr2_i`: Datos de direccion 2
- `in1_i`: Entrada de datos 1
- `in2_i`: Entrada de datos 2
- `wr1_i`: Señal de Write Enable 1
- `wr2_i`: Señal de Write Enable 2
- `data_o`: Datos de salida

##### Criterios de diseño

Este modulo que crea los registros a utiizar en forma de memoria ram


#### 3.2.9 Módulo module_mux_salida
##### Encabezado del módulo
```SystemVerilog
module module_mux_salida(
    input   logic                       selec_salida_i,
    input   logic   [31 : 0]            salida_datos_o,
                                        salidas_control_o,
    output  logic   [31 : 0]            salida_i            
    );
    
```

##### Entradas y salidas:

- `selec_salida_i`: Señal para seleccionar la salida
- `salida_datos_o`: Salida de datos del mux
- `salidas_control_o`: Salidas de datos de control
- `salida_i`: Datos para la salida seleccionada           

    

##### Criterios de diseño
Este modulo seleciona la salida de datos a necesitar.

#### 3.2.10 Módulo module_seg7_control 

Este módulo es el encargando de recibir los datos de los registros y pintar los datos en los displayse seleccionando de manera adecuada los cátodos y los ánodos.

##### Encabezado del módulo
```SystemVerilog

module module_seg7_control #(parameter real PERIODO = 1e-3)(
    
    input   logic               clk_10Mhz_i,
                                reset_i,
                    [31 : 0]    display_i,
    output  logic   [6 : 0]     display_o,
                    [7 : 0]     display_select_o
    
    );

```
##### Parámetros

- `PERIODO`: Define el periodo para la frecuecncia de refresco de los los displays.

##### Entradas y salidas:

- `clk_10MHz_i`: Clock de 10 MHz.
- `reset_i`: Botón de reset.
- `display_i`: Entrada de datos a pintar en los displays.
- `display_o`: Ánodos del display.
- `display_select_o`: Cátodos de los displays.


##### Criterios de diseño

Este módulo toma como entrada un dato de 32 bits que es el que se pintaría en los displays. Según se requiera, se activan los cátodos y ánodos correspondientes.

#### 3.2.11 Testbench
Descripción y resultados de las pruebas hechas


#### 3.2.12 Puertos Utilizados

| Señal         		| Pin   | En tarjeta    |
| :--------------------:|:-----:| :------------:|
| clk_100Mhz_pi        	| E3    | CLK100MHZ     |
| sw_we_pi              | U9    | SW0           |
| reg_sel_pi            | U8    | SW1           |
| locked_po             | T5    | LED4          |
| cs_ctrl_po            | P2    | LED15         |
| btn_send_pi           | E16	| BTNC          |
| rst_pi                | V10	| BTND          |
| mosi_po               | B13	| JA1           |
| mosi_pi               | F14	| JA2           |
| sw_addr_in_pi[0]      | R7    | SW2           |
| sw_addr_in_pi[1]      | R6    | SW3           |
| sw_entrada_pi[0]      | R5    | SW4           |
| sw_entrada_pi[1]      | V7    | SW5           |
| sw_entrada_pi[2]      | V6    | SW6           |
| sw_entrada_pi[3]      | V5    | SW7           |
| sw_entrada_pi[4]      | U4    | SW8           |
| sw_entrada_pi[5]      | V2    | SW9           |
| sw_entrada_pi[6]      | U2    | SW10          |
| sw_entrada_pi[7]      | T3    | SW11          |
| sw_entrada_pi[8]      | T1    | SW12          |
| sw_entrada_pi[9]      | R3    | SW13          |
| sw_entrada_pi[10]     | P3    | SW14          |
| display_po[0]     	| L3	| CA            |
| display_po[1]     	| N1	| CB            |
| display_po[2]     	| L5	| CC            |
| display_po[3]     	| L4	| CD            |
| display_po[4]     	| K3	| CE            |
| display_po[5]     	| M2	| CF            |
| display_po[6]     	| L6	| CG            |
| display_select_po[0]  | N6	| AN0           |
| display_select_po[1]  | M6	| AN1           |
| display_select_po[2]  | M3	| AN2           |
| display_select_po[3]  | N5	| AN3           |
| display_select_po[4]  | N2	| AN4           |
| display_select_po[5]  | N4	| AN5           |
| display_select_po[6]  | L1	| AN6           |
| display_select_po[7]  | M1	| AN7           |




#### 3.2.13 Constraints

```sdc
## Clock signal
##Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
set_property PACKAGE_PIN E3 [get_ports clk_100Mhz_pi]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100Mhz_pi]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_100Mhz_pi]



## Switches
##Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
set_property PACKAGE_PIN U9 [get_ports {sw_we_pi}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_we_pi}]
##Bank = 34, Pin name = IO_25_34,							Sch name = SW1
set_property PACKAGE_PIN U8 [get_ports {reg_sel_pi}]
set_property IOSTANDARD LVCMOS33 [get_ports {reg_sel_pi}]
##Bank = 34, Pin name = IO_L23P_T3_34,						Sch name = SW2
set_property PACKAGE_PIN R7 [get_ports {sw_addr_in_pi[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_addr_in_pi[0]}]
##Bank = 34, Pin name = IO_L19P_T3_34,						Sch name = SW3
set_property PACKAGE_PIN R6 [get_ports {sw_addr_in_pi[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_addr_in_pi[1]}]
##Bank = 34, Pin name = IO_L19N_T3_VREF_34,					Sch name = SW4
set_property PACKAGE_PIN R5 [get_ports {sw_entrada_pi[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[0]}]
##Bank = 34, Pin name = IO_L20P_T3_34,						Sch name = SW5
set_property PACKAGE_PIN V7 [get_ports {sw_entrada_pi[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[1]}]
##Bank = 34, Pin name = IO_L20N_T3_34,						Sch name = SW6
set_property PACKAGE_PIN V6 [get_ports {sw_entrada_pi[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[2]}]
##Bank = 34, Pin name = IO_L10P_T1_34,						Sch name = SW7
set_property PACKAGE_PIN V5 [get_ports {sw_entrada_pi[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[3]}]
##Bank = 34, Pin name = IO_L8P_T1-34,						Sch name = SW8
set_property PACKAGE_PIN U4 [get_ports {sw_entrada_pi[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[4]}]
##Bank = 34, Pin name = IO_L9N_T1_DQS_34,					Sch name = SW9
set_property PACKAGE_PIN V2 [get_ports {sw_entrada_pi[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[5]}]
##Bank = 34, Pin name = IO_L9P_T1_DQS_34,					Sch name = SW10
set_property PACKAGE_PIN U2 [get_ports {sw_entrada_pi[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[6]}]
##Bank = 34, Pin name = IO_L11N_T1_MRCC_34,					Sch name = SW11
set_property PACKAGE_PIN T3 [get_ports {sw_entrada_pi[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[7]}]
##Bank = 34, Pin name = IO_L17N_T2_34,						Sch name = SW12
set_property PACKAGE_PIN T1 [get_ports {sw_entrada_pi[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[8]}]
##Bank = 34, Pin name = IO_L11P_T1_SRCC_34,					Sch name = SW13
set_property PACKAGE_PIN R3 [get_ports {sw_entrada_pi[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[9]}]
##Bank = 34, Pin name = IO_L14N_T2_SRCC_34,					Sch name = SW14
set_property PACKAGE_PIN P3 [get_ports {sw_entrada_pi[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw_entrada_pi[10]}]


## LEDs
##Bank = 34, Pin name = IO_L12P_T1_MRCC_34,					Sch name = LED4
set_property PACKAGE_PIN T5 [get_ports {locked_po}]
set_property IOSTANDARD LVCMOS33 [get_ports {locked_po}]
##Bank = 34, Pin name = IO_L15P_T2_DQS_34,					Sch name = LED15
set_property PACKAGE_PIN P2 [get_ports cs_ctrl_po]
set_property IOSTANDARD LVCMOS33 [get_ports cs_ctrl_po]



##7 segment display
##Bank = 34, Pin name = IO_L2N_T0_34,						Sch name = CA
set_property PACKAGE_PIN L3 [get_ports {display_po[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[0]}]
##Bank = 34, Pin name = IO_L3N_T0_DQS_34,					Sch name = CB
set_property PACKAGE_PIN N1 [get_ports {display_po[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[1]}]
##Bank = 34, Pin name = IO_L6N_T0_VREF_34,					Sch name = CC
set_property PACKAGE_PIN L5 [get_ports {display_po[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[2]}]
##Bank = 34, Pin name = IO_L5N_T0_34,						Sch name = CD
set_property PACKAGE_PIN L4 [get_ports {display_po[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[3]}]
##Bank = 34, Pin name = IO_L2P_T0_34,						Sch name = CE
set_property PACKAGE_PIN K3 [get_ports {display_po[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[4]}]
##Bank = 34, Pin name = IO_L4N_T0_34,						Sch name = CF
set_property PACKAGE_PIN M2 [get_ports {display_po[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[5]}]
##Bank = 34, Pin name = IO_L6P_T0_34,						Sch name = CG
set_property PACKAGE_PIN L6 [get_ports {display_po[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[6]}]


##Bank = 34, Pin name = IO_L18N_T2_34,						Sch name = AN0
set_property PACKAGE_PIN N6 [get_ports {display_select_po[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[0]}]
##Bank = 34, Pin name = IO_L18P_T2_34,						Sch name = AN1
set_property PACKAGE_PIN M6 [get_ports {display_select_po[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[1]}]
##Bank = 34, Pin name = IO_L4P_T0_34,						Sch name = AN2
set_property PACKAGE_PIN M3 [get_ports {display_select_po[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[2]}]
##Bank = 34, Pin name = IO_L13_T2_MRCC_34,					Sch name = AN3
set_property PACKAGE_PIN N5 [get_ports {display_select_po[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[3]}]
##Bank = 34, Pin name = IO_L3P_T0_DQS_34,					Sch name = AN4
set_property PACKAGE_PIN N2 [get_ports {display_select_po[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[4]}]
##Bank = 34, Pin name = IO_L16N_T2_34,						Sch name = AN5
set_property PACKAGE_PIN N4 [get_ports {display_select_po[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[5]}]
##Bank = 34, Pin name = IO_L1P_T0_34,						Sch name = AN6
set_property PACKAGE_PIN L1 [get_ports {display_select_po[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[6]}]
##Bank = 34, Pin name = IO_L1N_T034,							Sch name = AN7
set_property PACKAGE_PIN M1 [get_ports {display_select_po[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[7]}]


##Buttons
##Bank = 15, Pin name = IO_L11N_T1_SRCC_15,					Sch name = BTNC
set_property PACKAGE_PIN E16 [get_ports btn_send_pi]
set_property IOSTANDARD LVCMOS33 [get_ports btn_send_pi]
##Bank = 14, Pin name = IO_L21P_T3_DQS_14,					Sch name = BTND
set_property PACKAGE_PIN V10 [get_ports rst_pi]
set_property IOSTANDARD LVCMOS33 [get_ports rst_pi]


##Pmod Header JA
##Bank = 15, Pin name = IO_L1N_T0_AD0N_15,					Sch name = JA1
set_property PACKAGE_PIN B13 [get_ports {mosi_po}]
set_property IOSTANDARD LVCMOS33 [get_ports {mosi_po}]
##Bank = 15, Pin name = IO_L5N_T0_AD9N_15,					Sch name = JA2
set_property PACKAGE_PIN F14 [get_ports {miso_pi}]
set_property IOSTANDARD LVCMOS33 [get_ports {miso_pi}]


create_generated_clock -name pllclk -source [get_ports clk_100Mhz_pi] -divide_by 10 [get_pins generate_clock_10Mhz/clk_10Mhz]
set_output_delay -clock [get_clocks pllclk] 0.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]

```



























### 3.3 Ejercicio 3. Lectura de un sensor de luminosidad

Este ejercicio se basa en poder leer un sensor de luminosidad y sus resultados poder pintarlos en los displays de la FPGA.

#### 3.3.1 Módulo top
Módulo más general del ejercicio el cual contiene e interconecta a todos los submódulos necesarios para el funcionamiento de la implementación requerida

##### Encabezado del módulo
```SystemVerilog
module top_tactico(
    
    input   logic               clk_100Mhz_pi,
                                rst_pi,
                                miso_pi,                 
    output logic                mosi_po, //puede ser un led, no se ocupa
                                locked_po,
                                cs_ctrl_po,
                                sck_po,
                    [6 : 0]     display_po,
                    [7 : 0]     display_select_po                     
    );
```
##### Parámetros
- Lista de parámetros

##### Entradas y salidas:
- `clk_100Mhz_pi` : Clock de la FPGA
- `rst_pi` :  Botón de Reset
- `miso_pi` : Señal MISO                  
- `mosi_po` : Señal MOSI
- `locked_po` : LED de locked
- `cs_ctrl_po` : Chip Select
- `sck_po` : 
- `display_po` : Ánodos del diplay
- `display_select_po` : Cátodos de los display                    


##### Criterios de diseño

Este módulo top sigue el siguiente diagrama de bloques:

<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/TOP3.png" >



#### 3.3.2 Módulo WCLK.xci
El archivo WCLL.xci crea un archivo verilog que contiene un circuito de reloj personalizado según los requisitos del reloj del usuario.

##### Encabezado del módulo

```SystemVerilog

module WCLK (
  // Clock out ports
  output        CLK_10MHZ,
  // Status and control signals
  output        locked,
  // Clock in ports
  input         CLK_100MHZ
 );
	
```

##### Parámetros
El módulo no posee parámetros.

##### Entradas y salidas:
- `CLK_100MHZ`: Entrada de reloj del módulo
- `locked`: Salida del módulo. Presenta un pulso una vez que el bloque WCLK se estabiliza.
- `CLK_10MHZ`: Salida del módulo. Genera un reloj con un periodo de 100ns.



#### 3.3.3 Módulo top_pmodALS
El archivo WCLL.xci crea un archivo verilog que contiene un circuito de reloj personalizado según los requisitos del reloj del usuario.

##### Encabezado del módulo

```SystemVerilog


module top_pmodALS(
    input    logic              clk_i,
                                rst_i,
                                proccess_i,
     pkg_global::bits_width     in_datos_i,                              
     output  logic              we_reg_control_o,
                                send_o,
                                selec_out_o,
     pkg_global::bits_n         addr_pmod_o,
     pkg_global::bits_width     entrada_display_o                
    );
    
	
```

##### Parámetros
El módulo no posee parámetros.

##### Entradas y salidas:


- `clk_i` : 
- `rst_i` : 
- `proccess_i` : 
- `in_datos_i` :                               
- `we_reg_control_o` : 
- `send_o` : 
- `selec_out_o` : 
- `addr_pmod_o` : 
- `entrada_display_o` :    

##### Criterios de diseño




#### 3.3.4 Módulo module_seg7_control 

Este módulo es el encargando de recibir los datos de los registros y pintar los datos en los displayse seleccionando de manera adecuada los cátodos y los ánodos.

##### Encabezado del módulo
```SystemVerilog

module module_seg7_control #(parameter real PERIODO = 1e-3)(
    
    input   logic               clk_10Mhz_i,
                                reset_i,
                    [31 : 0]    display_i,
    output  logic   [6 : 0]     display_o,
                    [7 : 0]     display_select_o
    
    );

```
##### Parámetros

- `PERIODO`: Define el periodo para la frecuecncia de refresco de los los displays.

##### Entradas y salidas:

- `clk_10MHz_i`: Clock de 10 MHz.
- `reset_i`: Botón de reset.
- `display_i`: Entrada de datos a pintar en los displays.
- `display_o`: Ánodos del display.
- `display_select_o`: Cátodos de los displays.


##### Criterios de diseño

Este módulo toma como entrada un dato de 32 bits que es el que se pintaría en los displays. Según se requiera, se activan los cátodos y ánodos correspondientes.



#### 3.3.X Testbench
Se simula el comportamiento del sensor haciendo que el MISO mande ceros en los primeros cuatro pulsos, informacion en los siguientes ocho pulsos y ceros en los ultimos cuatro pulsosos, para la autoverificacion se creo una variable llamada "autoverificación" que contiene solamente la informacion del MISO y la compara con la información que entra al display, si coincide se activa la variable "flag".

<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/sim3-1.jpeg" >
<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/sim3-2.jpeg" >

##### Postsintesis

<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/sim3-post.jpeg" >



#### 3.3.X Puertos Utilizados

| Señal         		| Pin   | En tarjeta    |
| :--------------------:|:-----:| :------------:|
| clk_100Mhz_pi        	| E3    | CLK100MHZ     |
| locked_po             | T8    | LED0          |
| mosi_po               | P2    | LED15         | 
| rst_pi                | V10   | BTND          |
| cs_ctrl_po            | B13   | JA1           |
| miso_pi               | D17   | JA3           |
| sck_po                | E17   | JA4           |  
| display_po[0]     	| L3	| CA            |
| display_po[1]     	| N1	| CB            |
| display_po[2]     	| L5	| CC            |
| display_po[3]     	| L4	| CD            |
| display_po[4]     	| K3	| CE            |
| display_po[5]     	| M2	| CF            |
| display_po[6]     	| L6	| CG            |
| display_select_po[0]  | N6	| AN0           |
| display_select_po[1]  | M6	| AN1           |
| display_select_po[2]  | M3	| AN2           |
| display_select_po[3]  | N5	| AN3           |
| display_select_po[4]  | N2	| AN4           |
| display_select_po[5]  | N4	| AN5           |
| display_select_po[6]  | L1	| AN6           |
| display_select_po[7]  | M1	| AN7           |




#### 3.3.X Constraints

```sdc

## Clock signal
##Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
set_property PACKAGE_PIN E3 [get_ports clk_100Mhz_pi]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100Mhz_pi]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_100Mhz_pi]


## LEDs
##Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
set_property PACKAGE_PIN T8 [get_ports {locked_po}]
set_property IOSTANDARD LVCMOS33 [get_ports {locked_po}]
set_property PACKAGE_PIN P2 [get_ports mosi_po]
set_property IOSTANDARD LVCMOS33 [get_ports mosi_po]


##7 segment display
##Bank = 34, Pin name = IO_L2N_T0_34,						Sch name = CA
set_property PACKAGE_PIN L3 [get_ports {display_po[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[0]}]
##Bank = 34, Pin name = IO_L3N_T0_DQS_34,					Sch name = CB
set_property PACKAGE_PIN N1 [get_ports {display_po[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[1]}]
##Bank = 34, Pin name = IO_L6N_T0_VREF_34,					Sch name = CC
set_property PACKAGE_PIN L5 [get_ports {display_po[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[2]}]
##Bank = 34, Pin name = IO_L5N_T0_34,						Sch name = CD
set_property PACKAGE_PIN L4 [get_ports {display_po[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[3]}]
##Bank = 34, Pin name = IO_L2P_T0_34,						Sch name = CE
set_property PACKAGE_PIN K3 [get_ports {display_po[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[4]}]
##Bank = 34, Pin name = IO_L4N_T0_34,						Sch name = CF
set_property PACKAGE_PIN M2 [get_ports {display_po[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[5]}]
##Bank = 34, Pin name = IO_L6P_T0_34,						Sch name = CG
set_property PACKAGE_PIN L6 [get_ports {display_po[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_po[6]}]
##Bank = 34, Pin name = IO_L18N_T2_34,						Sch name = AN0
set_property PACKAGE_PIN N6 [get_ports {display_select_po[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[0]}]
##Bank = 34, Pin name = IO_L18P_T2_34,						Sch name = AN1
set_property PACKAGE_PIN M6 [get_ports {display_select_po[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[1]}]
##Bank = 34, Pin name = IO_L4P_T0_34,						Sch name = AN2
set_property PACKAGE_PIN M3 [get_ports {display_select_po[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[2]}]
##Bank = 34, Pin name = IO_L13_T2_MRCC_34,					Sch name = AN3
set_property PACKAGE_PIN N5 [get_ports {display_select_po[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[3]}]
##Bank = 34, Pin name = IO_L3P_T0_DQS_34,					Sch name = AN4
set_property PACKAGE_PIN N2 [get_ports {display_select_po[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[4]}]
##Bank = 34, Pin name = IO_L16N_T2_34,						Sch name = AN5
set_property PACKAGE_PIN N4 [get_ports {display_select_po[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[5]}]
##Bank = 34, Pin name = IO_L1P_T0_34,						Sch name = AN6
set_property PACKAGE_PIN L1 [get_ports {display_select_po[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[6]}]
##Bank = 34, Pin name = IO_L1N_T034,							Sch name = AN7
set_property PACKAGE_PIN M1 [get_ports {display_select_po[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {display_select_po[7]}]


##Buttons
set_property PACKAGE_PIN V10 [get_ports rst_pi]
set_property IOSTANDARD LVCMOS33 [get_ports rst_pi]


##Pmod Header JA
##Bank = 15, Pin name = IO_L1N_T0_AD0N_15,					Sch name = JA1
set_property PACKAGE_PIN B13 [get_ports {cs_ctrl_po}]
set_property IOSTANDARD LVCMOS33 [get_ports {cs_ctrl_po}]
##Bank = 15, Pin name = IO_L16N_T2_A27_15,					Sch name = JA3
set_property PACKAGE_PIN D17 [get_ports {miso_pi}]
set_property IOSTANDARD LVCMOS33 [get_ports {miso_pi}]
##Bank = 15, Pin name = IO_L16P_T2_A28_15,					Sch name = JA4
set_property PACKAGE_PIN E17 [get_ports {sck_po}]
set_property IOSTANDARD LVCMOS33 [get_ports {sck_po}]


create_generated_clock -name pllclk -source [get_ports clk_100Mhz_pi] -divide_by 10 [get_pins generate_clock_10Mhz/clk_10Mhz]
set_output_delay -clock [get_clocks pllclk] 0.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" }]


```


### 3.4 Ejercicio 4. Sistema Integrado de Monitoreo

Esta parte integra el sensor de luminosidad del eejercicio anterior y se combina con una targeta SD por lo cual se va a explicar el funcionamiento e inicializacion de la SD junto con los modos de uso que se añaden.

#### 3.4.1 Módulo top_mis_cojones
##### Encabezado del módulo
```SystemVerilog
module top_mis_cojones(
   input logic  enable_inicializar_sd_i,
                clk_100Mhz_pi,
                rst_pi,
                miso_pi,
   output logic mosi_po,
                locked_po,
                cs_ctrl_po,
                [6 : 0]display_po,
                [7 : 0]display_select_po
    );
```
##### Parámetros
- No posee parametros

##### Entradas y salidas:
- `enable_inicializar_sd_i`: Señal para inicializar  la SD
- `clk_100Mhz_pi`: Entrada de reloj
- `rst_pi`: Señal de reset
- `miso_pi`: Señal de entrada de MISO
- `mosi_po`: Señal de salida MOSI
- `locked_po`: Señal de salida de locked
- `cs_ctrl_po`: Señal de salida de control
- `display_po`: Señal de 7 bits del display 
- `display_select_po`: Salida de 8 bits del display

##### Criterios de diseño
Este top controla la inicializacion de la SD


#### 3.4.2 Módulo top_tactico

Este es un pseudo top que contiene los modulos top_interface_spi y module_seg7_control vistos anteriormente en su funcionamiento.

#### 3.4.3 Módulo module_inicializar_sd

##### Encabezado del módulo
```SystemVerilog
module module_inicializar_sd(

    input  logic               	clk_i,
                               	rst_i,
				process_sd_i,
				enable_inicializar_sd_i,
				flags_i,
    output logic		we_sd_o,
				send_o,
				slc_mux_sd_o,
				c1_o,
	[4  : 0]		pasitos_o,
	[1  : 0]		comando_o,
	[9  : 0] 		addr2_sd_o,
	[30 : 0] 		data_sd_o                                            
    );
```
##### Parámetros
- No posee parametros

##### Entradas y salidas:
- `clk_i`: Entrada de reloj
- `rst_i`: Entrada de señal de reset
- `process_sd_i`: Entradad de el proceso de la SD
- `enable_inicializar_sd_i`: Señal para inicializar la SD
- `flags_i`: Señal de entrada del flag
- `we_sd_o`: Señal de salida para wr de la SD
- `send_o`: Señal de salida de send
- `slc_mux_sd_o`: Señal de salida del selector de mux de la SD
- `c1_o`: Señal de salida que indica la finalizacion de la inicialización
- `pasitos_o`: Señal de 5 bits que muestra el paso que se esta ejecutando
- `comando_o`: Señal de 2 bits que muestra el comando en ejecución
- `addr2_sd_o`: Señal de 10 bits que muestar el addres en la SD
- `data_sd_o`: Datos de 31 bits de la SD

##### Criterios de diseño
Este modulo genera toda la inicializacion de la SD con varios case de los comando que se deben ejecutar en su orden respectivo

#### 3.4.4 Módulo module_flags_sd

##### Encabezado del módulo
```SystemVerilog
module module_flags_sd(
    input  logic        [1  : 0]		comando_i,
			[31 : 0]		salida_spi_sd_i,
    output logic				flags_o                   
    );
```
##### Parámetros
- No posee parametros

##### Entradas y salidas:
- `salida_spi_sd_i`: Entrada de 32 bits de la SPI
- `flags_o`: Salida de el flag
- `comando_i`: Señal de 2 bits para el comando de la SD

##### Criterios de diseño
Este modulo genera la señal de salida de flag


#### 3.4.5 Testbench
Pruebas de la inicializacion de la SD

<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/inicializarsd1.png" >
<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/inicializarsd2.png" >

#### 3.4.6 Modo de captura

#### 3.4.7 Módulo top_mis_cojones

Se usa el mismo top que en la incializacion de la sd jumto con los modulos top_tactico y module_flags_sd los cuales ya se explicaron anteriormente, se incorpora el siguiente modulo.

#### 3.4.8 Módulo module_guardar_sd

##### Encabezado del módulo
```SystemVerilog
module module_guardar_sd(
  input  logic                      	clk_i,
                                    	rst_i,
					process_sd_i,
	                		enable_guardar_sd_i,
					flags_i,
                    	[7 :  0]        data_memoria_micro_i,
  output logic				we_sd_o,
					we_micro_o,
					send_o,
					slc_mux_sd_o,
					c4_o, 		
			[4 :  0]	pasitos_envio_o,
			[1 :  0]	comando_o,				
			[9  : 0]       	addr2_micro_o,
			[9  : 0]       	addr2_sd_o,
			[31 : 0] 	data_sd_o
```
##### Parámetros
- No posee parametros

##### Entradas y salidas:
- `clk_i`: Entrada de reloj
- `rst_i`: Entrada de señal de reset
- `process_sd_i`: Entrada de proceso de SD
- `enable_guardar_sd_i`: Señal para habilitar el guardado en la SD
- `flags_i`: Entrada de señal de flag
- `data_memoria_micro_i`: Entrada de 8 bits de dato de memoria
- `we_sd_o`: Señal de salida de wr de la SD
- `we_micro_o`: Señal de wr de micro intruccion
- `send_o`: Señal de envio de datos
- `slc_mux_sd_o`: Señal de selecionde mux de la SD
- `c4_o`: Señal de indicacion de la finalizacion de el envio de datos a la SD		
- `pasitos_envio_o`: Señal de 5 bits que muetran el paso en ejecución
- `comando_o`: Señal de 2 que muestran el comando en ejecución				
- `addr2_micro_o`: Señal de 10 bits que muesta la Direccion de la microinstrucción
- `addr2_sd_o`: Señal de 10 bits que muestar la direccion de la SD 
- `data_sd_o`: Señal de datos de 32 bits

##### Criterios de diseño
Este modulo hace el envio y verificacion de los 512 paquetes de datos a la SD haciendo verificaciones de las respuestas esperadas


#### 3.4.9 Testbench
Pruebas de la el envio de datos a la SD

<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/modocaptura.png" >
<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/modocaptura2.png" >

#### 3.4.1.0 Módulo top_mis_cojones

Se usa el mismo top que en la incializacion de la sd jumto con los modulos top_tactico y module_flags_sd los cuales ya se explicaron anteriormente, se incorpora el siguiente modulo.

#### 3.4.1.1 Módulo module_explorar_sd

##### Encabezado del módulo
```SystemVerilog
module module_guardar_sd(
  input  logic                      	clk_i,
                                    	rst_i,
					process_sd_i,
	                		enable_explorador_sd_i,
					flags_i,
                    	[31 :  0]        data_sd_i,
  output logic				we_sd_o,
					we_micro_o,
					send_o,
					slc_mux_sd_o,	
			[1 :  0]	comando_o,
			[7 :  0]        data_memoria_micro_o,
			[9  : 0]       	addr2_micro_o,
			[9  : 0]       	addr2_sd_o,
			[31 : 0] 	data_sd_o
```
##### Parámetros
- No posee parametros

##### Entradas y salidas:
- `clk_i`: Entrada de reloj
- `rst_i`: Entrada de señal de reset
- `process_sd_i`: Entrada de proceso de SD
- `enable_explorador_sd_i`: Señal para habilitar el explorador en la SD
- `flags_i`: Entrada de señal de flag
- `data_sd_i`: Entrada de 32 bits de dato de SD
- `we_sd_o`: Señal de salida de wr de la SD
- `we_micro_o`: Señal de wr de micro intruccion
- `send_o`: Señal de envio de datos
- `slc_mux_sd_o`: Señal de selecionde mux de la SD		
- `comando_o`: Señal de 2 que muestran el comando en ejecución
- `data_memoria_micro_o`: Señal de 8 bits de los datos de memoria
- `addr2_micro_o`: Señal de 10 bits que muesta la Direccion de la microinstrucción
- `addr2_sd_o`: Señal de 10 bits que muestar la direccion de la SD 
- `data_sd_o`: Señal de datos de 32 bits

##### Criterios de diseño
Este modulo hace la lectura y verificacion de los 512 paquetes de datos en la SD con los comandos y respuestas esperadas


#### 3.4.1.2 Testbench
Pruebas de la lectura de datos a la SD

<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/explorador.png" >
<img src="https://github.com/TDD-II-22/lab03spi-g03/blob/main/Imagenes/exploradorprimero.png" >





























## Apendices:
### Apendice 1:
texto, imágen, etc
