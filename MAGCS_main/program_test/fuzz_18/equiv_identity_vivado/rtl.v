module top  (y, clk, wire4, wire3, wire2, wire1, wire0);
  output wire [(32'h181):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'ha):(1'h0)] wire4;
  input wire signed [(2'h2):(1'h0)] wire3;
  input wire signed [(3'h7):(1'h0)] wire2;
  input wire signed [(4'h8):(1'h0)] wire1;
  input wire [(5'h11):(1'h0)] wire0;
  wire [(5'h15):(1'h0)] wire34;
  wire [(4'hc):(1'h0)] wire33;
  wire signed [(2'h2):(1'h0)] wire32;
  wire [(4'hd):(1'h0)] wire31;
  wire [(4'he):(1'h0)] wire30;
  wire signed [(5'h15):(1'h0)] wire29;
  wire signed [(2'h2):(1'h0)] wire28;
  wire signed [(4'ha):(1'h0)] wire27;
  wire signed [(5'h15):(1'h0)] wire26;
  wire [(5'h15):(1'h0)] wire25;
  wire [(5'h12):(1'h0)] wire24;
  wire signed [(5'h12):(1'h0)] wire23;
  wire [(5'h10):(1'h0)] wire22;
  wire signed [(3'h6):(1'h0)] wire21;
  wire signed [(4'hc):(1'h0)] wire20;
  wire signed [(5'h13):(1'h0)] wire9;
  wire [(5'h14):(1'h0)] wire5;
  reg signed [(5'h10):(1'h0)] reg19 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg18 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg17 = (1'h0);
  reg [(5'h13):(1'h0)] reg16 = (1'h0);
  reg signed [(4'he):(1'h0)] reg15 = (1'h0);
  reg [(3'h4):(1'h0)] reg14 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg13 = (1'h0);
  reg [(3'h7):(1'h0)] reg12 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg11 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg10 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg8 = (1'h0);
  reg [(5'h10):(1'h0)] reg7 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg6 = (1'h0);
  assign y = {wire34,
                 wire33,
                 wire32,
                 wire31,
                 wire30,
                 wire29,
                 wire28,
                 wire27,
                 wire26,
                 wire25,
                 wire24,
                 wire23,
                 wire22,
                 wire21,
                 wire20,
                 wire9,
                 wire5,
                 reg19,
                 reg18,
                 reg17,
                 reg16,
                 reg15,
                 reg14,
                 reg13,
                 reg12,
                 reg11,
                 reg10,
                 reg8,
                 reg7,
                 reg6,
                 (1'h0)};
  assign wire5 = wire4;
  always
    @(posedge clk) begin
      reg6 <= ((~wire2) == (wire0[(4'hf):(4'h9)] ?
          (wire0[(4'hf):(4'hc)] ?
              $unsigned({wire4,
                  wire3}) : (!(wire1 <= (8'ha5)))) : wire2[(3'h4):(2'h2)]));
      reg7 <= wire4[(2'h2):(2'h2)];
      reg8 <= wire5;
    end
  assign wire9 = reg6;
  always
    @(posedge clk) begin
      reg10 <= wire2;
      if (wire2)
        begin
          reg11 <= wire5[(4'he):(4'hc)];
          reg12 <= $unsigned(({(wire3[(1'h1):(1'h0)] + {(8'hba), (8'hbd)})} ?
              (reg10[(3'h4):(1'h0)] ?
                  (!(8'ha5)) : $unsigned($signed(wire4))) : {$signed((wire0 * reg10))}));
          if ((~^wire2[(3'h4):(1'h1)]))
            begin
              reg13 <= reg7;
              reg14 <= $unsigned(wire1[(2'h3):(1'h0)]);
            end
          else
            begin
              reg13 <= $signed($signed((-($signed(wire3) * reg11))));
              reg14 <= $signed((-{wire0}));
              reg15 <= wire3;
              reg16 <= $unsigned(reg13);
              reg17 <= reg8[(4'hb):(3'h5)];
            end
        end
      else
        begin
          if ($signed(reg17[(4'h8):(3'h5)]))
            begin
              reg11 <= ((~{reg11[(1'h1):(1'h0)]}) ?
                  (wire5 ? $signed(wire3) : reg7[(4'h8):(2'h3)]) : reg15);
              reg12 <= wire1;
            end
          else
            begin
              reg11 <= $unsigned(reg17[(2'h2):(1'h1)]);
              reg12 <= wire0[(4'he):(4'hc)];
            end
          reg13 <= (($signed($unsigned((reg13 ? reg17 : reg8))) ^ reg11) ?
              (|(wire0 >> $unsigned((reg13 ~^ reg10)))) : ({$unsigned(reg8),
                  $signed((reg15 ?
                      reg11 : wire9))} - ((-reg12) && $unsigned((wire5 || reg8)))));
        end
      reg18 <= $signed(reg15);
      reg19 <= wire4[(2'h3):(2'h3)];
    end
  assign wire20 = (wire9 ?
                      (($unsigned(((7'h44) >= reg6)) * reg12) ^ (($signed(reg19) ?
                          (reg17 == wire0) : $unsigned(reg8)) <= ($unsigned((8'ha5)) & reg11))) : {$unsigned($unsigned((8'hb4)))});
  assign wire21 = $signed(reg17[(4'h8):(3'h6)]);
  assign wire22 = ($unsigned($unsigned(reg12)) ^ ($unsigned($signed(wire9)) ?
                      $signed(((~&reg16) == {reg11,
                          reg19})) : reg17[(2'h3):(1'h0)]));
  assign wire23 = reg18;
  assign wire24 = (~&$unsigned(($unsigned($signed(reg16)) == $unsigned($unsigned(wire21)))));
  assign wire25 = {($signed(((wire22 ? (8'hb3) : reg12) ?
                          (wire1 ?
                              (8'ha0) : wire3) : (8'hb2))) << $unsigned((^~$unsigned(wire4)))),
                      wire23};
  assign wire26 = (!((wire22 ? (8'hb8) : $unsigned($unsigned(wire20))) ?
                      wire24[(1'h1):(1'h0)] : ((~&$unsigned(wire23)) || wire24[(5'h12):(2'h3)])));
  assign wire27 = (reg10[(1'h1):(1'h0)] || (^~$unsigned($signed($signed(reg18)))));
  assign wire28 = (^~wire3);
  assign wire29 = $unsigned($unsigned((~|$unsigned(wire4[(4'h9):(3'h4)]))));
  assign wire30 = reg17;
  assign wire31 = $signed((8'ha1));
  assign wire32 = (7'h42);
  assign wire33 = (($unsigned(($unsigned((7'h43)) >> {reg14,
                          reg19})) ~^ ((^~$unsigned(reg10)) ?
                          ((|(8'ha7)) ?
                              (wire32 ?
                                  wire21 : reg18) : (~reg8)) : $signed(reg17[(2'h2):(1'h0)]))) ?
                      (~|wire22[(1'h1):(1'h0)]) : $signed(reg19[(2'h3):(1'h0)]));
  assign wire34 = wire20;
endmodule