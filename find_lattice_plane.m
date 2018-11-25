function I = find_lattice_plane(n,r)
%function I = find_lattice_plane(nPoints,r)
% Recursively finds all the non-negative points x_i with i=1..n such that x_1 + x_2 + ... + x_n = r

I = lattice_helper(r,{},[],n);

end

function I = lattice_helper(r,I,v,n)

for i=0:r-sum(v)
    if numel(v) < n-1
        I = lattice_helper(r,I,[v i],n);
    else
        I1 = I;
        I1{end+1} = [v r-sum(v)];
        I=cell_unique(I1);
    end
end

end