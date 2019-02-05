function Kolmogorov_Smirnov()
    data_PE = read_sample_entropies('PE_se.txt');
    data_PL = read_sample_entropies('PL_se.txt');
    data_TE = read_sample_entropies('TE_se.txt');    
    data_TL = read_sample_entropies('TL_se.txt');
    
    [~, p_PE_PL, ~] = kstest2(data_PE, data_PL);
    [~, p_TE_TL, ~] = kstest2(data_TE, data_TL);
    [~, p_TE_PE, ~] = kstest2(data_TE, data_PE);
    [~, p_TL_PL, ~] = kstest2(data_TL, data_PL);

    disp(p_PE_PL);
    disp(p_TE_TL);
    disp(p_TE_PE);
    disp(p_TL_PL);
end
