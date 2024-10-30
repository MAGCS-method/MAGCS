module top(y, clk, wire39, wire38, wire36, wire35);
  output wire [(32'h300):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h7):(1'h0)] wire39;
  input wire signed [(3'h6):(1'h0)] wire38;
  input wire [(4'h8):(1'h0)] wire36;
  input wire signed [(5'h14):(1'h0)] wire35;
  wire [(4'h9):(1'h0)] wire60;
  wire [(4'hc):(1'h0)] wire56;
  wire signed [(3'h6):(1'h0)] wire40;
  reg signed [(5'h11):(1'h0)] reg79 = (1'h0);
  reg [(4'hb):(1'h0)] reg67 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg66 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg65 = (1'h0);
  reg [(4'ha):(1'h0)] reg61 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg50 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg48 = (1'h0);
  reg [(3'h5):(1'h0)] reg46 = (1'h0);
  assign y = {wire60,wire56,wire40,reg46,reg48,reg50,reg61,reg65,reg66,reg67,reg79,(1'h0)};
  always
    @(posedge clk) begin
      reg46 <= $signed($signed($signed($unsigned($unsigned(wire40)))));
      reg48 <= (|{(~&$signed(reg46[(3'h5):(3'h5)]))});
      if ($signed($signed({reg48[(5'h13):(3'h6)]})))
        begin
          reg66 <= (8'hb0);
          reg67 <= ((reg46 ? ($unsigned(reg61) ? {reg48} : (~|$signed(reg65))) : (wire56 ? ($signed(wire56) == wire39[(1'h0):(1'h0)]) : wire38[(3'h5):(3'h4)])) ^~ $signed({(reg50 ? reg66 : wire60[(1'h1):(1'h1)])}));
        end
      reg79 <= (~|reg67[(4'h8):(3'h5)]);
    end
endmodule

