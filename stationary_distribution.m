function pi = stationary_distribution(P)

[row, col] = size(P);
if (row ~= col)
    error('Not square matrix.');
end

pi = null(P.' - eye(row));
pi = simplify(pi ./ sum(pi)).';

end
