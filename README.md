
# Lab 3. Interfaces con periféricos

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays
- **SPI**: Serial Peripheral Interface

## 2. Referencias
[1] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo


### 3.1 Ejercicio 1. Display de 7 segmentos Extendido
#### 3.1.1 Módulo top
##### Encabezado del módulo

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

#### 3.1.X Testbench
Descripción y resultados de las pruebas hechas


#### 3.1.X Puertos Utilizados

#### 3.1.X Constraints







### 3.1 Ejercicio 1. Display de 7 segmentos Extendido
#### 3.1.1 Módulo top
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


#### 3.1.2 Módulo _________
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

#### 3.1.X Testbench
Descripción y resultados de las pruebas hechas
















### 3.2 Ejercicio 2. Interfaz SPI Maestro
#### 3.2.1 Módulo top
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

#### 3.2.X Testbench
Descripción y resultados de las pruebas hechas

















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
