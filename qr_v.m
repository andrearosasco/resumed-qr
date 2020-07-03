function [vs, R1] = qr_v(A)
    n = size(A, 2);
    vs = {};
    for j = 1:n
        [v,s] = householder_vector(A(j:end, j));
        A(j,j) = s;
        A(j+1:n, j) = 0;
        A(j:end, j+1:end) = A(j:end, j+1:end) - 2*v*(v'*A(j:end, j+1:end));
        vs{j} = v;
    end
    
    R1 = A(1:n, 1:n);
end

function [v, s] = householder_vector(v)
    s = -sign(v(1)) * norm(v);
    v(1) = v(1) - s;
    v = v / norm(v);
end