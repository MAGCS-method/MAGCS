module top  (y, clk, wire41);
  output wire [(32'hb4):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'hb):(1'h0)] wire41;
  reg [(4'hc):(1'h0)] reg52 = (1'h0);
  reg signed [(5'h13):(1'h0)] forvar51 = (1'h0);
  assign y = {reg52, forvar51, (1'h0)};
  always
    @(posedge clk) begin
          reg52 <= ($unsigned("ZUELbclKNBDkg") >> ((!(8'haf)) ?
              (((forvar51 ?
                  forvar51 : forvar51) >>> "rgME0fm2sGbNKIM") | "v3infxa") : ({(wire41 * (7'h42)),
                  forvar51[(5'h11):(5'h10)]} - "MnuDV3tH0SRzLBV")));
    end
endmodule
