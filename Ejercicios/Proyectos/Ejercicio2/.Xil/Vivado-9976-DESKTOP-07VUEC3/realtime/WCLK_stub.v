// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module WCLK(CLK_10MHZ, locked, CLK_100MHZ);
  output CLK_10MHZ;
  output locked;
  input CLK_100MHZ;
endmodule
