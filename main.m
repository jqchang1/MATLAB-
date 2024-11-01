
%% 欢迎关注【阿波兹得】

% 读取图像
image = imread('1.jpg');

% 创建一个空白的色卡
color_card = zeros(100, 100, 3, 'uint8');

% 创建一个新图像，包括原图像和色卡
figure;
subplot(1, 2, 1);
imshow(image);
title('Original Image');

subplot(1, 2, 2);
imshow(color_card);
title('Color Card');

while true
    % 点击图像来选择样本点
    [x, y] = ginput(1);
    sample_color = impixel(image, x, y);
    
    % 在色卡上绘制选定颜色
    color_card(:, :, :) = repmat(reshape(sample_color, [1, 1, 3]), [100, 100, 1]);
    
    % 更新色卡的显示
    subplot(1, 2, 2);
    imshow(color_card);
    
    % 显示颜色的数值
    text_str = sprintf('Color: %s', mat2str(sample_color));
    text(10, 10, text_str, 'Color', 'w', 'FontSize', 12);
end

%% 欢迎关注【阿波兹得】