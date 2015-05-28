function img = readimg(dir,time)

n = time*60;
%dir = ('C:/Users/Wei Li/Downloads/scene/');
img = cell(15,1);
for i = 1:n
    if i <= 10
        a = sprintf('%sscene00%d01.png',dir,i-1);
        img{i,1} = rgb2gray(imread(a));
    end
    
    if i >10 && i < 100
        a = sprintf('%sscene0%d01.png',dir,i-1);
        img{i,1} = rgb2gray(imread(a));   
    end

end

       