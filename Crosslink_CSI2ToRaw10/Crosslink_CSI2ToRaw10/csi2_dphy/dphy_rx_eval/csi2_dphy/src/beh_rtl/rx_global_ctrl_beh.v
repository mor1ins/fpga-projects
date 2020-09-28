// rx_global_ctrl_beh.v generated by Lattice IP Model Creator version 1
// created on Tue, Mar 10, 2020 11:33:05 AM
// Copyright(c) 2007 Lattice Semiconductor Corporation. All rights reserved
// obfuscator_exe version 1.mar0807

// top























































`timescale 1 ns / 100 ps
module rx_global_ctrl #(
  parameter NUM_RX_LANE = 4,  parameter RX_GEAR     = 8,  parameter BYTECLK_MHZ = 100,  parameter RX_FIFO     = "OFF",  parameter RX_CLK_MODE = "HS_LP",  parameter SETTLEPER   = 100
)
(
  input  wire          reset_n_i,
  input  wire          reset_lp_n_i,
  input  wire          reset_byte_fr_n_i,

  input  wire          clk_lp_ctrl_i,
  input  wire          clk_byte_hs_i,    
  input  wire          clk_byte_i,
  input  wire          clk_byte_fr_i,
  input  wire          pll_lock_i,       

  input  wire [RX_GEAR-1:0] bd0_i,
  input  wire [RX_GEAR-1:0] bd1_i,
  input  wire [RX_GEAR-1:0] bd2_i,
  input  wire [RX_GEAR-1:0] bd3_i,
  input  wire          lp_clk_p_i,       
  input  wire          lp_clk_n_i,       
  input  wire          lp_d0_p_i,        
  input  wire          lp_d0_n_i,        
  input  wire          lp_d1_p_i,        
  input  wire          lp_d1_n_i,        
  input  wire          lp_d2_p_i,        
  input  wire          lp_d2_n_i,        
  input  wire          lp_d3_p_i,        
  input  wire          lp_d3_n_i,        
  input  wire          hs_sync_i,        
  output wire [RX_GEAR-1:0] bd0_o,
  output wire [RX_GEAR-1:0] bd1_o,
  output wire [RX_GEAR-1:0] bd2_o,
  output wire [RX_GEAR-1:0] bd3_o,
  output wire         term_clk_en_o,     
  output wire         term_d0_en_o,      
  output wire         hs_d0_en_o,        
  output wire         term_d1_en_o,      
  output wire         hs_d1_en_o,        
  output wire         term_d2_en_o,      
  output wire         hs_d2_en_o,        
  output wire         term_d3_en_o,      
  output wire         hs_d3_en_o,        
  output wire         hs_sync_o,         
  output wire         hs_settle_en_o,
  output wire   [1:0] lp_hs_state_clk_o, 
  output wire   [1:0] lp_hs_state_d_o      );
reg  pll_lock_meta, pll_lock_sync;
reg  dbcf98, go67cc7;
reg  qi3e639;
wire hbf31c9;
wire [NUM_RX_LANE*RX_GEAR-1:0] qv393c7, czc9e3c;
wire bl4f1e5;
localparam qg78f2f   = 1000/BYTECLK_MHZ;
localparam gd3cbce = SETTLEPER;
reg [15:0] hq2f3a8;
reg        zk79d42;
reg ykcea13;
reg qt75098;
reg xya84c4;
reg by42623;
reg ph1311b;
reg ym988de;
reg [RX_GEAR - 1 : 0] wl23780;
reg [RX_GEAR - 1 : 0] ayde023;
reg [RX_GEAR - 1 : 0] sj808c0;
reg [RX_GEAR - 1 : 0] yz2302a;
reg cb18154;
reg hoc0aa5;
reg ie552b;
reg ng2a958;
reg al54ac3;
reg lfa561c;
reg ec2b0e7;
reg by58738;
reg alc39c3;
reg db1ce1c;
reg mre70e6;
reg lf38734;
reg ofc39a6;
reg lf1cd34;
reg zxe69a6;
reg [NUM_RX_LANE * RX_GEAR - 1 : 0] ym34dc9;
reg [NUM_RX_LANE * RX_GEAR - 1 : 0] swb924f;
reg shc9278;
reg [15 : 0] su493c4;
reg su49e20;
reg [2047:0] zx4f101;
wire [29:0] ay7880f;






localparam goc4079 = 30,xy203c8 = 32'hfdffc68b;
localparam [31:0] xy1e43 = xy203c8;
localparam fa790d9 = xy203c8 & 4'hf;
localparam [11:0] ay43656 = 'h7ff;
wire [(1 << fa790d9) -1:0] czd958a;
reg [goc4079-1:0] ic562aa;
reg [fa790d9-1:0] ux8aa84 [0:1];
reg [fa790d9-1:0] zzaa127;
reg pf5093e;
integer bn849f6;
integer mg24fb7;

assign hbf31c9 = reset_n_i;
generate  if (RX_CLK_MODE == "HS_ONLY")    begin : jeb71c6      assign term_clk_en_o = 1'b1;    end  else    begin : ldc719b      assign term_clk_en_o = shc9278;
      oh337fd nt9bfed (        .reset_n_i      (qt75098),        .yxfdbd8       (xya84c4),        .kd6f62c          (1'b0),        .zx7b164      (cb18154),        .vic593e      (hoc0aa5),        .ld64f9c      (bl4f1e5),        .sw3e737        (),        .xjf39b9        (lp_hs_state_clk_o)        );    end
endgenerate
oh337fd zz37397 (  .reset_n_i      (zxe69a6),  .yxfdbd8       (by42623),  .kd6f62c          (ph1311b),  .zx7b164      (ie552b),  .vic593e      (ng2a958),  .ld64f9c      (term_d0_en_o),  .sw3e737        (hs_d0_en_o),  .xjf39b9        (lp_hs_state_d_o)  );
generate  if (NUM_RX_LANE > 1)    begin : tw9328f      oh337fd faca3d3 (        .reset_n_i      (zxe69a6),        .yxfdbd8       (by42623),        .kd6f62c          (ph1311b),        .zx7b164      (al54ac3),        .vic593e      (lfa561c),        .ld64f9c      (term_d1_en_o),        .sw3e737        (hs_d1_en_o),        .xjf39b9        ()        );    end  else    begin : je8c1fe      assign term_d1_en_o = 1'b0;      assign hs_d1_en_o   = 1'b0;    end  if (NUM_RX_LANE > 2)    begin : tufe522      oh337fd hd9489c (        .reset_n_i      (zxe69a6),        .yxfdbd8       (by42623),        .kd6f62c          (ph1311b),        .zx7b164      (ec2b0e7),        .vic593e      (by58738),        .ld64f9c      (term_d2_en_o),        .sw3e737        (hs_d2_en_o),        .xjf39b9        ()        );    end  else    begin : uxb4fa2      assign term_d2_en_o = 1'b0;      assign hs_d2_en_o   = 1'b0;    end  if (NUM_RX_LANE > 3)    begin : zma2ac2      oh337fd gdab099 (        .reset_n_i      (zxe69a6),        .yxfdbd8       (by42623),        .kd6f62c          (ph1311b),        .zx7b164      (alc39c3),        .vic593e      (db1ce1c),        .ld64f9c      (term_d3_en_o),        .sw3e737        (hs_d3_en_o),        .xjf39b9        ()        );    end  else    begin : tj38e04      assign term_d3_en_o = 1'b0;      assign hs_d3_en_o   = 1'b0;    end
endgenerate
generate  if (NUM_RX_LANE == 1)      assign qv393c7 = wl23780[RX_GEAR-1:0];  else if (NUM_RX_LANE == 2) assign qv393c7 = {ayde023[RX_GEAR-1:0], wl23780[RX_GEAR-1:0]};  else if (NUM_RX_LANE == 3) assign qv393c7 = {sj808c0[RX_GEAR-1:0], ayde023[RX_GEAR-1:0], wl23780[RX_GEAR-1:0]};  else if (NUM_RX_LANE == 4) assign qv393c7 = {yz2302a[RX_GEAR-1:0], sj808c0[RX_GEAR-1:0], ayde023[RX_GEAR-1:0], wl23780[RX_GEAR-1:0]};
endgenerate

always @(posedge clk_byte_fr_i or negedge reset_byte_fr_n_i)  begin    if (~reset_byte_fr_n_i)      begin        pll_lock_meta <= 0;        pll_lock_sync <= 0;      end    else      begin        pll_lock_meta <= ym988de;        pll_lock_sync <= pll_lock_meta;      end  end
always @(posedge clk_byte_fr_i or negedge reset_byte_fr_n_i)  begin    if (~reset_byte_fr_n_i)      begin        go67cc7    <= 0;        dbcf98 <= 0;      end    else      begin        go67cc7    <= hs_sync_o;        dbcf98 <= ofc39a6;      end  end
always @(posedge clk_byte_fr_i or negedge reset_byte_fr_n_i)  begin    if (~reset_byte_fr_n_i)      qi3e639 <= 1;    else if (!ofc39a6 & lf38734)      qi3e639 <= 1;    else      qi3e639 <= ~pll_lock_sync;  end        assign hs_sync_o = mre70e6;        assign bd0_o = wl23780;        assign bd1_o = (NUM_RX_LANE > 1) ? ayde023 : 0;        assign bd2_o = (NUM_RX_LANE > 2) ? sj808c0 : 0;        assign bd3_o = (NUM_RX_LANE > 3) ? yz2302a : 0;




assign hs_settle_en_o = (gd3cbce == 0)? term_d0_en_o : su49e20;
always @(posedge clk_byte_fr_i or negedge reset_byte_fr_n_i) begin    if (reset_byte_fr_n_i == 1'd0) begin        zk79d42 <= 16'd0;    end    else if (su493c4 == 16'd0) begin        zk79d42 <= 1'd1;    end    else if (term_d0_en_o == 1'd0) begin        zk79d42 <= 1'd0;    end
end
always @(posedge clk_byte_fr_i or negedge reset_byte_fr_n_i) begin    if (~reset_byte_fr_n_i) begin        hq2f3a8 <= gd3cbce;    end    else if (term_d0_en_o == 1'd0) begin        hq2f3a8 <= gd3cbce;    end    else if (su493c4 == 16'd0) begin        hq2f3a8 <= 16'd0;    end    else if (term_d0_en_o) begin        hq2f3a8 <= su493c4 - 16'd1;    end
end

always@* begin ykcea13<=ay7880f[0];qt75098<=ay7880f[1];xya84c4<=ay7880f[2];by42623<=ay7880f[3];ph1311b<=ay7880f[4];ym988de<=ay7880f[5];wl23780<={bd0_i>>1,ay7880f[6]};ayde023<={bd1_i>>1,ay7880f[7]};sj808c0<={bd2_i>>1,ay7880f[8]};yz2302a<={bd3_i>>1,ay7880f[9]};cb18154<=ay7880f[10];hoc0aa5<=ay7880f[11];ie552b<=ay7880f[12];ng2a958<=ay7880f[13];al54ac3<=ay7880f[14];lfa561c<=ay7880f[15];ec2b0e7<=ay7880f[16];by58738<=ay7880f[17];alc39c3<=ay7880f[18];db1ce1c<=ay7880f[19];mre70e6<=ay7880f[20];lf38734<=ay7880f[21];ofc39a6<=ay7880f[22];lf1cd34<=ay7880f[23];zxe69a6<=ay7880f[24];ym34dc9<={qv393c7>>1,ay7880f[25]};swb924f<={czc9e3c>>1,ay7880f[26]};shc9278<=ay7880f[27];su493c4<={hq2f3a8>>1,ay7880f[28]};su49e20<=ay7880f[29];end
always@* begin zx4f101[2047]<=reset_lp_n_i;zx4f101[2046]<=clk_lp_ctrl_i;zx4f101[2044]<=clk_byte_hs_i;zx4f101[2040]<=clk_byte_i;zx4f101[2032]<=pll_lock_i;zx4f101[2017]<=bd0_i[0];zx4f101[1987]<=bd1_i[0];zx4f101[1926]<=bd2_i[0];zx4f101[1921]<=qi3e639;zx4f101[1805]<=bd3_i[0];zx4f101[1795]<=hbf31c9;zx4f101[1679]<=lp_d2_p_i;zx4f101[1562]<=lp_clk_p_i;zx4f101[1543]<=qv393c7[0];zx4f101[1310]<=lp_d2_n_i;zx4f101[1144]<=lp_d3_n_i;zx4f101[1076]<=lp_clk_n_i;zx4f101[1039]<=czc9e3c[0];zx4f101[1023]<=reset_n_i;zx4f101[960]<=go67cc7;zx4f101[839]<=lp_d1_n_i;zx4f101[572]<=lp_d3_p_i;zx4f101[480]<=dbcf98;zx4f101[419]<=lp_d1_p_i;zx4f101[240]<=hs_sync_i;zx4f101[209]<=lp_d0_n_i;zx4f101[122]<=zk79d42;zx4f101[104]<=lp_d0_p_i;zx4f101[61]<=hq2f3a8[0];zx4f101[30]<=bl4f1e5;end         assign czd958a = zx4f101,ay7880f = ic562aa; initial begin bn849f6 = $fopen(".fred"); $fdisplay( bn849f6, "%3h\n%3h", (xy1e43 >> 4) & ay43656, (xy1e43 >> (fa790d9+4)) & ay43656 ); $fclose(bn849f6); $readmemh(".fred", ux8aa84); end always @ (czd958a) begin zzaa127 = ux8aa84[1]; for (mg24fb7=0; mg24fb7<goc4079; mg24fb7=mg24fb7+1) begin ic562aa[mg24fb7] = czd958a[zzaa127]; pf5093e = ^(zzaa127 & ux8aa84[0]); zzaa127 = {zzaa127, pf5093e}; end end 
endmodule


























































`timescale 1 ns / 100 ps
module oh337fd (
  input wire        reset_n_i,
  input wire        yxfdbd8,   
  input wire        kd6f62c,      

  input wire        zx7b164,  
  input wire        vic593e,  

  output wire       ld64f9c,  
  output wire       sw3e737,    
  output wire [1:0] xjf39b9     
);
parameter [1:0]  hbfc58f = 2'd0,                 ipe2c7e = 2'd1,                 jr163f5 = 2'd2,                 epb1fae = 2'd3;
reg [1:0] kf8fd75, jp7ebac;
reg wwf5d66, yzaeb31;
reg kd7598d, ecacc6d, by66368, ym31b42;
reg mg8da11, ay6d089;
reg yk68449, jc42249;
reg zm1124b, fc8925b;
wire su492da;
reg su496d0, uv4b680;
reg of5b405, vida02c;
reg zkd0162;
reg gd80b13;
wire aa589d = reset_n_i & zx7b164 & vic593e;
reg ou9d347;
reg ble9a39;
reg [1 : 0] dm4d1ce;
reg [1 : 0] cm68e72;
reg lq47390;
reg qv39c83;
reg eace41d;
reg os720e9;
reg mt90749;
reg fc83a4d;
reg qv1d26a;
reg rte9355;
reg ea49aaf;
reg ps4d579;
reg wj6abca;
reg vv55e55;
reg xlaf2ae;
reg xw79576;
reg facabb2;
reg vv55d92;
reg wlaec96;
reg tu764b5;
reg [2047:0] zx4f101;
wire [21:0] ay7880f;

