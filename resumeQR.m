function[vs, R1] = superQR(vs, R1, B)
    n = size(R1, 2);
    m = size(B,1);
    p = size(B, 2);
    
    R = [[R1; zeros(m-n,n)], B(:, n+1:end)];
    for j = 1:size(vs,2)
        R(j:end, n+1:end) = R(j:end, n+1:end) - 2*vs{j}*(vs{j}'*R(j:end, n+1:end));
    end
    
    C = R(n+1:end, n+1:end);
    [vs_, C]= qr_v(C);    
    
    vs = [vs, vs_];
    R1 = [R(1:p, 1:n), [R(1:n, n+1:end); C]];
end
