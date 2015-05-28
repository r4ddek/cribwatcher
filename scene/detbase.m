function bl = detbase(bw)

[r c] = size(bw);

for i = 3:r-2
    for j = i-2:i+2
        d = sum(bw(i-2:i+2,1:c));
        d = logical(d);
        avg(i-2) = mean(d);
    end
end

n = 1:r-4;
avg = transpose([avg;n]);
sort = sortrows(avg,1);

t = sort(r-9:r-4,2);
bl = min(t);

for i = 1:c
    bw(bl,i) = 1;
end