function alarm(bl,threshold,imgc)

%threshold = 0.05;
[r c] = size(imgc{1,1});
[n ~] = size(imgc);

alarm = 0;

for i = 1:n
    a = imgc{i,1};
    diff = mean(mean(a(1:bl,1:c)));
    if diff > threshold
        alarm = 1;
    end
end
