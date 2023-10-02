package reg_mem_pkg;
   import uvm_pkg::*;

   virtual interface reg_mem_if global_mem_if; // usefull only if uvm_config_db is not used.
 
`include "uvm_macros.svh"
      
   // uvm_objects
`include "reg_mem_if.v"

  // uvm_transactions
  
`include "gen_item_seq.v" 
`include "reg_item.v" 

  // uvm_agents

`include "driver.v"
`include "monitor.v"
`include "agent.v"
`include "scoreboard.v" 


  // uvm_environments
`include "env.v"

  // uvm_tests
`include "mem_tb.v"   


endpackage // reg_mem_pkg
   
