// =========================================================================
// Filename: csi_tasks.v
// Copyright(c) 2017 Lattice Semiconductor Corporation. All rights reserved.
// =========================================================================

////////////////////////////////////////////////////////
/// � Intermotion Technology
/// � B2P Changes
/// � Date MAY 2, 2019
/// � Arman Arshakyan
/// � Directives are changed to parameters.
/// � "expected_data.log" filen ame is used insted of "input_data.log" file.
/// � Changed/updated some signals/parameters names.
/// � "task gen_byte" is moved to byte_driver.v;
//////////////////////////////////////////////////////////////////////////////////
task gen_csi2_raw8_pixel_data;
begin
    gen_byte;

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = b[0][7:0]; 
    end
    //if(((RX_CH ==2 || RX_CH ==4) && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_1_buf = b[1][7:0]; 
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_2_buf = b[2][7:0]; 
        pix_data_3_buf = b[3][7:0]; 
        if(RX_CH==4 && GEAR==16) begin
            pix_data_4_buf = b[4][7:0];
            pix_data_5_buf = b[5][7:0];
            pix_data_6_buf = b[6][7:0];
            pix_data_7_buf = b[7][7:0];
        end
    end


    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
         write_to_file("expected_data.log", pix_data_0_buf);
    end
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_1_buf);
    end
    if( RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_2_buf);
        write_to_file("expected_data.log", pix_data_3_buf);
        if(RX_CH==4 && GEAR==16) begin
            write_to_file("expected_data.log", pix_data_4_buf);
            write_to_file("expected_data.log", pix_data_5_buf);
            write_to_file("expected_data.log", pix_data_6_buf);
            write_to_file("expected_data.log", pix_data_7_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_raw10_pixel_data;
begin
    gen_byte;

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = {b[0][7:0],b[4][1:0]};
        pix_data_1_buf = {b[1][7:0],b[4][3:2]};
        pix_data_2_buf = {b[2][7:0],b[4][5:4]};
        pix_data_3_buf = {b[3][7:0],b[4][7:6]};
    end 
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_4_buf ={b[5][7:0],b[9][1:0]};
        pix_data_5_buf ={b[6][7:0],b[9][3:2]};
        pix_data_6_buf ={b[7][7:0],b[9][5:4]};
        pix_data_7_buf ={b[8][7:0],b[9][7:6]};
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_8_buf  ={b[10][7:0],b[14][1:0]};
        pix_data_9_buf  ={b[11][7:0],b[14][3:2]};
        pix_data_10_buf ={b[12][7:0],b[14][5:4]};
        pix_data_11_buf ={b[13][7:0],b[14][7:6]};

        pix_data_12_buf ={b[15][7:0],b[19][1:0]};
        pix_data_13_buf ={b[16][7:0],b[19][3:2]};
        pix_data_14_buf ={b[17][7:0],b[19][5:4]};
        pix_data_15_buf ={b[18][7:0],b[19][7:6]};

        if(RX_CH==4 && GEAR==16) begin
            pix_data_16_buf = {b[20][7:0],b[24][1:0]};
            pix_data_17_buf = {b[21][7:0],b[24][3:2]};
            pix_data_18_buf = {b[22][7:0],b[24][5:4]};
            pix_data_19_buf = {b[23][7:0],b[24][7:6]};
  
            pix_data_20_buf = {b[25][7:0],b[29][1:0]};
            pix_data_21_buf = {b[26][7:0],b[29][3:2]};
            pix_data_22_buf = {b[27][7:0],b[29][5:4]};
            pix_data_23_buf = {b[28][7:0],b[29][7:6]};

            pix_data_24_buf = {b[30][7:0],b[34][1:0]};
            pix_data_25_buf = {b[31][7:0],b[34][3:2]};
            pix_data_26_buf = {b[32][7:0],b[34][5:4]};
            pix_data_27_buf = {b[33][7:0],b[34][7:6]};

            pix_data_28_buf = {b[35][7:0],b[39][1:0]};
            pix_data_29_buf = {b[36][7:0],b[39][3:2]};
            pix_data_30_buf = {b[37][7:0],b[39][5:4]};
            pix_data_31_buf = {b[38][7:0],b[39][7:6]};
        end
    end
    if(RX_CH == 1 || RX_CH == 2 || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_0_buf);
        write_to_file("expected_data.log", pix_data_1_buf);
        write_to_file("expected_data.log", pix_data_2_buf);
        write_to_file("expected_data.log", pix_data_3_buf);
    end 
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH == 2 && GEAR == 8) || ((RX_CH == 1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_4_buf);
        write_to_file("expected_data.log", pix_data_5_buf);
        write_to_file("expected_data.log", pix_data_6_buf);
        write_to_file("expected_data.log", pix_data_7_buf);
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_8_buf);
        write_to_file("expected_data.log", pix_data_9_buf);
        write_to_file("expected_data.log", pix_data_10_buf);
        write_to_file("expected_data.log", pix_data_11_buf);
        write_to_file("expected_data.log", pix_data_12_buf);
        write_to_file("expected_data.log", pix_data_13_buf);
        write_to_file("expected_data.log", pix_data_14_buf);
        write_to_file("expected_data.log", pix_data_15_buf);
        if(RX_CH==4 && GEAR==16) begin
            write_to_file("expected_data.log", pix_data_16_buf);
            write_to_file("expected_data.log", pix_data_17_buf);
            write_to_file("expected_data.log", pix_data_18_buf);
            write_to_file("expected_data.log", pix_data_19_buf);
            write_to_file("expected_data.log", pix_data_20_buf);
            write_to_file("expected_data.log", pix_data_21_buf);
            write_to_file("expected_data.log", pix_data_22_buf);
            write_to_file("expected_data.log", pix_data_23_buf);
            write_to_file("expected_data.log", pix_data_24_buf);
            write_to_file("expected_data.log", pix_data_25_buf);
            write_to_file("expected_data.log", pix_data_26_buf);
            write_to_file("expected_data.log", pix_data_27_buf);
            write_to_file("expected_data.log", pix_data_28_buf);
            write_to_file("expected_data.log", pix_data_29_buf);
            write_to_file("expected_data.log", pix_data_30_buf);
            write_to_file("expected_data.log", pix_data_31_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_raw12_pixel_data;
begin
    gen_byte;

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = {b[0][7:0],b[2][3:0]}; 
        pix_data_1_buf = {b[1][7:0],b[2][7:4]};
    end 
    //if((((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) ))begin
    if( (RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_2_buf = {b[3][7:0],b[5][3:0]};
        pix_data_3_buf = {b[4][7:0],b[5][7:4]};
    end
    if(RX_CH ==4|| (RX_CH==2 && GEAR==16))begin
        pix_data_4_buf = {b[6][7:0],b[8][3:0]}; 
        pix_data_5_buf = {b[7][7:0],b[8][7:4]};
        pix_data_6_buf = {b[9][7:0],b[11][3:0]}; 
        pix_data_7_buf = {b[10][7:0],b[11][7:4]};
            if(RX_CH==4 && GEAR==16) begin
                pix_data_8_buf = {b[12][7:0],b[14][3:0]};
                pix_data_9_buf = {b[13][7:0],b[14][7:4]};
                pix_data_10_buf = {b[15][7:0],b[17][3:0]};
                pix_data_11_buf = {b[16][7:0],b[17][7:4]};
                pix_data_12_buf = {b[18][7:0],b[20][3:0]};
                pix_data_13_buf = {b[19][7:0],b[20][7:4]};
                pix_data_14_buf = {b[21][7:0],b[23][3:0]};
                pix_data_15_buf = {b[22][7:0],b[23][7:4]};
            end
    end
    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
         write_to_file("expected_data.log", pix_data_0_buf);
         write_to_file("expected_data.log", pix_data_1_buf);
    end 
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if( (RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
         write_to_file("expected_data.log", pix_data_2_buf);
         write_to_file("expected_data.log", pix_data_3_buf);
    end
    if(RX_CH ==4|| (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_4_buf);
        write_to_file("expected_data.log", pix_data_5_buf);
        write_to_file("expected_data.log", pix_data_6_buf);
        write_to_file("expected_data.log", pix_data_7_buf);
        if(RX_CH==4 && GEAR==16) begin
            write_to_file("expected_data.log", pix_data_8_buf);
            write_to_file("expected_data.log", pix_data_9_buf);
            write_to_file("expected_data.log", pix_data_10_buf);
            write_to_file("expected_data.log", pix_data_11_buf);
            write_to_file("expected_data.log", pix_data_12_buf);
            write_to_file("expected_data.log", pix_data_13_buf);
            write_to_file("expected_data.log", pix_data_14_buf);
            write_to_file("expected_data.log", pix_data_15_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_leg_yuv420_8_pixel_data;
begin
    gen_byte;

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = b[0][7:0]; 
        pix_data_1_buf = b[1][7:0]; 
        pix_data_2_buf = b[2][7:0]; 
    end
    //if(((RX_CH ==2 || RX_CH ==4) && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if( (RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_3_buf = b[3][7:0]; 
        pix_data_4_buf = b[4][7:0]; 
        pix_data_5_buf = b[5][7:0]; 
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_6_buf = b[6][7:0];
        pix_data_7_buf = b[7][7:0];
        pix_data_8_buf = b[8][7:0];
        pix_data_9_buf = b[9][7:0];
        pix_data_10_buf = b[10][7:0];
        pix_data_11_buf = b[11][7:0];
        if(RX_CH==4 && GEAR==16) begin
            pix_data_12_buf = b[12][7:0];
            pix_data_13_buf = b[13][7:0];
            pix_data_14_buf = b[14][7:0];
            pix_data_15_buf = b[15][7:0];
            pix_data_16_buf = b[16][7:0];
            pix_data_17_buf = b[17][7:0];
            pix_data_18_buf = b[18][7:0];
            pix_data_19_buf = b[19][7:0];
            pix_data_20_buf = b[20][7:0];
            pix_data_21_buf = b[21][7:0];
            pix_data_22_buf = b[22][7:0];
            pix_data_23_buf = b[23][7:0];
        end
    end
    
    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        write_to_file("expected_data.log", pix_data_0_buf);
        write_to_file("expected_data.log", pix_data_1_buf);
        write_to_file("expected_data.log", pix_data_2_buf);
    end
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if( (RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_3_buf);
        write_to_file("expected_data.log", pix_data_4_buf);
        write_to_file("expected_data.log", pix_data_5_buf);
    end
    if( RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_6_buf);
        write_to_file("expected_data.log", pix_data_7_buf);
        write_to_file("expected_data.log", pix_data_8_buf);
        write_to_file("expected_data.log", pix_data_9_buf);
        write_to_file("expected_data.log", pix_data_10_buf);
        write_to_file("expected_data.log", pix_data_11_buf);
        if(RX_CH==4 && GEAR==16) begin
            write_to_file("expected_data.log", pix_data_12_buf);
            write_to_file("expected_data.log", pix_data_13_buf);
            write_to_file("expected_data.log", pix_data_14_buf);
            write_to_file("expected_data.log", pix_data_15_buf);
            write_to_file("expected_data.log", pix_data_16_buf);
            write_to_file("expected_data.log", pix_data_17_buf);
            write_to_file("expected_data.log", pix_data_18_buf);
            write_to_file("expected_data.log", pix_data_19_buf);
            write_to_file("expected_data.log", pix_data_20_buf);
            write_to_file("expected_data.log", pix_data_21_buf);
            write_to_file("expected_data.log", pix_data_22_buf);
            write_to_file("expected_data.log", pix_data_23_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_yuv420_8_pixel_data;
begin
    gen_byte;

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = b[0][7:0];
        pix_data_1_buf = b[1][7:0];
    end
    //if(((RX_CH ==2 || RX_CH ==4) && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_2_buf = b[2][7:0];
        pix_data_3_buf = b[3][7:0];
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_4_buf = b[4][7:0];
        pix_data_5_buf = b[5][7:0];
        pix_data_6_buf = b[6][7:0];
        pix_data_7_buf = b[7][7:0];
        if(RX_CH==4 && GEAR==16) begin
            pix_data_8_buf = b[8][7:0];
            pix_data_9_buf = b[9][7:0];
            pix_data_10_buf = b[10][7:0];
            pix_data_11_buf = b[11][7:0];
            pix_data_12_buf = b[12][7:0];
            pix_data_13_buf = b[13][7:0];
            pix_data_14_buf = b[14][7:0];
            pix_data_15_buf = b[15][7:0];
        end
    end

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        write_to_file("expected_data.log", pix_data_0_buf);
        write_to_file("expected_data.log", pix_data_1_buf);
    end
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if( (RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_2_buf);
        write_to_file("expected_data.log", pix_data_3_buf);
    end
    if( RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_4_buf);
        write_to_file("expected_data.log", pix_data_5_buf);
        write_to_file("expected_data.log", pix_data_6_buf);
        write_to_file("expected_data.log", pix_data_7_buf);
        if(RX_CH==4 && GEAR==16) begin
            write_to_file("expected_data.log", pix_data_8_buf);
            write_to_file("expected_data.log", pix_data_9_buf);
            write_to_file("expected_data.log", pix_data_10_buf);
            write_to_file("expected_data.log", pix_data_11_buf);
            write_to_file("expected_data.log", pix_data_12_buf);
            write_to_file("expected_data.log", pix_data_13_buf);
            write_to_file("expected_data.log", pix_data_14_buf);
            write_to_file("expected_data.log", pix_data_15_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_yuv420_8_csps_pixel_data; 
begin
    gen_byte;

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = b[0][7:0];
        pix_data_1_buf = b[1][7:0];
        pix_data_2_buf = b[2][7:0];
        pix_data_3_buf = b[3][7:0];
    end
    //if(((RX_CH ==2 || RX_CH ==4) && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if( (RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_4_buf = b[4][7:0];
        pix_data_5_buf = b[5][7:0];
        pix_data_6_buf = b[6][7:0];
        pix_data_7_buf = b[7][7:0];
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_8_buf = b[8][7:0];
        pix_data_9_buf = b[9][7:0];
        pix_data_10_buf = b[10][7:0];
        pix_data_11_buf = b[11][7:0];
        pix_data_12_buf = b[12][7:0];
        pix_data_13_buf = b[13][7:0];
        pix_data_14_buf = b[14][7:0];
        pix_data_15_buf = b[15][7:0];
        if(RX_CH==4 && GEAR==16)begin
            pix_data_16_buf = b[16][7:0];
            pix_data_17_buf = b[17][7:0];
            pix_data_18_buf = b[18][7:0];
            pix_data_19_buf = b[19][7:0];
            pix_data_20_buf = b[20][7:0];
            pix_data_21_buf = b[21][7:0];
            pix_data_22_buf = b[22][7:0];
            pix_data_23_buf = b[23][7:0];
            pix_data_24_buf = b[24][7:0];
            pix_data_25_buf = b[25][7:0];
            pix_data_26_buf = b[26][7:0];
            pix_data_27_buf = b[27][7:0];
            pix_data_28_buf = b[28][7:0];
            pix_data_29_buf = b[29][7:0];
            pix_data_30_buf = b[30][7:0];
            pix_data_31_buf = b[31][7:0];
        end
    end
    
    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        write_to_file("expected_data.log", pix_data_0_buf);
        write_to_file("expected_data.log", pix_data_1_buf);
        write_to_file("expected_data.log", pix_data_2_buf);
        write_to_file("expected_data.log", pix_data_3_buf);
    end
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_4_buf);
        write_to_file("expected_data.log", pix_data_5_buf);
        write_to_file("expected_data.log", pix_data_6_buf);
        write_to_file("expected_data.log", pix_data_7_buf);
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_8_buf);
        write_to_file("expected_data.log", pix_data_9_buf);
        write_to_file("expected_data.log", pix_data_10_buf);
        write_to_file("expected_data.log", pix_data_11_buf);
        write_to_file("expected_data.log", pix_data_12_buf);
        write_to_file("expected_data.log", pix_data_13_buf);
        write_to_file("expected_data.log", pix_data_14_buf);
        write_to_file("expected_data.log", pix_data_15_buf);
        if(RX_CH==4 && GEAR==16)begin
            write_to_file("expected_data.log", pix_data_16_buf);
            write_to_file("expected_data.log", pix_data_17_buf);
            write_to_file("expected_data.log", pix_data_18_buf);
            write_to_file("expected_data.log", pix_data_19_buf);
            write_to_file("expected_data.log", pix_data_20_buf);
            write_to_file("expected_data.log", pix_data_21_buf);
            write_to_file("expected_data.log", pix_data_22_buf);
            write_to_file("expected_data.log", pix_data_23_buf);
            write_to_file("expected_data.log", pix_data_24_buf);
            write_to_file("expected_data.log", pix_data_25_buf);
            write_to_file("expected_data.log", pix_data_26_buf);
            write_to_file("expected_data.log", pix_data_27_buf);
            write_to_file("expected_data.log", pix_data_28_buf);
            write_to_file("expected_data.log", pix_data_29_buf);
            write_to_file("expected_data.log", pix_data_30_buf);
            write_to_file("expected_data.log", pix_data_31_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_yuv420_10_pixel_data;
begin
    gen_byte;

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = {b[0][7:0],b[4][1:0]};
        pix_data_1_buf = {b[1][7:0],b[4][3:2]};
        pix_data_2_buf = {b[2][7:0],b[4][5:4]};
        pix_data_3_buf = {b[3][7:0],b[4][7:6]};
    end 
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_4_buf ={b[5][7:0],b[9][1:0]}; 
        pix_data_5_buf ={b[6][7:0],b[9][3:2]}; 
        pix_data_6_buf ={b[7][7:0],b[9][5:4]}; 
        pix_data_7_buf ={b[8][7:0],b[9][7:6]}; 
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_8_buf  ={b[10][7:0],b[14][1:0]};
        pix_data_9_buf  ={b[11][7:0],b[14][3:2]};
        pix_data_10_buf ={b[12][7:0],b[14][5:4]};
        pix_data_11_buf ={b[13][7:0],b[14][7:6]};

        pix_data_12_buf ={b[15][7:0],b[19][1:0]};
        pix_data_13_buf ={b[16][7:0],b[19][3:2]};
        pix_data_14_buf ={b[17][7:0],b[19][5:4]};
        pix_data_15_buf ={b[18][7:0],b[19][7:6]};

        if(RX_CH==4 && GEAR==16) begin
            pix_data_16_buf = {b[20][7:0],b[24][1:0]};
            pix_data_17_buf = {b[21][7:0],b[24][3:2]};
            pix_data_18_buf = {b[22][7:0],b[24][5:4]};
            pix_data_19_buf = {b[23][7:0],b[24][7:6]};
  
            pix_data_20_buf = {b[25][7:0],b[29][1:0]};
            pix_data_21_buf = {b[26][7:0],b[29][3:2]};
            pix_data_22_buf = {b[27][7:0],b[29][5:4]};
            pix_data_23_buf = {b[28][7:0],b[29][7:6]};

            pix_data_24_buf = {b[30][7:0],b[34][1:0]};
            pix_data_25_buf = {b[31][7:0],b[34][3:2]};
            pix_data_26_buf = {b[32][7:0],b[34][5:4]};
            pix_data_27_buf = {b[33][7:0],b[34][7:6]};

            pix_data_28_buf = {b[35][7:0],b[39][1:0]};
            pix_data_29_buf = {b[36][7:0],b[39][3:2]};
            pix_data_30_buf = {b[37][7:0],b[39][5:4]};
            pix_data_31_buf = {b[38][7:0],b[39][7:6]};
        end
    end
    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
         write_to_file("expected_data.log", pix_data_0_buf);
         write_to_file("expected_data.log", pix_data_1_buf);
         write_to_file("expected_data.log", pix_data_2_buf);
         write_to_file("expected_data.log", pix_data_3_buf);
    end 
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if( (RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_4_buf);
        write_to_file("expected_data.log", pix_data_5_buf);
        write_to_file("expected_data.log", pix_data_6_buf);
        write_to_file("expected_data.log", pix_data_7_buf);
    end
    if(RX_CH ==4|| (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_8_buf);
        write_to_file("expected_data.log", pix_data_9_buf);
        write_to_file("expected_data.log", pix_data_10_buf);
        write_to_file("expected_data.log", pix_data_11_buf);
        write_to_file("expected_data.log", pix_data_12_buf);
        write_to_file("expected_data.log", pix_data_13_buf);
        write_to_file("expected_data.log", pix_data_14_buf);
        write_to_file("expected_data.log", pix_data_15_buf);
        if(RX_CH==4 && GEAR==16)begin
            write_to_file("expected_data.log", pix_data_16_buf);
            write_to_file("expected_data.log", pix_data_17_buf);
            write_to_file("expected_data.log", pix_data_18_buf);
            write_to_file("expected_data.log", pix_data_19_buf);
            write_to_file("expected_data.log", pix_data_20_buf);
            write_to_file("expected_data.log", pix_data_21_buf);
            write_to_file("expected_data.log", pix_data_22_buf);
            write_to_file("expected_data.log", pix_data_23_buf);
            write_to_file("expected_data.log", pix_data_24_buf);
            write_to_file("expected_data.log", pix_data_25_buf);
            write_to_file("expected_data.log", pix_data_26_buf);
            write_to_file("expected_data.log", pix_data_27_buf);
            write_to_file("expected_data.log", pix_data_28_buf);
            write_to_file("expected_data.log", pix_data_29_buf);
            write_to_file("expected_data.log", pix_data_30_buf);
            write_to_file("expected_data.log", pix_data_31_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_yuv420_10_csps_pixel_data;
begin
    gen_byte;

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = {b[0][7:0],b[4][1:0]}; 
        pix_data_1_buf = {b[1][7:0],b[4][3:2]};
        pix_data_2_buf = {b[2][7:0],b[4][5:4]};
        pix_data_3_buf = {b[3][7:0],b[4][7:6]};

        pix_data_4_buf ={b[5][7:0],b[9][1:0]}; 
        pix_data_5_buf ={b[6][7:0],b[9][3:2]}; 
        pix_data_6_buf ={b[7][7:0],b[9][5:4]}; 
        pix_data_7_buf ={b[8][7:0],b[9][7:6]}; 
    end 
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_8_buf  ={b[10][7:0],b[14][1:0]}; 
        pix_data_9_buf  ={b[11][7:0],b[14][3:2]}; 
        pix_data_10_buf ={b[12][7:0],b[14][5:4]}; 
        pix_data_11_buf ={b[13][7:0],b[14][7:6]}; 

        pix_data_12_buf ={b[15][7:0],b[19][1:0]}; 
        pix_data_13_buf ={b[16][7:0],b[19][3:2]}; 
        pix_data_14_buf ={b[17][7:0],b[19][5:4]}; 
        pix_data_15_buf ={b[18][7:0],b[19][7:6]}; 
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_16_buf = {b[20][7:0],b[24][1:0]};
        pix_data_17_buf = {b[21][7:0],b[24][3:2]}; 
        pix_data_18_buf = {b[22][7:0],b[24][5:4]};
        pix_data_19_buf = {b[23][7:0],b[24][7:6]};
  
        pix_data_20_buf = {b[25][7:0],b[29][1:0]};
        pix_data_21_buf = {b[26][7:0],b[29][3:2]};
        pix_data_22_buf = {b[27][7:0],b[29][5:4]};
        pix_data_23_buf = {b[28][7:0],b[29][7:6]};

        pix_data_24_buf = {b[30][7:0],b[34][1:0]};
        pix_data_25_buf = {b[31][7:0],b[34][3:2]};
        pix_data_26_buf = {b[32][7:0],b[34][5:4]};
        pix_data_27_buf = {b[33][7:0],b[34][7:6]};

        pix_data_28_buf = {b[35][7:0],b[39][1:0]};
        pix_data_29_buf = {b[36][7:0],b[39][3:2]};
        pix_data_30_buf = {b[37][7:0],b[39][5:4]};
        pix_data_31_buf = {b[38][7:0],b[39][7:6]};

        if(RX_CH==4 && GEAR==16)begin
            pix_data_32_buf = {b[40][7:0],b[44][1:0]};
            pix_data_33_buf = {b[41][7:0],b[44][3:2]}; 
            pix_data_34_buf = {b[42][7:0],b[44][5:4]};
            pix_data_35_buf = {b[43][7:0],b[44][7:6]};
  
            pix_data_36_buf = {b[45][7:0],b[49][1:0]};
            pix_data_37_buf = {b[46][7:0],b[49][3:2]};
            pix_data_38_buf = {b[47][7:0],b[49][5:4]};
            pix_data_39_buf = {b[48][7:0],b[49][7:6]};

            pix_data_40_buf = {b[50][7:0],b[54][1:0]};
            pix_data_41_buf = {b[51][7:0],b[54][3:2]};
            pix_data_42_buf = {b[52][7:0],b[54][5:4]};
            pix_data_43_buf = {b[53][7:0],b[54][7:6]};

            pix_data_44_buf = {b[55][7:0],b[59][1:0]};
            pix_data_45_buf = {b[56][7:0],b[59][3:2]};
            pix_data_46_buf = {b[57][7:0],b[59][5:4]};
            pix_data_47_buf = {b[58][7:0],b[59][7:6]};

            pix_data_48_buf = {b[60][7:0],b[64][1:0]};
            pix_data_49_buf = {b[61][7:0],b[64][3:2]}; 
            pix_data_50_buf = {b[62][7:0],b[64][5:4]};
            pix_data_51_buf = {b[63][7:0],b[64][7:6]};
  
            pix_data_52_buf = {b[65][7:0],b[69][1:0]};
            pix_data_53_buf = {b[66][7:0],b[69][3:2]};
            pix_data_54_buf = {b[67][7:0],b[69][5:4]};
            pix_data_55_buf = {b[68][7:0],b[69][7:6]};

            pix_data_56_buf = {b[70][7:0],b[74][1:0]};
            pix_data_57_buf = {b[71][7:0],b[74][3:2]};
            pix_data_58_buf = {b[72][7:0],b[74][5:4]};
            pix_data_59_buf = {b[73][7:0],b[74][7:6]};

            pix_data_60_buf = {b[35][7:0],b[39][1:0]};
            pix_data_61_buf = {b[36][7:0],b[39][3:2]};
            pix_data_62_buf = {b[37][7:0],b[39][5:4]};
            pix_data_63_buf = {b[38][7:0],b[39][7:6]};
        end
    end
    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        write_to_file("expected_data.log", pix_data_0_buf);
        write_to_file("expected_data.log", pix_data_1_buf);
        write_to_file("expected_data.log", pix_data_2_buf);
        write_to_file("expected_data.log", pix_data_3_buf);
        write_to_file("expected_data.log", pix_data_4_buf);
        write_to_file("expected_data.log", pix_data_5_buf);
        write_to_file("expected_data.log", pix_data_6_buf);
        write_to_file("expected_data.log", pix_data_7_buf);
    end 
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2 && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_8_buf);
        write_to_file("expected_data.log", pix_data_9_buf);
        write_to_file("expected_data.log", pix_data_10_buf);
        write_to_file("expected_data.log", pix_data_11_buf);
        write_to_file("expected_data.log", pix_data_12_buf);
        write_to_file("expected_data.log", pix_data_13_buf);
        write_to_file("expected_data.log", pix_data_14_buf);
        write_to_file("expected_data.log", pix_data_15_buf);
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_16_buf);
        write_to_file("expected_data.log", pix_data_17_buf);
        write_to_file("expected_data.log", pix_data_18_buf);
        write_to_file("expected_data.log", pix_data_19_buf);
        write_to_file("expected_data.log", pix_data_20_buf);
        write_to_file("expected_data.log", pix_data_21_buf);
        write_to_file("expected_data.log", pix_data_22_buf);
        write_to_file("expected_data.log", pix_data_23_buf);
        write_to_file("expected_data.log", pix_data_24_buf);
        write_to_file("expected_data.log", pix_data_25_buf);
        write_to_file("expected_data.log", pix_data_26_buf);
        write_to_file("expected_data.log", pix_data_27_buf);
        write_to_file("expected_data.log", pix_data_28_buf);
        write_to_file("expected_data.log", pix_data_29_buf);
        write_to_file("expected_data.log", pix_data_30_buf);
        write_to_file("expected_data.log", pix_data_31_buf);
        if(RX_CH==4 && GEAR==16)begin
            write_to_file("expected_data.log", pix_data_32_buf);
            write_to_file("expected_data.log", pix_data_33_buf);
            write_to_file("expected_data.log", pix_data_34_buf);
            write_to_file("expected_data.log", pix_data_35_buf);
            write_to_file("expected_data.log", pix_data_36_buf);
            write_to_file("expected_data.log", pix_data_37_buf);
            write_to_file("expected_data.log", pix_data_38_buf);
            write_to_file("expected_data.log", pix_data_39_buf);
            write_to_file("expected_data.log", pix_data_40_buf);
            write_to_file("expected_data.log", pix_data_41_buf);
            write_to_file("expected_data.log", pix_data_42_buf);
            write_to_file("expected_data.log", pix_data_43_buf);
            write_to_file("expected_data.log", pix_data_44_buf);
            write_to_file("expected_data.log", pix_data_45_buf);
            write_to_file("expected_data.log", pix_data_46_buf);
            write_to_file("expected_data.log", pix_data_47_buf);
            write_to_file("expected_data.log", pix_data_48_buf);
            write_to_file("expected_data.log", pix_data_49_buf);
            write_to_file("expected_data.log", pix_data_50_buf);
            write_to_file("expected_data.log", pix_data_51_buf);
            write_to_file("expected_data.log", pix_data_52_buf);
            write_to_file("expected_data.log", pix_data_53_buf);
            write_to_file("expected_data.log", pix_data_54_buf);
            write_to_file("expected_data.log", pix_data_55_buf);
            write_to_file("expected_data.log", pix_data_56_buf);
            write_to_file("expected_data.log", pix_data_57_buf);
            write_to_file("expected_data.log", pix_data_58_buf);
            write_to_file("expected_data.log", pix_data_59_buf);
            write_to_file("expected_data.log", pix_data_60_buf);
            write_to_file("expected_data.log", pix_data_61_buf);
            write_to_file("expected_data.log", pix_data_62_buf);
            write_to_file("expected_data.log", pix_data_63_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_yuv422_8_pixel_data;//TODO
begin
    gen_byte;

     if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = b[0][7:0];
        pix_data_1_buf = b[1][7:0];
        pix_data_2_buf = b[2][7:0];
        pix_data_3_buf = b[3][7:0];
    end
    //if(((RX_CH ==2 || RX_CH ==4) && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_4_buf = b[4][7:0];
        pix_data_5_buf = b[5][7:0];
        pix_data_6_buf = b[6][7:0];
        pix_data_7_buf = b[7][7:0];
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_8_buf = b[8][7:0];
        pix_data_9_buf = b[9][7:0];
        pix_data_10_buf = b[10][7:0];
        pix_data_11_buf = b[11][7:0];
        pix_data_12_buf = b[12][7:0];
        pix_data_13_buf = b[13][7:0];
        pix_data_14_buf = b[14][7:0];
        pix_data_15_buf = b[15][7:0];
        if(RX_CH==4 && GEAR==16) begin
            pix_data_16_buf = b[16][7:0];
            pix_data_17_buf = b[17][7:0];
            pix_data_18_buf = b[18][7:0];
            pix_data_19_buf = b[19][7:0];
            pix_data_20_buf = b[20][7:0];
            pix_data_21_buf = b[21][7:0];
            pix_data_22_buf = b[22][7:0];
            pix_data_23_buf = b[23][7:0];
            pix_data_24_buf = b[24][7:0];
            pix_data_25_buf = b[25][7:0];
            pix_data_26_buf = b[26][7:0];
            pix_data_27_buf = b[27][7:0];
            pix_data_28_buf = b[28][7:0];
            pix_data_29_buf = b[29][7:0];
            pix_data_30_buf = b[30][7:0];
            pix_data_31_buf = b[31][7:0];
        end
    end

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
         write_to_file("expected_data.log", pix_data_0_buf);
         write_to_file("expected_data.log", pix_data_1_buf);
         write_to_file("expected_data.log", pix_data_2_buf);
         write_to_file("expected_data.log", pix_data_3_buf);
    end
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_4_buf);
        write_to_file("expected_data.log", pix_data_5_buf);
        write_to_file("expected_data.log", pix_data_6_buf);
        write_to_file("expected_data.log", pix_data_7_buf);
    end
    if( RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_8_buf);
        write_to_file("expected_data.log", pix_data_9_buf);
        write_to_file("expected_data.log", pix_data_10_buf);
        write_to_file("expected_data.log", pix_data_11_buf);
        write_to_file("expected_data.log", pix_data_12_buf);
        write_to_file("expected_data.log", pix_data_13_buf);
        write_to_file("expected_data.log", pix_data_14_buf);
        write_to_file("expected_data.log", pix_data_15_buf);
        if(RX_CH==4 && GEAR==16) begin
            write_to_file("expected_data.log", pix_data_16_buf);
            write_to_file("expected_data.log", pix_data_17_buf);
            write_to_file("expected_data.log", pix_data_18_buf);
            write_to_file("expected_data.log", pix_data_19_buf);
            write_to_file("expected_data.log", pix_data_20_buf);
            write_to_file("expected_data.log", pix_data_21_buf);
            write_to_file("expected_data.log", pix_data_22_buf);
            write_to_file("expected_data.log", pix_data_23_buf);
            write_to_file("expected_data.log", pix_data_24_buf);
            write_to_file("expected_data.log", pix_data_25_buf);
            write_to_file("expected_data.log", pix_data_26_buf);
            write_to_file("expected_data.log", pix_data_27_buf);
            write_to_file("expected_data.log", pix_data_28_buf);
            write_to_file("expected_data.log", pix_data_29_buf);
            write_to_file("expected_data.log", pix_data_30_buf);
            write_to_file("expected_data.log", pix_data_31_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_yuv422_10_pixel_data;//TODO
begin
    gen_byte;

   if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = {b[0][7:0],b[4][1:0]}; 
        pix_data_1_buf = {b[1][7:0],b[4][3:2]};
        pix_data_2_buf = {b[2][7:0],b[4][5:4]};
        pix_data_3_buf = {b[3][7:0],b[4][7:6]};
    end 
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_4_buf ={b[5][7:0],b[9][1:0]}; 
        pix_data_5_buf ={b[6][7:0],b[9][3:2]}; 
        pix_data_6_buf ={b[7][7:0],b[9][5:4]}; 
        pix_data_7_buf ={b[8][7:0],b[9][7:6]}; 
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_8_buf  ={b[10][7:0],b[14][1:0]}; 
        pix_data_9_buf  ={b[11][7:0],b[14][3:2]}; 
        pix_data_10_buf ={b[12][7:0],b[14][5:4]}; 
        pix_data_11_buf ={b[13][7:0],b[14][7:6]}; 

        pix_data_12_buf ={b[15][7:0],b[19][1:0]}; 
        pix_data_13_buf ={b[16][7:0],b[19][3:2]}; 
        pix_data_14_buf ={b[17][7:0],b[19][5:4]}; 
        pix_data_15_buf ={b[18][7:0],b[19][7:6]}; 

        if(RX_CH==4 && GEAR==16) begin
            pix_data_16_buf = {b[20][7:0],b[24][1:0]};
            pix_data_17_buf = {b[21][7:0],b[24][3:2]}; 
            pix_data_18_buf = {b[22][7:0],b[24][5:4]};
            pix_data_19_buf = {b[23][7:0],b[24][7:6]};
  
            pix_data_20_buf = {b[25][7:0],b[29][1:0]};
            pix_data_21_buf = {b[26][7:0],b[29][3:2]};
            pix_data_22_buf = {b[27][7:0],b[29][5:4]};
            pix_data_23_buf = {b[28][7:0],b[29][7:6]};

            pix_data_24_buf = {b[30][7:0],b[34][1:0]};
            pix_data_25_buf = {b[31][7:0],b[34][3:2]};
            pix_data_26_buf = {b[32][7:0],b[34][5:4]};
            pix_data_27_buf = {b[33][7:0],b[34][7:6]};

            pix_data_28_buf = {b[35][7:0],b[39][1:0]};
            pix_data_29_buf = {b[36][7:0],b[39][3:2]};
            pix_data_30_buf = {b[37][7:0],b[39][5:4]};
            pix_data_31_buf = {b[38][7:0],b[39][7:6]};
        end
    end
    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        write_to_file("expected_data.log", pix_data_0_buf);
        write_to_file("expected_data.log", pix_data_1_buf);
        write_to_file("expected_data.log", pix_data_2_buf);
        write_to_file("expected_data.log", pix_data_3_buf);
    end
    //if(((RX_CH ==2 || RX_CH ==4)&& GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_4_buf);
        write_to_file("expected_data.log", pix_data_5_buf);
        write_to_file("expected_data.log", pix_data_6_buf);
        write_to_file("expected_data.log", pix_data_7_buf);
    end
    if(RX_CH ==4|| (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_8_buf);
        write_to_file("expected_data.log", pix_data_9_buf);
        write_to_file("expected_data.log", pix_data_10_buf);
        write_to_file("expected_data.log", pix_data_11_buf);
        write_to_file("expected_data.log", pix_data_12_buf);
        write_to_file("expected_data.log", pix_data_13_buf);
        write_to_file("expected_data.log", pix_data_14_buf);
        write_to_file("expected_data.log", pix_data_15_buf);
        if(RX_CH==4 && GEAR==16) begin
            write_to_file("expected_data.log", pix_data_16_buf);
            write_to_file("expected_data.log", pix_data_17_buf);
            write_to_file("expected_data.log", pix_data_18_buf);
            write_to_file("expected_data.log", pix_data_19_buf);
            write_to_file("expected_data.log", pix_data_20_buf);
            write_to_file("expected_data.log", pix_data_21_buf);
            write_to_file("expected_data.log", pix_data_22_buf);
            write_to_file("expected_data.log", pix_data_23_buf);
            write_to_file("expected_data.log", pix_data_24_buf);
            write_to_file("expected_data.log", pix_data_25_buf);
            write_to_file("expected_data.log", pix_data_26_buf);
            write_to_file("expected_data.log", pix_data_27_buf);
            write_to_file("expected_data.log", pix_data_28_buf);
            write_to_file("expected_data.log", pix_data_29_buf);
            write_to_file("expected_data.log", pix_data_30_buf);
            write_to_file("expected_data.log", pix_data_31_buf);
        end
    end

    drive_csi_byte_data;
end
endtask

task gen_csi2_rgb888_pixel_data;
begin
    gen_byte();

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        pix_data_0_buf = {b[2],b[1],b[0]};
    end
    //if( ((RX_CH ==2 || RX_CH ==4) && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if((RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        pix_data_1_buf = {b[5],b[4],b[3]};
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        pix_data_2_buf = {b[8],b[7],b[6]};
        pix_data_3_buf = {b[11],b[10],b[9]};
        if(RX_CH ==4 && GEAR==16) begin
            pix_data_4_buf = {b[14],b[13],b[12]};
            pix_data_5_buf = {b[17],b[16],b[15]};
            pix_data_6_buf = {b[20],b[19],b[18]};
            pix_data_7_buf = {b[23],b[22],b[21]};
        end
    end

    if(RX_CH ==1 || RX_CH ==2 || RX_CH ==4)begin
        write_to_file("expected_data.log", pix_data_0_buf);
    end
    //if( ((RX_CH ==2 || RX_CH ==4) && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) )begin
    if( (RX_CH ==2  && GEAR == 8) || ((RX_CH ==1 || RX_CH ==2) && GEAR == 16) || RX_CH == 4)begin
        write_to_file("expected_data.log", pix_data_1_buf);
    end
    if(RX_CH ==4 || (RX_CH==2 && GEAR==16))begin
        write_to_file("expected_data.log", pix_data_2_buf);
        write_to_file("expected_data.log", pix_data_3_buf);
        if(RX_CH ==4 && GEAR==16) begin
            write_to_file("expected_data.log", pix_data_4_buf);
            write_to_file("expected_data.log", pix_data_5_buf);
            write_to_file("expected_data.log", pix_data_6_buf);
            write_to_file("expected_data.log", pix_data_7_buf);
        end
    end

    drive_csi_byte_data;
end
endtask