localparam goc4079 = 22,xy203c8 = 32'hfdffc68b;
localparam [31:0] xy1e43 = xy203c8;
localparam fa790d9 = xy203c8 & 4'hf;
localparam [11:0] ay43656 = 'h7ff;
wire [(1 << fa790d9) -1:0] czd958a;
reg [goc4079-1:0] ic562aa;
reg [fa790d9-1:0] ux8aa84 [0:1];
reg [fa790d9-1:0] zzaa127;
reg pf5093e;
integer bn849f6;
integer mg24fb7;


always @(posedge yxfdbd8 or negedge reset_n_i)  begin    if (~reset_n_i)      begin        mg8da11 <= 1;        ay6d089 <= 1;        yk68449 <= 1;        jc42249 <= 1;      end    else      begin        mg8da11 <= ou9d347;        ay6d089 <= qv1d26a;        yk68449 <= ble9a39;        jc42249 <= ea49aaf;      end  end




















always @(*)  begin        kd7598d = ~rte9355 & (~ps4d579);        ecacc6d    =  rte9355 & ps4d579;        by66368    = ~rte9355 & ps4d579;        ym31b42    = ~rte9355 & (~ps4d579);  end


assign ld64f9c = lq47390 | ((dm4d1ce == jr163f5) & eace41d);
assign xjf39b9 = dm4d1ce;
always @(*)  begin    case (dm4d1ce)      hbfc58f :        begin          yzaeb31 = 0;          if (os720e9)            jp7ebac = ipe2c7e;          else            jp7ebac = hbfc58f;        end      ipe2c7e :        begin          yzaeb31 = 0;          if (mt90749)            jp7ebac = jr163f5;          else if (~os720e9)	            jp7ebac = hbfc58f;
          else            jp7ebac = ipe2c7e;        end      jr163f5 :        begin          if (fc83a4d)            begin              yzaeb31 = 1;              jp7ebac = epb1fae;            end          else if (os720e9)            begin              yzaeb31 = 0;              jp7ebac = ipe2c7e;            end          else            begin              yzaeb31 = 0;              jp7ebac = jr163f5;            end        end      epb1fae :        begin          if (os720e9)            begin              yzaeb31 = 0;              jp7ebac = ipe2c7e;             end          else            begin              yzaeb31 = 1;              jp7ebac = epb1fae;            end        end    endcase  end
