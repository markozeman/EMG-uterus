function [data] = read_sample_entropies(filename)
    f = fopen(filename);
    data = textscan(f, '%f : %f');
    fclose(f);
    data = cell2mat(data(2));
end
