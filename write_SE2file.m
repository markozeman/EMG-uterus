function write_SE2file(data, filename)
    file = fopen(sprintf('%s_se.txt', filename), 'w');
    for i = 1 : size(data)
        se = process_EHG(num2str(data(i)), filename);
        fprintf(file, '%s : %f\n', num2str(data(i)), se);
    end
    fclose(file);
end