always @(posedge yxfdbd8 or negedge reset_n_i)  begin    if (~reset_n_i)      begin        kf8fd75 <= ipe2c7e;         wwf5d66 <= 0;      end    else      begin        kf8fd75 <= cm68e72;        wwf5d66 <= qv39c83;      end  end



always @(posedge yxfdbd8 or negedge reset_n_i)  begin  if (~reset_n_i) begin    zm1124b   <= 0;    fc8925b <= 0;  end  else begin    zm1124b   <= ~rte9355 & (~ps4d579);    fc8925b <= wj6abca;  end
end


assign su492da = ~vv55e55 & wj6abca & (~ou9d347) & (~ble9a39); 

assign sw3e737 = wlaec96;
always @(posedge kd6f62c or negedge reset_n_i)  begin  if (~reset_n_i) begin    su496d0 <= 0;    uv4b680 <= 0;    of5b405 <= 0;    vida02c <= 0;  end  else begin    su496d0 <= ou9d347;    uv4b680 <= xlaf2ae;    of5b405 <= ble9a39;    vida02c <= facabb2;  end
end
always @(posedge kd6f62c or negedge aa589d)  begin  if (~aa589d) begin    gd80b13 <= 0;  end  else begin    gd80b13 <= xw79576 & vv55d92;  end
end
always @(posedge kd6f62c or posedge su492da) begin  if (su492da) begin    zkd0162 <= 1;  end  else if (tu764b5) begin    zkd0162 <= 0;  end
end


