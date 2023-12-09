module keyboard_posedge_detector(
  input logic [15:0] keyboard_input,
  output logic posedge_detected
);

  // Define an array of flip-flops to store the previous values of keyboard_input
  logic [15:0] prev_keyboard_input;

  always @(keyboard_input) begin
    // Check if keyboard_input is currently high and the previous value was low for any bit
    if ((keyboard_input & ~prev_keyboard_input) != 16'b0) begin
      posedge_detected <= 1'b1;
    end else begin
      posedge_detected <= 1'b0;
    end
    // Store the current value of keyboard_input for the next cycle
    prev_keyboard_input <= keyboard_input;
  end
  
endmodule
