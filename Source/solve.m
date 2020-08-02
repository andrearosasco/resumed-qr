function [x] = solve(vs, R1, b)
    n = size(R1, 1);    
    for j = 1:n
        b(j:end, :) = b(j:end, :) - 2*vs{j}*(vs{j}'*b(j:end, :));
    end
    b = b(1:n, :);
    x = backsub(R1, b);
end

function [x] = backsub(R, b)
    n = size(b, 1);
    m = size(b, 2);
    x = zeros(n, m);
    for j=n:-1:1
        x(j, :) = (b(j, :) - R(j, j + 1:end) * x(j + 1:end, :)) / R(j, j);
    end
end
