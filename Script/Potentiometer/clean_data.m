clear; clc;

% โหลดไฟล์ต้นฉบับ
load('Rotary_Potentiometer_Type_C_2.mat');
output_folder = "segments_output_2";  % สร้างโฟลเดอร์เก็บไฟล

% ดึงข้อมูลจาก timeseries
if isa(data, 'timeseries')
    t = data.Time;
    y = data.Data;
else
    error('ไม่พบ timeseries "data"');
end

y = squeeze(y); % ลดมิติให้เป็นเวกเตอร์ 1D

% -------------------------------
% 🔧 กำหนดช่วงที่ต้องการตัด
% -------------------------------
%start_indices = [6040,7615,9181,10649,12306,13516,17220,19213,23264,27843];  % index เริ่มต้นแต่ละช่วง
start_indices = [1500,2800,5002,6047,7012,8573,10119,11434,12590,13602];
%start_indices = [2110,3488,5000,6080,7050,8404,10180,11430,12570,13640];
num_points = 30;                % จำนวนข้อมูลต่อช่วง

% ตรวจสอบขนาด
n = length(y);

% -------------------------------
% ✂️ ตัดและบันทึกแต่ละช่วงแยกไฟล์
% -------------------------------
%output_folder = "segments_output_2";  % สร้างโฟลเดอร์เก็บไฟล์
if ~exist(output_folder, "dir")
    mkdir(output_folder);
end

for i = 1:length(start_indices)
    s = start_indices(i);
    e = s + num_points - 1;
    if e > n
        warning('ช่วง %d เกินขอบเขตข้อมูล ถูกตัดให้ถึง %d', i, n);
        e = n;
    end

    % ตัดข้อมูลช่วงนี้
    y_segment = y(s:e);
    t_segment = t(s:e);

    % ตั้งชื่อไฟล์ เช่น segment_1.mat, segment_2.mat, ...
    filename = fullfile(output_folder, sprintf('segment_%02d.mat', i));

    % บันทึก
    save(filename, 't_segment', 'y_segment');

    fprintf('✅ บันทึก %s (%02d ถึง %02d)\n', filename, s, e);
end

disp('🎉 ตัดและบันทึกไฟล์ทั้งหมดเรียบร้อยแล้ว!');
