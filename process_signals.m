function process_signals()
    % PE = read_file('PE.txt');
    % PL = read_file('PL.txt');
    % TE = read_file('TE.txt');
    % TL = read_file('TL.txt');
    
    % write_SE2file(PE, 'PE');
    % write_SE2file(PL, 'PL');
    % write_SE2file(TE, 'TE');
    % write_SE2file(TL, 'TL');
    
    % read sample entropies and compare results
    data_PE = read_sample_entropies('PE_se.txt');
    data_PL = read_sample_entropies('PL_se.txt');
    h = histfit([data_PE; data_PL], 30); hold on;
    delete(h(1)); set(h(2), 'color', 'r');
    line([mean([data_PE; data_PL]) mean([data_PE; data_PL])], [0 20], 'color', 'r', 'LineStyle', '--');
    
    data_TE = read_sample_entropies('TE_se.txt');    
    data_TL = read_sample_entropies('TL_se.txt');
    h = histfit([data_TE; data_TL], 30); 
    delete(h(1)); set(h(2), 'color', 'g');
    line([mean([data_TE; data_TL]) mean([data_TE; data_TL])], [0 20], 'color', 'g', 'LineStyle', '--');
    
    xlabel('sample entropy'); ylabel('pmf');
    title('Comparison of values of sample entropy for term and pre-term birth');
    legend({'pre-term', 'pre-term average', 'term', 'term average'}, 'Location', 'northeast');
    
    
    %{
    data_PE = read_sample_entropies('PE_se.txt');
    data_PL = read_sample_entropies('PL_se.txt');
    data_TE = read_sample_entropies('TE_se.txt');    
    data_TL = read_sample_entropies('TL_se.txt');
    
    h = histfit(data_PL, 30); hold on;
    delete(h(1)); set(h(2), 'color', 'r');
    line([mean(data_PL), mean(data_PL)], [0 10], 'color', 'r', 'LineStyle', '--');
    
    h = histfit(data_TL, 30); 
    delete(h(1)); set(h(2), 'color', 'g');
    line([mean(data_TL), mean(data_TL)], [0 10], 'color', 'g', 'LineStyle', '--');
    
    xlabel('sample entropy'); ylabel('pmf');
    title('Comparison of values of sample entropy for PL and TL');
    legend({'PL', 'PL average', 'TL', 'TL average'}, 'Location', 'northeast');
    %}
end
