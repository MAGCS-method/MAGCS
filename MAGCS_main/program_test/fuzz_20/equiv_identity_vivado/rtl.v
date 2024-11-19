module top
#(parameter param30 = ((8'h9d) ? ({(~|(-(8'h9e))), (((8'hb1) ? (8'hbe) : (8'hb1)) - (8'ha7))} >>> {({(8'hbc)} && ((8'hb6) ? (8'ha0) : (8'ha5))), ((-(7'h44)) ? {(8'haa)} : ((8'h9f) ? (8'hb4) : (7'h40)))}) : ((({(8'hbf), (7'h43)} >> ((8'ha9) | (8'had))) >> ((-(8'hb0)) ? (&(8'hb6)) : ((8'hb8) || (8'ha9)))) <= (-(7'h44)))), 
parameter param31 = param30)
(y, clk, wire3, wire2, wire1, wire0);
  output wire [(32'h11b):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'h9):(1'h0)] wire3;
  input wire [(3'h6):(1'h0)] wire2;
  input wire signed [(3'h5):(1'h0)] wire1;
  input wire signed [(3'h5):(1'h0)] wire0;
  wire signed [(3'h4):(1'h0)] wire28;
  wire [(2'h2):(1'h0)] wire6;
  wire [(5'h10):(1'h0)] wire5;
  wire signed [(4'he):(1'h0)] wire4;
  reg signed [(2'h2):(1'h0)] reg29 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg27 = (1'h0);
  reg [(3'h5):(1'h0)] reg26 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg25 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg24 = (1'h0);
  reg [(4'ha):(1'h0)] reg23 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg22 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg21 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg20 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg19 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg18 = (1'h0);
  reg [(5'h10):(1'h0)] reg17 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg16 = (1'h0);
  reg [(4'hf):(1'h0)] reg15 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg14 = (1'h0);
  reg [(5'h13):(1'h0)] reg13 = (1'h0);
  reg [(2'h3):(1'h0)] reg12 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg11 = (1'h0);
  reg [(5'h11):(1'h0)] reg10 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg9 = (1'h0);
  reg [(5'h14):(1'h0)] reg8 = (1'h0);
  reg [(4'ha):(1'h0)] reg7 = (1'h0);
  assign y = {wire28,
                 wire6,
                 wire5,
                 wire4,
                 reg29,
                 reg27,
                 reg26,
                 reg25,
                 reg24,
                 reg23,
                 reg22,
                 reg21,
                 reg20,
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
                 reg9,
                 reg8,
                 reg7,
                 (1'h0)};
  assign wire4 = wire1;
  assign wire5 = ((wire0 ?
                     $unsigned(wire3[(1'h1):(1'h0)]) : wire2[(1'h0):(1'h0)]) | $unsigned($signed({$signed(wire4),
                     (wire0 != wire3)})));
  assign wire6 = {(8'hae)};
  always
    @(posedge clk) begin
      if ((^($unsigned((~|$unsigned(wire5))) ?
          wire6[(1'h0):(1'h0)] : (((wire6 ? (8'had) : wire1) ?
              (wire0 ?
                  wire4 : wire5) : (~^wire6)) + $unsigned($signed(wire4))))))
        begin
          reg7 <= wire1[(2'h2):(2'h2)];
          if ((wire3[(1'h0):(1'h0)] != $unsigned(wire0[(3'h5):(3'h4)])))
            begin
              reg8 <= ($unsigned({{wire4, (wire5 ? wire0 : (8'hb4))}}) ?
                  $signed((~$signed(((8'hb1) ? wire3 : (8'hbf))))) : wire1);
            end
          else
            begin
              reg8 <= $signed($unsigned({(wire1[(1'h0):(1'h0)] ?
                      reg7[(2'h3):(1'h1)] : (~^wire2)),
                  ((reg7 ? wire2 : wire2) >= (reg7 && (7'h40)))}));
              reg9 <= $signed((wire5[(4'h9):(3'h7)] ^ wire5));
              reg10 <= {{wire5[(4'hf):(3'h7)]}};
              reg11 <= reg7[(3'h7):(2'h3)];
              reg12 <= wire6[(1'h0):(1'h0)];
            end
          reg13 <= (~|reg8[(4'h9):(3'h6)]);
          reg14 <= (wire6 * (~|(({reg9} <<< wire6) ?
              ((|wire3) ? (~^reg9) : wire5) : $unsigned(reg9[(1'h0):(1'h0)]))));
        end
      else
        begin
          reg7 <= {(!reg12[(1'h0):(1'h0)]),
              {$signed(((8'hb8) ? reg8 : ((7'h40) * (8'ha9))))}};
          reg8 <= ($signed(reg10) ?
              (~|$unsigned($signed((~wire0)))) : ((wire3 ?
                  wire3[(4'h8):(3'h6)] : (+$signed(reg14))) != $signed(wire6[(1'h1):(1'h1)])));
          reg9 <= $unsigned(($unsigned(reg11) ?
              wire3 : $unsigned(($unsigned(reg11) ?
                  (reg9 + wire1) : wire5[(4'hc):(2'h3)]))));
          reg10 <= (($unsigned({wire5, reg14[(2'h3):(2'h2)]}) ?
              $unsigned(reg14) : (((~^wire0) <<< wire4[(4'hd):(1'h0)]) & reg9[(1'h1):(1'h0)])) >> $unsigned((~^(reg10[(4'ha):(2'h3)] && $signed(reg7)))));
          if ((reg8 ? (wire2 ^~ {{((8'ha0) ^ (7'h40))}}) : reg8[(2'h3):(1'h0)]))
            begin
              reg11 <= wire0[(3'h4):(1'h0)];
              reg12 <= (^{(((7'h44) <= $signed(wire1)) ?
                      ((~|(8'hbc)) >= (|reg7)) : (reg10[(4'hc):(3'h5)] ?
                          $unsigned((8'hb9)) : reg8[(1'h1):(1'h0)])),
                  (-{(&(8'ha7))})});
              reg13 <= wire6[(1'h0):(1'h0)];
              reg14 <= (($unsigned($unsigned($unsigned(reg14))) ?
                  (-((8'hbf) ?
                      (reg13 ?
                          reg9 : reg8) : $signed(wire1))) : {(|wire0)}) >>> (^~(8'ha8)));
              reg15 <= reg7;
            end
          else
            begin
              reg11 <= (|wire4[(3'h7):(2'h3)]);
            end
        end
      if ({wire3[(3'h6):(1'h1)], {$unsigned(reg14[(4'h9):(2'h2)])}})
        begin
          reg16 <= ((^$signed(wire1[(2'h2):(1'h0)])) ?
              $signed(($unsigned({(8'hbf)}) >>> {reg10})) : $signed((&reg9[(2'h3):(1'h0)])));
          if ($signed({$unsigned(reg7),
              $unsigned(({wire0} ?
                  (reg11 ? (8'ha8) : reg10) : (reg14 >> (7'h43))))}))
            begin
              reg17 <= (|$unsigned(wire1));
              reg18 <= ({(~^wire4[(3'h4):(1'h1)])} | $signed(($signed($unsigned(wire1)) ?
                  ($signed(wire5) ? (~^reg9) : (-(8'hbe))) : ($signed(reg8) ?
                      wire5[(2'h3):(1'h0)] : $unsigned(reg17)))));
              reg19 <= $signed($signed((|reg9[(1'h1):(1'h1)])));
              reg20 <= $unsigned((($signed({(7'h41)}) ~^ reg15[(3'h6):(3'h6)]) || (|({reg8} || (wire2 ?
                  reg8 : reg15)))));
              reg21 <= $signed((($unsigned((reg14 ? wire6 : reg18)) ?
                      $signed(reg20) : {(reg7 ~^ wire3)}) ?
                  (~^((wire1 ? reg15 : (8'hb5)) ?
                      $signed(reg16) : (wire4 != reg15))) : reg13[(3'h7):(3'h6)]));
            end
          else
            begin
              reg17 <= $signed($signed($unsigned($signed(reg7))));
              reg18 <= ((^$signed({$unsigned((8'hac))})) << wire4);
              reg19 <= $signed(wire2);
              reg20 <= $signed($unsigned($signed(reg17[(4'hd):(2'h3)])));
              reg21 <= reg19[(3'h4):(2'h3)];
            end
          reg22 <= reg14[(1'h1):(1'h1)];
        end
      else
        begin
          reg16 <= $signed(($signed({(~^reg9)}) ?
              (&reg14) : $unsigned($unsigned((reg17 >> reg9)))));
          if ({(((^(reg7 == wire0)) == reg16) ~^ $signed((reg13 - reg7))),
              (~|(~^(^reg19)))})
            begin
              reg17 <= ((reg8[(4'hb):(2'h2)] == reg20) == reg8[(3'h6):(3'h4)]);
              reg18 <= (8'hbb);
              reg19 <= wire2;
              reg20 <= (reg18 - $unsigned($unsigned(reg7)));
            end
          else
            begin
              reg17 <= {$signed($unsigned(($signed(wire2) ?
                      wire5[(4'h8):(3'h5)] : wire0[(2'h2):(1'h1)]))),
                  reg7[(3'h5):(1'h0)]};
              reg18 <= (reg20[(3'h6):(2'h2)] >> $signed(reg7[(2'h2):(1'h0)]));
              reg19 <= $unsigned(($unsigned({((8'hb8) + reg9)}) ?
                  wire1[(1'h0):(1'h0)] : $signed($signed((~wire5)))));
              reg20 <= wire0;
            end
          if (wire4[(3'h7):(3'h5)])
            begin
              reg21 <= (((wire2 <<< ($signed(reg20) ?
                      $signed(reg16) : {wire0})) != (reg12[(1'h1):(1'h1)] >>> ({wire2} ?
                      reg16[(2'h2):(2'h2)] : (reg22 ? wire1 : wire3)))) ?
                  reg21 : (($unsigned(reg8[(4'ha):(2'h2)]) < {$unsigned(wire6),
                          wire0[(1'h0):(1'h0)]}) ?
                      ((~(8'hae)) ?
                          wire1 : {(reg17 ? reg9 : (8'hae))}) : reg12));
            end
          else
            begin
              reg21 <= $unsigned((($signed(((8'ha5) >> reg16)) <<< wire2[(3'h4):(1'h0)]) - reg20[(4'h9):(1'h1)]));
              reg22 <= $signed(reg19);
              reg23 <= {(-$unsigned(((!reg22) >= $signed(reg18))))};
              reg24 <= ((reg13 ?
                      (reg18 ?
                          (reg16 <<< wire0[(3'h4):(1'h0)]) : reg10[(4'he):(4'h9)]) : ((((8'hb9) * reg20) ?
                          $signed(reg12) : wire5) > ($unsigned(wire0) < ((8'ha5) > (8'ha7))))) ?
                  $signed(($unsigned((wire4 ? reg16 : reg18)) ?
                      reg10 : $signed($signed((8'hb2))))) : reg20);
              reg25 <= ($signed(($unsigned($signed(reg21)) * reg7[(3'h7):(3'h7)])) - ($unsigned((8'hba)) ?
                  $unsigned(($unsigned(wire2) ?
                      reg9[(3'h4):(1'h1)] : wire2)) : {({reg18} < (reg23 & reg10)),
                      {(^wire2)}}));
            end
          reg26 <= $signed($unsigned(($unsigned((~wire3)) ?
              reg25[(3'h4):(1'h1)] : ($unsigned(reg18) << (+reg21)))));
        end
      reg27 <= ((!$signed(($signed(reg15) ? reg14 : $unsigned(reg23)))) ?
          (+$unsigned($unsigned($unsigned((8'haa))))) : $unsigned((+(reg10[(4'he):(2'h3)] ?
              reg17[(3'h6):(1'h1)] : (8'hba)))));
    end
  assign wire28 = $unsigned($unsigned($signed((reg17 >> ((8'hb4) ?
                      wire1 : reg13)))));
  always
    @(posedge clk) begin
      reg29 <= $signed(reg23[(3'h4):(2'h2)]);
    end
endmodule