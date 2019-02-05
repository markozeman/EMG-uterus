function [records] = read_file(filename)
    f = fopen(filename);
    data = textscan(f, '%s');
    fclose(f);
    records = str2double(data{1});
end
