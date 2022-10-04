
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
| :----------------------:|:-----:| :-------------:|
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
Diagramas, texto explicativo...



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




#### 3.2.2 Módulo ______
##### Encabezado del módulo
```SystemVerilog
module mi_modulo(
    input logic     entrada_i,      
    output logic    salida_i 
    );
```
##### Parámetros
- Lista de parámetros

##### Entradas y salidas:
- `entrada_i`: descripción de la entrada
- `salida_i`: descripción de la salida

##### Criterios de diseño
Diagramas, texto explicativo...


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

#### 3.2.X Testbench
Descripción y resultados de las pruebas hechas


#### 3.2.X Puertos Utilizados

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




#### 3.2.X Constraints

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
#### 3.3.1 Módulo top
##### Encabezado del módulo
```SystemVerilog
module mi_modulo(
    input logic     entrada_i,      
    output logic    salida_i 
    );
```
##### Parámetros
- Lista de parámetros

##### Entradas y salidas:
- `entrada_i`: descripción de la entrada
- `salida_i`: descripción de la salida

##### Criterios de diseño
Diagramas, texto explicativo...


#### 3.3.2 Módulo _____
##### Encabezado del módulo
```SystemVerilog
module mi_modulo(
    input logic     entrada_i,      
    output logic    salida_i 
    );
```
##### Parámetros
- Lista de parámetros

##### Entradas y salidas:
- `entrada_i`: descripción de la entrada
- `salida_i`: descripción de la salida

##### Criterios de diseño
Diagramas, texto explicativo...


#### 3.3.X Testbench
Descripción y resultados de las pruebas hechas

















### 3.4 Ejercicio 4. Sistema Integrado de Monitoreo
#### 3.4.1 Módulo top
##### Encabezado del módulo
```SystemVerilog
module mi_modulo(
    input logic     entrada_i,      
    output logic    salida_i 
    );
```
##### Parámetros
- Lista de parámetros

##### Entradas y salidas:
- `entrada_i`: descripción de la entrada
- `salida_i`: descripción de la salida

##### Criterios de diseño
Diagramas, texto explicativo...


#### 3.4.2 Módulo _____
##### Encabezado del módulo
```SystemVerilog
module mi_modulo(
    input logic     entrada_i,      
    output logic    salida_i 
    );
```
##### Parámetros
- Lista de parámetros

##### Entradas y salidas:
- `entrada_i`: descripción de la entrada
- `salida_i`: descripción de la salida

##### Criterios de diseño
Diagramas, texto explicativo...


#### 3.4.X Testbench
Descripción y resultados de las pruebas hechas















## Apendices:
### Apendice 1:
texto, imágen, etc
