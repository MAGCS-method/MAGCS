module top  (y_1, y_2, clk, wire4, wire3, wire2, wire1, wire0);
  output wire [(7'h5a):(1'h0)] y_1;
  output wire [(7'h5a):(1'h0)] y_2;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'ha):(1'h0)] wire4;
  input wire signed [(2'h2):(1'h0)] wire3;
  input wire signed [(3'h7):(1'h0)] wire2;
  input wire signed [(4'h8):(1'h0)] wire1;
  input wire [(5'h11):(1'h0)] wire0;
  top_1 #() top_1 (y_1, clk, wire4, wire3, wire2, wire1, wire0);
  top_2 #() top_2 (y_2, clk, wire4, wire3, wire2, wire1, wire0);
  always
    @(posedge clk) begin
      assert ((y_1 == y_2));
    end
endmodule