function I1 = cell_unique(I)
%function I1 = cell_unique(I)
% returns the unique elements of the cell array I

fun = @(s) num2str(s(:)');

I2 = cellfun(fun,I,'UniformOutput',false);

[~,idx] = unique(I2);

I1 = I(idx);

end