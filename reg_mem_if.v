// The interface allows verification components to access DUT signals
// using a virtual interface handle
interface reg_mem_if ;
  logic 	    rstn;
  logic [7:0]   addr;
  logic [15:0]  wdata;
  logic [15:0]  rdata;
  logic 		wr;
  logic 		sel;
  logic 		ready;
  logic         clk;
  
  modport reg_mem_mp( 
					  input   rstn;
					  input   addr;
					  input   wdata;
					  output  rdata;
					  input   wr;
					  input   sel;
					  output  ready;
					  input   clk;
					);
					
   initial begin : clock_gen
      clk = 0;
      forever #10 clk = ~clk; // setting 20ns period clock waveform.
   end
  
endinterface // reg_mem_if