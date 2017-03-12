x = [1 2 4 0]';
y = [0.5 1 2 0]';
t0 = 0;
t1 = 0;
old_t0 = 0;
old_t1 = 0;
alpha = 0.3;
eps = 0.000001;
while true
    temp0 = t0 - alpha * sum(t0 + t1*x - y) / 4;
    temp1 = t1 - alpha * sum((t0 + t1*x - y) .* x) / 4;
    old_t0 = t0;
    old_t1 = t1;
    t0 = temp0;
    t1 = temp1;
    if abs(t0-old_t0)<eps && abs(t1-old_t1)<eps
        break
    end
end