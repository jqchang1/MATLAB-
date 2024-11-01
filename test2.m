
%% appdesigner调用摄像头

app.vid = videoinput('winvideo',1,'YUY2_mxn');
%打开摄像头
 
set(app.UIAxes,'XLim',[0,m]);
%设置x坐标区域大小与分辨率一致
set(app.UIAxes,'YLim',[0,n]);
%设置y坐标区域大小与分辨率一致
vidRes = get(app.vid, 'VideoResolution');
%获取视频分辨率
 
nBands = get(app.vid, 'NumberOfBands');
%获取颜色通道数量，rgb为3
hImage = image(zeros(vidRes(2),vidRes(1),nBands),'parent',app.UIAxes);
%调用 image 函数创建一个包含 vidRes(2) × vidRes(1) × nBands 个元素的零矩阵，第三个参数则代表通道数。
%这个零矩阵被传递给 image 函数，并将其设置为 GUI 界面中某个 axes 对象（例如 handles.axes1）的底层图像。
 
preview(app.vid, hImage);
%显示到axes控件上（如果缺乏设置x和y区域的大小，则虽然摄像头显示在uiaxes中，但是变小了且位置是在右下方，而且是黑屏，无法显示画面）