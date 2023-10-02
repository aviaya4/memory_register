`include "uvm_macros.svh"
import uvm_pkg::*;
import reg_mem_pkg::*;

module top;
  reg_mem_if  mem_if(); 
  reg_mem DUT(mem_if.reg_mem_mp);
				
  initial begin
    uvm_config_db#(virtual reg_mem_if)::set(null, "*", "reg_mem_vif", mem_if);
    run_test("mem_tb");
  end
   
  // System tasks to dump VCD waveform file
  initial begin
    $dumpvars;
    $dumpfile ("dump.vcd");
  end
endmodule// top