function sample_entropy = process_EHG(record, type)
    %%% Input
    % record: a string containing number of the example from the database
    
    filename = sprintf('../database/tpehg%s.txt', record);
    data = dlmread(filename);
    
    m = 3;
    r = 0.15;
    
    %%% Columns (channels)
    % 1 - sample numbers
    % 2 - first channel, unfiltered
    % 3 - first channel, Butterworth filter from 0.08Hz to 4Hz
    % 4 - first channel, Butterworth filter from 0.3Hz to 3Hz
    % 5 - first channel, Butterworth filter from 0.3Hz to 4Hz
    % 6 - second channel, unfiltered
    % 7 - second channel, Butterworth filter from 0.08Hz to 4Hz
    % 8 - second channel, Butterworth filter from 0.3Hz to 3Hz
    % 9 - second channel, Butterworth filter from 0.3Hz to 4Hz
    % 10 - third channel, unfiltered
    % 11 - third channel, Butterworth filter from 0.08Hz to 4Hz
    % 12 - third channel, Butterworth filter from 0.3Hz to 3Hz
    % 13 - third channel, Butterworth filter from 0.3Hz to 4Hz
   
    sig = data(:, 7);
    [se, ~, ~, ~] = sampen(sig, m+1, r, 1, 0, 0);
    sample_entropy = se(end);
    disp(['Record: ', record, ', type: ', type, ', sample entropy: ', num2str(sample_entropy)]);
end
