   clear; clc; close all;

% =========================================================================
% ⚙️ ส่วนที่ 1: กำหนดข้อมูลพื้นฐาน
% =========================================================================
x_axis_values = [1,2,3,4,5,6,7,8,9,10] * (10);
%x_axis_values = [10,9,8,7,6,5,4,3,2,1] * (10);

% รายชื่อโฟลเดอร์ที่ต้องการอ่าน
output_folders = { ...
    "segments_output_1", ...
    "segments_output_2", ...
    "segments_output_3" ...
};

% ชื่อเส้นสำหรับแต่ละโฟลเดอร์
line_labels = { ...
    "การทดลองที่ 1", ...
    "การทดลองที่ 2", ...
    "การทดลองที่ 3" ...
};

% สีและ marker สำหรับแต่ละโฟลเดอร์
plot_styles = { ...
    {'o-', [0 0.447 0.741]}, ...   % ฟ้า
    {'d-', [0.850 0.325 0.098]}, ... % ส้ม
    {'s-', [0.466 0.674 0.188]} ...  % เขียว
};

% --- ข้อมูลที่กำหนดเอง (manual) ---
x_points_manual = [ 3.306, 8.880, 18.99, 28.93, 39.54, 49.77, 59.64, 69.34, 80.25, 95.33 ];
y_points_manual = [ 99.47, 87.73, 63.55, 39.36, 22.27, 14.87, 10.57, 5.936, 2.156, 0.256];

% =========================================================================
% 🔧 ฟังก์ชันย่อยสำหรับโหลดข้อมูลจากแต่ละโฟลเดอร์
% =========================================================================
function averages = read_segment_data(folder)
    segment_files = dir(fullfile(folder, 'segment_*.mat'));
    if isempty(segment_files)
        error('ไม่พบไฟล์ segment ในโฟลเดอร์ "%s"', folder);
    end

    fprintf('\n📂 อ่านข้อมูลจาก "%s"\n', folder);
    averages = zeros(1, length(segment_files));
    for i = 1:length(segment_files)
        file_path = fullfile(folder, segment_files(i).name);
        data_in_file = load(file_path, 'y_segment');
        current_average = mean(data_in_file.y_segment);
        averages(i) = 100 - current_average * (100/4095);
        fprintf('✅ %s -> avg raw: %.2f -> converted: %.2f\n', ...
            segment_files(i).name, current_average, averages(i));
    end
end

% =========================================================================
% 📊 ส่วนที่ 2: สร้างกราฟรวมจากทุกโฟลเดอร์
% =========================================================================
figure; hold on;
for i = 1:length(output_folders)
    folder = output_folders{i};
    label = line_labels{i};
    [style, color] = deal(plot_styles{i}{1}, plot_styles{i}{2});
    all_averages = read_segment_data(folder);

    if length(x_axis_values) ~= length(all_averages)
        error('จำนวนข้อมูลใน "%s" ไม่ตรงกับแกน X', folder);
    end

    plot(x_axis_values, all_averages, style, ...
        'LineWidth', 2, 'Color', color, ...
        'DisplayName', label);
end

% =========================================================================
% ✨ ส่วนที่ 3: เพิ่มข้อมูล manual พร้อม error bar
% =========================================================================
error_margin = 0.20;
error_values = y_points_manual * error_margin;
errorbar(x_points_manual, y_points_manual, error_values, 's--', ...
    'LineWidth', 2, 'Color', [0.494 0.184 0.556], ...
    'DisplayName', 'ข้อมูลจาก Datasheet (±20%)', 'CapSize', 8);

% =========================================================================
% 🎨 ตกแต่งกราฟ
% =========================================================================
title('กราฟเปรียบเทียบผลการทดลองแต่ละชุด');
xlabel('Rotational Travel (%)');
ylabel('(1-2Vout/1-3Vout)*100(%)');
grid on;
legend('show', 'Location', 'best');
axis tight;

disp('🎉 สร้างกราฟเปรียบเทียบข้อมูลจากการทดลอง 3 ชุดเรียบร้อยแล้ว!');
