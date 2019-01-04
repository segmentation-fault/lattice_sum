%   Copyright (C) 2018  Antonio Franco
%
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
%         I1 = I;
%         I1{end+1} = [v r-sum(v)];
%         I=cell_unique(I1);
        I{end+1} = [v r-sum(v)];
        break;
    end
end

end