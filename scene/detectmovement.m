function imgc = detectmovement(img,time)

n = time*60;
imgc = cell(14,1);
[r c] = size(img{1,1});

for i = 2:n
    a = (img{i,1} - img{1,1});
    for j = 1:r
        for k = 1:c
            if a(j,k) < 50
                a(j,k) = 0;
            end
        end
    end
    imgc{i-1,1} = logical(a);
end
