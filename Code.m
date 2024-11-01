vid1 = videoinput('winvideo', 1, 'YUY2_640x480');
vidRes1=get(vid1,'VideoResolution');
nBands1=get(vid1,'NumberOfBands');
set(vid1,'ReturnedColorSpace','rgb');
himage1=imshow(zeros(vidRes1(2),vidRes1(1),nBands1));
preview(vid1,himage1);