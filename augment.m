function [B] = augment(A, k)
    func = {@log, @exp, @(x) x.^2, @(x) x.^3};
    
    n = size(A, 2);
    p = size(func, 2);
    
    [S,T] = meshgrid(1:n,1:p);
    C = reshape([S' T'], [], 2);

    perm = randperm(n*p);
    
    B = [A zeros(size(A, 1), k)];
    for j = 1:k
        f = C(perm(j), 2); col = C(perm(j), 1);
        B(:, n + j) = func{f}(A(:, col));
    end
end