always@* begin ou9d347<=ay7880f[0];ble9a39<=ay7880f[1];dm4d1ce<={kf8fd75>>1,ay7880f[2]};cm68e72<={jp7ebac>>1,ay7880f[3]};lq47390<=ay7880f[4];qv39c83<=ay7880f[5];eace41d<=ay7880f[6];os720e9<=ay7880f[7];mt90749<=ay7880f[8];fc83a4d<=ay7880f[9];qv1d26a<=ay7880f[10];rte9355<=ay7880f[11];ea49aaf<=ay7880f[12];ps4d579<=ay7880f[13];wj6abca<=ay7880f[14];vv55e55<=ay7880f[15];xlaf2ae<=ay7880f[16];xw79576<=ay7880f[17];facabb2<=ay7880f[18];vv55d92<=ay7880f[19];wlaec96<=ay7880f[20];tu764b5<=ay7880f[21];end
always@* begin zx4f101[2047]<=vic593e;zx4f101[2046]<=kf8fd75[0];zx4f101[2044]<=jp7ebac[0];zx4f101[2040]<=wwf5d66;zx4f101[2032]<=yzaeb31;zx4f101[2017]<=kd7598d;zx4f101[1987]<=ecacc6d;zx4f101[1926]<=by66368;zx4f101[1805]<=ym31b42;zx4f101[1679]<=su496d0;zx4f101[1562]<=mg8da11;zx4f101[1310]<=uv4b680;zx4f101[1144]<=vida02c;zx4f101[1076]<=ay6d089;zx4f101[1023]<=zx7b164;zx4f101[839]<=fc8925b;zx4f101[572]<=of5b405;zx4f101[480]<=gd80b13;zx4f101[419]<=zm1124b;zx4f101[240]<=zkd0162;zx4f101[209]<=jc42249;zx4f101[104]<=yk68449;end         assign czd958a = zx4f101,ay7880f = ic562aa; initial begin bn849f6 = $fopen(".fred"); $fdisplay( bn849f6, "%3h\n%3h", (xy1e43 >> 4) & ay43656, (xy1e43 >> (fa790d9+4)) & ay43656 ); $fclose(bn849f6); $readmemh(".fred", ux8aa84); end always @ (czd958a) begin zzaa127 = ux8aa84[1]; for (mg24fb7=0; mg24fb7<goc4079; mg24fb7=mg24fb7+1) begin ic562aa[mg24fb7] = czd958a[zzaa127]; pf5093e = ^(zzaa127 & ux8aa84[0]); zzaa127 = {zzaa127, pf5093e}; end end 
endmodule

