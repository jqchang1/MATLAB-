%% 显示摄像头%winvideo 的信息包括id，格式等等。 
I = imaqhwinfo('winvideo');
I.DeviceInfo.SupportedFormats
 
%开启摄像头并选择参数
vid = videoinput('winvideo',1,'YUY2_640x480'); 
%显示画面 
preview (vid); 
%获取一帧的图片
frame = getsnapshot(vid); 
%建立一个图窗
figure;
%显示画面（提示：如果是YUY2_mxn则显示照片不是RGB图像，使用这种格式RGB24_352x288出现的才为RGB图像，前一种可以使用函数ycbcr2rgb来转换为rgb图像）
imshow(frame);
figure
imshow(ycbcr2rgb(frame))
