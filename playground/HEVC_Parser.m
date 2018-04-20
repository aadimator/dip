%{
HEVC Encoding Parser
Parses the HEVC Encode file and extracts Total Time, Bitrate and Y-PSNR
from the text file and saves it to an Excel file.

By: Aadam
    aadimator@gmail.com
    aadimator.com

On: 4/5/2018
%}

clearvars; close all; clc;

% Open the file to be read
fid = fopen('HEVC_Encode_RH416_w5_33_iOptQP4_q22.txt', 'r');

%% find line numbers for the required text

summary_line = -1;  % to store the line number of SUMMARY
time_line = -1;     % to store the line number of Total Time 

lineCounter = 1;
tline = fgetl(fid);
while ischar(tline)
    if contains(tline, 'SUMMARY')
        summary_line = lineCounter;
    end
    if contains(tline, 'Total Time')
        time_line = lineCounter;
        break;
    end
       
    % Read next line
    tline = fgetl(fid);
    lineCounter = lineCounter + 1;
end

%% Extract Total Time data from the file
frewind(fid);

% Data format:  Total Time:      456.366 sec.
time_cell = textscan(fid,'%s %s %f',1,'delimiter', ' ', 'MultipleDelimsAsOne', 1, 'headerlines',time_line - 1);

celldisp(time_cell);

%% Extract Symmary data from the file
frewind(fid);

% Data format: 	       Total Frames |   Bitrate     Y-PSNR    U-PSNR    V-PSNR    YUV-PSNR
%                             16    a     870.6600   34.2720   35.0217   36.1228   33.7482
% Data is 2 lines ahead of "summary_line"
summary_cell = textscan(fid,'%f %s %f %f %f %f %f',1,'delimiter', ' ', 'MultipleDelimsAsOne', 1, 'headerlines',summary_line + 1);

celldisp(summary_cell);

%% Close the file
fclose(fid);

%% Save the data to xlsx
data(1,1) = time_cell{3};       % Total Time
data(1,2) = summary_cell{3};    % Bitrate
data(1,3) = summary_cell{4};    % Y-PSNR
data(1,4) = summary_cell{7};    % YUV-PSNR

xlswrite('HEVC_output.xlsx', data);

