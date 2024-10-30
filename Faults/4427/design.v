module top
(y, clk,wire2);
  output wire [(32'h378):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h5):(1'h0)] wire2;
  wire [(2'h3):(1'h0)] wire17;
  assign y = {wire17,
                 wire2,
                 (1'h0)};
  assign wire17 = wire2;
endmodule

module module282
(y, clk, wire284);
  output wire [(32'h53b):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'h8):(1'h0)] wire284;
  wire [(4'hf):(1'h0)] wire288;
  reg [(2'h3):(1'h0)] reg294 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg289 = (1'h0);
  assign y = {wire284,
                 wire288,
                 reg294,
                 reg289,                 
                 (1'h0)};
  always
    @(posedge clk) begin
      if ($signed(wire284[(2'h2):(1'h1)]))
        begin
              reg294 <= $signed(({wire288[(3'h5):(1'h1)]} ?
                  reg289[(3'h6):(3'h5)] : {"Qvfoo317cEkxs2d",
                      ($unsigned((8'hb6)) ? "t" : "eLOYX7WZioxFD2iW")}));
        end
    end
endmodule
