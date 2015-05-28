function cribscript

dir = ('C:/Users/Wei Li/Downloads/scene/');
time = 0.25;
threshold = 0.04;

img = readimg(dir,time);

bw = edgedetect(img);

bl = detbase(bw);

imgc = detectmovement(img,time);

alarm(bl,threshold,imgc);
