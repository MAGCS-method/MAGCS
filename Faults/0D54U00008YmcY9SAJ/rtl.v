(* use_dsp48="no" *) (* use_dsp="no" *) module top  (y, clk, wire18, wire17, wire16, wire15);
  output wire [(32'h85b):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(4'h9):(1'h0)] wire18;
  input wire signed [(5'h13):(1'h0)] wire17;
  input wire signed [(3'h6):(1'h0)] wire16;
  input wire signed [(5'h14):(1'h0)] wire15;
  wire [(3'h5):(1'h0)] wire197;
  wire signed [(3'h5):(1'h0)] wire117;
  wire signed [(5'h11):(1'h0)] wire116;
  wire signed [(2'h3):(1'h0)] wire115;
  wire signed [(2'h2):(1'h0)] wire114;
  wire [(2'h3):(1'h0)] wire113;
  wire [(5'h14):(1'h0)] wire81;
  wire [(5'h12):(1'h0)] wire80;
  wire signed [(5'h11):(1'h0)] wire79;
  wire [(5'h11):(1'h0)] wire78;
  wire signed [(4'h9):(1'h0)] wire77;
  wire signed [(4'hc):(1'h0)] wire76;
  wire [(4'ha):(1'h0)] wire19;
  reg [(4'hb):(1'h0)] reg195 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg194 = (1'h0);
  reg [(4'h9):(1'h0)] reg192 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg191 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg178 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg190 = (1'h0);
  reg [(4'h9):(1'h0)] reg186 = (1'h0);
  reg [(5'h12):(1'h0)] reg185 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg184 = (1'h0);
  reg [(5'h13):(1'h0)] reg183 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg181 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg179 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg175 = (1'h0);
  reg [(3'h7):(1'h0)] reg174 = (1'h0);
  reg [(4'hd):(1'h0)] reg172 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg171 = (1'h0);
  reg [(2'h3):(1'h0)] reg169 = (1'h0);
  reg [(5'h12):(1'h0)] reg166 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg165 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg164 = (1'h0);
  reg [(3'h4):(1'h0)] reg162 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg158 = (1'h0);
  reg [(4'hb):(1'h0)] reg156 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg155 = (1'h0);
  reg [(3'h4):(1'h0)] reg154 = (1'h0);
  reg [(4'hd):(1'h0)] reg152 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg151 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg150 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg149 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg147 = (1'h0);
  reg [(4'hc):(1'h0)] reg146 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg145 = (1'h0);
  reg [(5'h12):(1'h0)] reg144 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg141 = (1'h0);
  reg [(4'hb):(1'h0)] reg140 = (1'h0);
  reg [(3'h6):(1'h0)] reg139 = (1'h0);
  reg [(3'h5):(1'h0)] reg136 = (1'h0);
  reg [(2'h2):(1'h0)] reg134 = (1'h0);
  reg signed [(4'he):(1'h0)] reg132 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg131 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg130 = (1'h0);
  reg [(5'h10):(1'h0)] reg128 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg127 = (1'h0);
  reg signed [(4'he):(1'h0)] reg124 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg122 = (1'h0);
  reg [(5'h10):(1'h0)] reg120 = (1'h0);
  reg [(4'he):(1'h0)] reg119 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg112 = (1'h0);
  reg [(3'h6):(1'h0)] reg111 = (1'h0);
  reg [(3'h4):(1'h0)] reg110 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg109 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg105 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg104 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg103 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg99 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg98 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg95 = (1'h0);
  reg [(5'h10):(1'h0)] reg94 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg89 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg88 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg87 = (1'h0);
  reg [(5'h11):(1'h0)] reg84 = (1'h0);
  reg [(5'h13):(1'h0)] reg56 = (1'h0);
  reg signed [(4'he):(1'h0)] reg72 = (1'h0);
  reg [(4'h8):(1'h0)] reg71 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg70 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg67 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg66 = (1'h0);
  reg [(4'ha):(1'h0)] reg64 = (1'h0);
  reg [(4'hd):(1'h0)] reg63 = (1'h0);
  reg [(5'h12):(1'h0)] reg60 = (1'h0);
  reg [(3'h4):(1'h0)] reg59 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg58 = (1'h0);
  reg [(4'hf):(1'h0)] reg57 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg55 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg53 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg52 = (1'h0);
  reg [(5'h12):(1'h0)] reg50 = (1'h0);
  reg [(4'hb):(1'h0)] reg48 = (1'h0);
  reg [(3'h6):(1'h0)] reg44 = (1'h0);
  reg [(3'h5):(1'h0)] reg43 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg41 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg37 = (1'h0);
  reg [(3'h7):(1'h0)] reg36 = (1'h0);
  reg [(4'h9):(1'h0)] reg32 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg31 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg29 = (1'h0);
  reg [(4'hf):(1'h0)] reg27 = (1'h0);
  reg [(2'h3):(1'h0)] reg26 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg23 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg22 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg196 = (1'h0);
  reg [(4'ha):(1'h0)] reg193 = (1'h0);
  reg [(3'h4):(1'h0)] forvar182 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg189 = (1'h0);
  reg [(4'hf):(1'h0)] reg188 = (1'h0);
  reg [(5'h11):(1'h0)] reg187 = (1'h0);
  reg [(5'h10):(1'h0)] reg182 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg180 = (1'h0);
  reg [(4'h8):(1'h0)] forvar178 = (1'h0);
  reg [(5'h14):(1'h0)] reg177 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg176 = (1'h0);
  reg signed [(5'h14):(1'h0)] forvar173 = (1'h0);
  reg [(2'h2):(1'h0)] forvar170 = (1'h0);
  reg [(4'h8):(1'h0)] forvar168 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg167 = (1'h0);
  reg [(4'ha):(1'h0)] reg163 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg161 = (1'h0);
  reg [(4'ha):(1'h0)] reg160 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg159 = (1'h0);
  reg [(3'h5):(1'h0)] reg157 = (1'h0);
  reg [(5'h11):(1'h0)] reg153 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg148 = (1'h0);
  reg [(3'h5):(1'h0)] reg143 = (1'h0);
  reg [(5'h13):(1'h0)] reg142 = (1'h0);
  reg [(4'ha):(1'h0)] reg138 = (1'h0);
  reg signed [(4'hf):(1'h0)] forvar137 = (1'h0);
  reg [(4'hd):(1'h0)] forvar135 = (1'h0);
  reg signed [(3'h4):(1'h0)] forvar118 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg133 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg129 = (1'h0);
  reg [(2'h2):(1'h0)] reg126 = (1'h0);
  reg [(3'h4):(1'h0)] reg125 = (1'h0);
  reg [(3'h6):(1'h0)] reg123 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg121 = (1'h0);
  reg [(5'h10):(1'h0)] reg118 = (1'h0);
  reg signed [(4'hd):(1'h0)] forvar108 = (1'h0);
  reg [(4'h8):(1'h0)] reg107 = (1'h0);
  reg [(4'hb):(1'h0)] reg106 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg102 = (1'h0);
  reg signed [(4'hf):(1'h0)] forvar101 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg100 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg97 = (1'h0);
  reg [(4'hd):(1'h0)] reg96 = (1'h0);
  reg [(3'h4):(1'h0)] reg93 = (1'h0);
  reg signed [(5'h13):(1'h0)] forvar92 = (1'h0);
  reg [(5'h11):(1'h0)] reg91 = (1'h0);
  reg [(3'h7):(1'h0)] reg90 = (1'h0);
  reg [(5'h11):(1'h0)] forvar86 = (1'h0);
  reg [(3'h7):(1'h0)] forvar85 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg83 = (1'h0);
  reg [(4'h8):(1'h0)] reg82 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg75 = (1'h0);
  reg signed [(3'h4):(1'h0)] forvar74 = (1'h0);
  reg [(3'h4):(1'h0)] reg69 = (1'h0);
  reg [(4'hc):(1'h0)] reg73 = (1'h0);
  reg [(5'h12):(1'h0)] forvar69 = (1'h0);
  reg [(5'h12):(1'h0)] reg68 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg65 = (1'h0);
  reg [(4'hb):(1'h0)] reg62 = (1'h0);
  reg [(4'ha):(1'h0)] reg61 = (1'h0);
  reg signed [(5'h11):(1'h0)] forvar56 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg54 = (1'h0);
  reg [(4'h9):(1'h0)] reg51 = (1'h0);
  reg signed [(4'he):(1'h0)] reg49 = (1'h0);
  reg [(4'h8):(1'h0)] reg47 = (1'h0);
  reg [(4'h9):(1'h0)] reg46 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg45 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg42 = (1'h0);
  reg [(5'h10):(1'h0)] reg40 = (1'h0);
  reg [(3'h7):(1'h0)] reg39 = (1'h0);
  reg signed [(4'he):(1'h0)] reg38 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg35 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg34 = (1'h0);
  reg [(2'h3):(1'h0)] reg33 = (1'h0);
  reg signed [(4'h8):(1'h0)] forvar29 = (1'h0);
  reg [(4'hc):(1'h0)] forvar27 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg30 = (1'h0);
  reg [(3'h6):(1'h0)] reg28 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg25 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg24 = (1'h0);
  reg [(5'h12):(1'h0)] forvar21 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg20 = (1'h0);
  assign y = {wire197,
                 wire117,
                 wire116,
                 wire115,
                 wire114,
                 wire113,
                 wire81,
                 wire80,
                 wire79,
                 wire78,
                 wire77,
                 wire76,
                 wire19,
                 reg112,
                 reg111,
                 reg110,
                 reg109,
                 reg105,
                 reg104,
                 reg103,
                 reg99,
                 reg98,
                 reg95,
                 reg94,
                 reg89,
                 reg88,
                 reg87,
                 reg84,
                 reg56,
                 reg72,
                 reg71,
                 reg70,
                 reg67,
                 reg66,
                 reg64,
                 reg63,
                 reg60,
                 reg59,
                 reg58,
                 reg57,
                 reg55,
                 reg53,
                 reg52,
                 reg50,
                 reg48,
                 reg44,
                 reg43,
                 reg41,
                 reg37,
                 reg36,
                 reg32,
                 reg31,
                 reg29,
                 reg27,
                 reg26,
                 reg23,
                 reg22,
                 reg196,
                 reg193,
                 forvar182,
                 reg189,
                 reg188,
                 reg187,
                 reg182,
                 reg180,
                 forvar178,
                 reg177,
                 reg176,
                 forvar173,
                 forvar170,
                 forvar168,
                 forvar137,
                 forvar135,
                 forvar118,
                 forvar108,
                 reg107,
                 reg106,
                 reg102,
                 forvar101,
                 reg100,
                 reg97,
                 reg96,
                 reg93,
                 forvar92,
                 reg91,
                 reg90,
                 forvar86,
                 forvar85,
                 reg83,
                 reg82,
                 reg75,
                 forvar74,
                 reg69,
                 reg73,
                 forvar69,
                 reg68,
                 reg65,
                 reg62,
                 reg61,
                 forvar56,
                 reg54,
                 reg51,
                 reg49,
                 reg47,
                 reg46,
                 reg45,
                 reg42,
                 reg40,
                 reg39,
                 reg38,
                 reg35,
                 reg34,
                 reg33,
                 forvar29,
                 forvar27,
                 reg30,
                 reg28,
                 reg25,
                 reg24,
                 forvar21,
                 reg20,
                 (1'h0)};
  assign wire19 = (~&(^(-$signed((8'hbd)))));
  always
    @(posedge clk) begin
      reg20 = (~^{(wire17 ? wire18[(3'h6):(3'h5)] : (+wire16[(2'h2):(1'h0)])),
          (~|$unsigned({wire15, (8'hb5)}))});
      for (forvar21 = (1'h0); (forvar21 < (1'h1)); forvar21 = (forvar21 + (1'h1)))
        begin
          if ($unsigned(reg20))
            begin
              reg22 <= (forvar21[(4'hf):(4'ha)] >> $unsigned({$unsigned(wire18[(2'h3):(1'h1)]),
                  wire17[(4'hb):(3'h7)]}));
              reg23 <= forvar21[(2'h2):(1'h0)];
              reg24 = (~|(~&$signed($signed((wire18 == forvar21)))));
              reg25 = (~^({$unsigned($signed(reg20))} && $signed((+(wire17 ?
                  reg20 : reg20)))));
            end
          else
            begin
              reg22 <= (8'hae);
              reg24 = $unsigned({(|(((8'hbd) < reg25) ? reg25 : (8'ha1))),
                  reg20});
            end
          reg26 <= $unsigned(((!$signed($signed(wire19))) ^ $unsigned(((&(7'h41)) <= (^wire19)))));
        end
      if (($unsigned(wire17[(1'h0):(1'h0)]) | {(~&((~^wire15) ?
              (wire17 ? (8'ha7) : wire17) : $signed(reg25))),
          (wire17 ?
              $unsigned($unsigned(wire17)) : (-(reg20 ? forvar21 : reg26)))}))
        begin
          if (wire17)
            begin
              reg27 <= $unsigned(($unsigned(((reg26 ? reg24 : reg25) ?
                  wire18 : $signed(reg20))) ^~ (^~(reg24[(2'h2):(2'h2)] ?
                  (wire16 & wire18) : {reg26}))));
            end
          else
            begin
              reg28 = wire17;
              reg29 <= $unsigned($signed($signed($unsigned((8'haa)))));
            end
          reg30 = (|reg28);
        end
      else
        begin
          for (forvar27 = (1'h0); (forvar27 < (1'h1)); forvar27 = (forvar27 + (1'h1)))
            begin
              reg28 = $unsigned((8'hb5));
            end
          for (forvar29 = (1'h0); (forvar29 < (1'h0)); forvar29 = (forvar29 + (1'h1)))
            begin
              reg31 <= $signed(({(!$unsigned(reg22))} ?
                  {((forvar29 * wire15) & reg29[(4'ha):(1'h1)])} : wire19[(4'h9):(2'h3)]));
              reg32 <= (($signed($unsigned(reg31[(3'h5):(2'h3)])) ^ (($signed((8'hbd)) ^ $unsigned(forvar27)) || (8'hb0))) | wire16[(3'h4):(1'h0)]);
              reg33 = reg27[(1'h0):(1'h0)];
            end
          if ((((^reg27[(3'h4):(2'h3)]) ?
              $unsigned(reg20) : ((~^$unsigned(reg24)) ?
                  (reg27 << wire18) : reg32)) ^~ ($signed(reg26) <= (7'h44))))
            begin
              reg34 = $signed((reg31 != $signed(((wire17 ? wire15 : reg25) ?
                  $signed(reg23) : reg25))));
              reg35 = forvar21[(2'h2):(2'h2)];
              reg36 <= {wire15,
                  (((wire15 < $signed((8'hbc))) << $unsigned(reg32[(3'h7):(3'h5)])) ?
                      $unsigned(wire19) : $unsigned((~&reg35)))};
              reg37 <= (!$unsigned(((~&$signed(reg29)) ?
                  forvar27[(3'h6):(2'h2)] : $unsigned($signed(reg36)))));
            end
          else
            begin
              reg36 <= $unsigned(reg24[(2'h2):(2'h2)]);
              reg37 <= ($signed($unsigned(((wire16 ? (8'ha5) : (8'ha1)) ?
                  {reg33} : $signed(reg33)))) && reg37[(4'h8):(2'h2)]);
              reg38 = ($signed(reg28) ?
                  {((reg23[(4'h9):(3'h5)] ?
                              (reg37 | reg23) : {forvar21, wire18}) ?
                          $unsigned({reg22}) : reg23)} : reg24);
              reg39 = $unsigned((reg38 | $unsigned(reg33[(2'h2):(1'h0)])));
            end
          reg40 = $unsigned(reg28);
        end
      if (reg33[(2'h2):(1'h1)])
        begin
          if ($unsigned(((wire15[(4'h8):(3'h5)] ?
                  wire18[(3'h5):(2'h2)] : (reg25 ?
                      $signed(wire19) : $unsigned(wire15))) ?
              ($signed((8'ha3)) >> ((reg32 - reg35) >= {reg36})) : reg35)))
            begin
              reg41 <= (wire19 ?
                  ($signed({((8'hb6) == reg32)}) ?
                      ((reg34[(5'h14):(4'hd)] || reg32[(1'h0):(1'h0)]) >> wire15[(2'h3):(1'h0)]) : wire18) : (reg20 ?
                      ((!(^~wire16)) ?
                          (reg38 ?
                              $unsigned((8'hb9)) : (~forvar21)) : (^$signed(reg29))) : (reg20[(1'h0):(1'h0)] ?
                          (reg36[(1'h1):(1'h0)] ?
                              (reg39 * wire18) : ((8'hba) != (8'h9c))) : {(reg39 ?
                                  reg24 : reg35)})));
              reg42 = $signed(($unsigned(($unsigned(reg40) ?
                  reg22[(3'h4):(3'h4)] : $signed(wire15))) - $unsigned($signed(reg29))));
              reg43 <= $signed({($unsigned({forvar29}) ?
                      $signed({wire18, reg35}) : reg26[(2'h3):(1'h0)]),
                  $signed(reg23)});
              reg44 <= wire15[(5'h11):(4'hd)];
              reg45 = (8'haf);
            end
          else
            begin
              reg42 = $unsigned($unsigned($unsigned(((reg31 ? wire19 : reg43) ?
                  reg28 : reg41))));
            end
          reg46 = {$unsigned(reg23), (^{$signed((reg32 ? (8'hbf) : reg38))})};
          if (reg34)
            begin
              reg47 = ((reg42 ?
                  reg31[(4'h8):(4'h8)] : (($unsigned(reg40) ?
                      wire19[(4'h8):(3'h6)] : $signed(reg36)) ~^ $signed(((8'hb1) ?
                      reg32 : reg34)))) * $signed((&$unsigned((reg46 << (8'haf))))));
            end
          else
            begin
              reg48 <= $signed(({forvar29,
                  $unsigned((reg47 | reg29))} + (&$signed((reg32 - reg46)))));
            end
          if (((+reg34[(4'h9):(2'h3)]) ?
              (wire19[(3'h5):(3'h4)] ^~ reg30) : (~&$signed(reg23[(5'h13):(4'h8)]))))
            begin
              reg49 = {((reg27 ?
                      $unsigned($unsigned(reg24)) : $unsigned((~&wire15))) == ($signed((~reg24)) ?
                      (reg35[(1'h0):(1'h0)] ~^ (!reg41)) : $signed(reg27))),
                  $signed($signed($unsigned({reg36})))};
              reg50 <= reg47;
              reg51 = reg27;
              reg52 <= ($unsigned(reg38[(1'h0):(1'h0)]) ?
                  (|(&reg50)) : $signed($unsigned((~&((8'ha3) ?
                      reg36 : reg40)))));
              reg53 <= (~^$unsigned($unsigned(((reg37 * reg46) ?
                  (~^(8'hb4)) : $signed(wire19)))));
            end
          else
            begin
              reg49 = ($signed($signed((&(reg31 && reg26)))) ^ (reg43 | reg35[(4'hb):(2'h3)]));
              reg50 <= reg31;
              reg52 <= (^{$signed(($unsigned((8'ha0)) == {wire15, reg46})),
                  ($unsigned((~^reg45)) ?
                      $signed($signed(reg53)) : ({reg43,
                          reg28} << $signed(wire17)))});
              reg54 = reg31[(3'h5):(2'h2)];
              reg55 <= $signed(reg45);
            end
        end
      else
        begin
          if (reg50[(5'h12):(4'h8)])
            begin
              reg42 = ({reg44} ?
                  $unsigned(reg45[(2'h2):(1'h0)]) : wire18[(3'h4):(3'h4)]);
              reg43 <= $signed($unsigned(reg34));
            end
          else
            begin
              reg42 = forvar21[(1'h0):(1'h0)];
              reg43 <= forvar21[(4'hf):(4'hc)];
            end
          reg44 <= (~&(8'ha4));
          if (reg33)
            begin
              reg45 = reg51;
              reg48 <= (reg54[(1'h0):(1'h0)] ?
                  {(|((|reg35) ? $unsigned(reg23) : $signed(wire16))),
                      (reg30 ?
                          $signed(((8'ha1) ?
                              forvar29 : wire15)) : reg29[(3'h5):(2'h2)])} : reg28[(2'h2):(2'h2)]);
              reg50 <= ({((8'hb3) << ((reg33 ? reg35 : forvar29) ?
                      wire15[(4'ha):(4'h8)] : (reg20 && reg36)))} ~^ (reg20[(4'h9):(3'h5)] ?
                  (((^~wire18) || (~reg43)) ?
                      $signed((wire18 ? wire18 : forvar27)) : (|((8'hb0) ?
                          reg55 : (8'hb6)))) : $unsigned($unsigned(((8'hbe) && reg44)))));
            end
          else
            begin
              reg45 = ((8'ha1) ?
                  $signed($unsigned((^reg36[(3'h7):(3'h7)]))) : reg44[(1'h0):(1'h0)]);
              reg46 = reg46[(2'h3):(2'h3)];
              reg47 = ({($signed({(8'ha7)}) == reg30)} | (+$signed(reg30)));
            end
        end
      if (reg26[(2'h3):(2'h2)])
        begin
          for (forvar56 = (1'h0); (forvar56 < (2'h3)); forvar56 = (forvar56 + (1'h1)))
            begin
              reg57 <= $signed($unsigned(reg52));
              reg58 <= reg35;
              reg59 <= (+reg50[(5'h12):(1'h1)]);
              reg60 <= reg55;
              reg61 = (|(((|(reg54 ?
                      reg41 : wire17)) - (reg37[(3'h6):(3'h6)] > forvar21[(4'hb):(1'h1)])) ?
                  forvar29[(3'h7):(2'h2)] : {{((8'hac) & reg38)}}));
            end
          reg62 = reg28;
          reg63 <= (^((reg57 ? $unsigned({reg58}) : ((^~reg53) >> {reg59})) ?
              {($unsigned(reg34) > forvar27)} : reg49));
          if ((((reg63 > $signed(reg40[(4'hf):(3'h5)])) >>> reg28) ?
              forvar56[(3'h5):(3'h5)] : {reg28[(2'h3):(2'h3)]}))
            begin
              reg64 <= $unsigned(reg41);
              reg65 = {{$unsigned(reg54[(3'h6):(3'h6)]),
                      ($unsigned(reg59[(2'h3):(2'h3)]) >= ((~&reg42) && (-reg39)))},
                  reg51};
              reg66 <= forvar56[(4'h9):(3'h5)];
              reg67 <= reg61;
            end
          else
            begin
              reg65 = $signed(reg23[(2'h3):(2'h2)]);
              reg68 = (reg32 ?
                  (+$unsigned(reg54[(3'h5):(2'h3)])) : $signed(reg61));
            end
          for (forvar69 = (1'h0); (forvar69 < (2'h2)); forvar69 = (forvar69 + (1'h1)))
            begin
              reg70 <= reg39[(1'h0):(1'h0)];
              reg71 <= $signed($signed(((reg34[(3'h6):(3'h4)] > $signed(reg42)) ~^ ({reg50,
                  reg53} ^~ $unsigned(reg52)))));
              reg72 <= reg62;
              reg73 = (reg62 ?
                  ($signed(reg43) >>> {((~&reg49) >>> $signed(reg34)),
                      $signed((reg65 ^ reg66))}) : wire18[(3'h7):(2'h2)]);
            end
        end
      else
        begin
          if ((|reg57[(2'h3):(1'h1)]))
            begin
              reg56 <= $unsigned(reg59);
              reg57 <= ($unsigned(((reg51[(4'h9):(3'h4)] ?
                          (^wire19) : $unsigned(reg56)) ?
                      $unsigned({(8'hb7), (8'hb1)}) : reg43)) ?
                  reg46[(1'h1):(1'h0)] : ($unsigned({{reg36, reg39}}) ?
                      ($signed(reg46) == (8'ha1)) : $unsigned(reg32)));
              reg61 = (reg32 ?
                  ($unsigned((+(^~reg63))) ?
                      ($unsigned({reg25, reg50}) ?
                          $signed(((8'hbf) & reg31)) : ((reg63 ?
                                  reg30 : (8'hb5)) ?
                              reg26 : $signed(reg23))) : reg54) : $unsigned($unsigned((-$unsigned(reg54)))));
              reg62 = ($signed(reg57) ?
                  (((~|{reg50}) ?
                          {(reg56 ? reg25 : (8'ha8)),
                              {reg35, reg66}} : reg46[(4'h9):(3'h4)]) ?
                      (~&$unsigned($signed((8'hb5)))) : reg55) : (~&($unsigned(reg50[(3'h4):(1'h1)]) ?
                      reg20 : reg52)));
            end
          else
            begin
              reg61 = (+reg27);
            end
          if (($unsigned($signed({$signed(reg65), (reg56 & reg67)})) ?
              (reg42 ?
                  $unsigned(reg73[(3'h5):(2'h3)]) : (~|(^$signed((8'ha4))))) : reg47))
            begin
              reg63 <= $unsigned((((|(~&forvar27)) & reg62[(2'h2):(1'h1)]) == ($signed({forvar69,
                      reg58}) ?
                  $signed((|reg66)) : reg31[(4'h9):(3'h7)])));
              reg64 <= reg42[(3'h4):(1'h1)];
              reg66 <= $unsigned($signed($signed(wire15[(4'h8):(3'h6)])));
            end
          else
            begin
              reg63 <= $unsigned((~(~|$unsigned((reg28 - reg43)))));
              reg64 <= (&reg57[(2'h3):(2'h2)]);
            end
          if (wire15[(4'hf):(3'h5)])
            begin
              reg67 <= $signed(wire15[(4'hb):(1'h0)]);
              reg68 = $unsigned(($signed(((reg45 * reg73) ?
                      (forvar69 ? (8'hac) : (8'hb1)) : (reg61 <= forvar21))) ?
                  (({reg66} != reg59[(1'h1):(1'h0)]) ?
                      reg36 : (reg23[(3'h7):(1'h0)] || (&(8'hb2)))) : $unsigned($unsigned((~reg60)))));
              reg69 = reg30;
            end
          else
            begin
              reg68 = $signed($unsigned($unsigned(reg64)));
              reg70 <= {($unsigned(reg46) ?
                      $signed(reg71[(3'h4):(3'h4)]) : ($signed(((8'ha5) != (8'hb0))) * ((8'hb0) ?
                          {wire16, forvar69} : (reg29 ?
                              forvar27 : forvar69))))};
              reg73 = ($unsigned($unsigned({$unsigned(reg30)})) ^~ (&$unsigned({(reg47 ?
                      reg26 : (8'hab)),
                  $signed(wire15)})));
            end
          for (forvar74 = (1'h0); (forvar74 < (1'h1)); forvar74 = (forvar74 + (1'h1)))
            begin
              reg75 = (~^(reg69[(2'h3):(1'h0)] < reg68));
            end
        end
    end
  assign wire76 = (($unsigned($signed(reg53)) && ($unsigned({wire15}) > $signed((reg55 ~^ reg36)))) > wire17[(5'h10):(1'h1)]);
  assign wire77 = $unsigned(((8'h9d) || $signed({((8'h9e) || reg58)})));
  assign wire78 = $signed((~|$unsigned(reg66)));
  assign wire79 = ($signed($signed(($signed(reg43) ?
                      reg31 : {reg44, reg66}))) < reg44);
  assign wire80 = $signed(($signed({(+(8'hbe))}) ?
                      $unsigned($signed((reg36 ^~ (8'h9d)))) : wire78[(1'h0):(1'h0)]));
  assign wire81 = reg66;
  always
    @(posedge clk) begin
      reg82 = (~&{(~&$unsigned(reg63)), (!((+reg44) ? reg57 : (8'ha1)))});
      reg83 = ($unsigned({wire81,
          ($unsigned(wire79) >= $unsigned((8'hb8)))}) - (~|($signed(((8'hbe) ?
          reg26 : reg26)) * reg53[(3'h4):(1'h0)])));
      reg84 <= $signed(wire76[(3'h4):(3'h4)]);
      for (forvar85 = (1'h0); (forvar85 < (2'h2)); forvar85 = (forvar85 + (1'h1)))
        begin
          for (forvar86 = (1'h0); (forvar86 < (2'h3)); forvar86 = (forvar86 + (1'h1)))
            begin
              reg87 <= (~&$unsigned($unsigned(($unsigned(reg59) <<< $unsigned((7'h44))))));
            end
          reg88 <= reg60;
          if ($signed((|$signed(({reg31} < $signed(wire18))))))
            begin
              reg89 <= $signed((+(reg60[(4'hb):(3'h7)] * ({reg67} == $signed((8'hb4))))));
            end
          else
            begin
              reg90 = wire76;
              reg91 = $signed((((((8'ha7) <= wire80) ?
                      $signed(reg41) : ((8'hb4) ? wire19 : wire80)) ?
                  ((reg31 ? reg59 : wire77) ?
                      (reg50 == (8'hb9)) : $unsigned(reg82)) : (^~reg60)) >>> (~|(&$signed(reg29)))));
            end
        end
      for (forvar92 = (1'h0); (forvar92 < (2'h3)); forvar92 = (forvar92 + (1'h1)))
        begin
          reg93 = (!wire77);
          if (((((reg66[(3'h5):(2'h3)] > $unsigned(reg87)) <<< ((reg27 ?
                          wire15 : (8'hbe)) ?
                      wire78[(4'he):(4'hb)] : reg71)) ?
                  $unsigned($signed((wire79 << (7'h41)))) : {(~^(8'ha1))}) ?
              $signed(((+(reg67 ^ reg64)) <= reg67[(3'h4):(1'h0)])) : {(($signed(reg66) + (wire17 ~^ reg58)) & $unsigned((~&reg82)))}))
            begin
              reg94 <= reg32;
              reg95 <= $unsigned((&reg52));
              reg96 = reg31;
              reg97 = $signed({({(wire80 * reg82),
                      $signed(reg64)} ~^ $signed((reg43 || forvar85)))});
              reg98 <= $unsigned($signed({($unsigned(reg60) ?
                      {(8'had)} : reg83[(1'h0):(1'h0)]),
                  wire17}));
            end
          else
            begin
              reg96 = $unsigned(((reg88[(1'h1):(1'h0)] ?
                      reg82[(3'h6):(3'h6)] : {reg82[(1'h0):(1'h0)],
                          $signed((8'h9c))}) ?
                  reg93 : reg72));
              reg98 <= (~^($signed((~|$signed(reg70))) ?
                  {($unsigned(wire80) * $signed(reg60)),
                      reg37[(4'h8):(3'h4)]} : (7'h43)));
              reg99 <= ({(reg53[(4'hb):(2'h3)] >= (reg91 ?
                          $unsigned(reg36) : ((8'hb7) >= wire17)))} ?
                  (wire77[(2'h2):(1'h0)] * {$signed($signed(reg71))}) : (((~^reg32[(3'h5):(3'h4)]) ?
                      ({reg97, reg71} ?
                          ((8'hb9) ? reg36 : wire76) : (reg90 ?
                              reg29 : (8'hbc))) : ($signed(reg60) ?
                          $unsigned(reg23) : reg87[(4'h9):(4'h9)])) >= {(reg23 > {(8'ha4),
                          reg31}),
                      ((wire79 << forvar92) == reg84)}));
              reg100 = $signed({$unsigned($unsigned({reg98}))});
            end
          for (forvar101 = (1'h0); (forvar101 < (1'h0)); forvar101 = (forvar101 + (1'h1)))
            begin
              reg102 = (7'h43);
            end
          if ((~reg55))
            begin
              reg103 <= ($signed($unsigned(reg67[(2'h2):(1'h0)])) ?
                  $signed($signed($unsigned($unsigned((8'ha9))))) : {reg60});
              reg104 <= $unsigned((wire19[(4'h8):(1'h0)] >>> reg57[(2'h3):(2'h2)]));
              reg105 <= {(reg43[(3'h4):(3'h4)] & (~($signed(reg56) * $signed(reg29))))};
            end
          else
            begin
              reg103 <= ($signed($unsigned((7'h40))) ?
                  $signed((~|reg100[(5'h13):(4'h8)])) : $signed((~$unsigned((&reg100)))));
              reg106 = {wire16};
              reg107 = $unsigned((((~^{reg31}) ?
                      (wire77 ? (^~reg83) : reg37[(2'h2):(1'h1)]) : reg97) ?
                  $unsigned(reg96[(4'hd):(4'h8)]) : ((~$signed(reg100)) ?
                      reg95[(4'hd):(1'h0)] : (~&reg67))));
            end
          for (forvar108 = (1'h0); (forvar108 < (2'h2)); forvar108 = (forvar108 + (1'h1)))
            begin
              reg109 <= ($signed($signed(($unsigned((8'ha5)) >= (~wire16)))) | (~&$unsigned($unsigned($unsigned(reg43)))));
              reg110 <= ($unsigned(((8'ha2) ?
                      ($unsigned(reg48) ?
                          (wire16 ? reg90 : reg90) : {reg93,
                              reg36}) : $unsigned(wire76))) ?
                  (!($signed((reg52 <<< wire79)) < (^$unsigned(reg31)))) : ($signed(({reg59} ?
                          $unsigned(reg48) : forvar86[(3'h6):(3'h5)])) ?
                      (((reg22 ~^ wire76) | {(8'hac),
                          reg26}) >>> $unsigned((reg106 | reg84))) : reg96[(4'hd):(3'h4)]));
              reg111 <= $signed($signed((8'h9c)));
              reg112 <= $unsigned(reg57);
            end
        end
    end
  assign wire113 = $signed({{reg55}});
  assign wire114 = $signed({reg104[(4'h8):(3'h6)],
                       $signed(($unsigned(reg67) ? (~|reg87) : {reg55}))});
  assign wire115 = ((($unsigned((+(7'h43))) ?
                               $unsigned(reg95[(5'h12):(4'he)]) : (reg84[(4'hc):(3'h4)] <<< $signed(reg109))) ?
                           (+$unsigned($signed(reg104))) : $signed($signed($unsigned(reg98)))) ?
                       (8'hb1) : reg56[(5'h10):(1'h0)]);
  assign wire116 = reg22[(2'h2):(1'h1)];
  assign wire117 = (~|($unsigned((|(reg43 ?
                       reg71 : reg112))) == $signed($unsigned(reg103))));

  assign wire197 = wire113[(2'h2):(1'h0)];
endmodule

