function BW2 = edgedetect(img)

I = img{1,1};
BW2 = edge(I,'canny');

