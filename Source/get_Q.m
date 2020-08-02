function [Q1] = get_Q(vs)
    n = size(vs, 2);
    m = size(vs{1}, 1);
    Q = eye(m);
    for j = 1:n 
        Q(:, j:end) = Q(:, j:end) - Q(:, j:end)*vs{j}*2*vs{j}';% Q
    end
    Q1 = Q(:, 1:n);
end
