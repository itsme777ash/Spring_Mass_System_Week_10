% PVC - 3.4e9,1380
% Steel - 210e9,7850

init_freq = 1;
Final_freq = 350;

% plot_Steel = zeros(length(init_freq:1:Final_freq),1);
% plot_PVC = zeros(length(init_freq:1:Final_freq),1);
% plot_Steel_PVC = zeros(length(init_freq:1:Final_freq),1);
plot_Pos_Base = BEAM_MAIN_program(3.4e9,1380,3.4e9,1380,-1);
plot_Pos_1 = BEAM_MAIN_program(3.4e9,1380,3.4e9,1380,9);
plot_Pos_2 = BEAM_MAIN_program(3.4e9,1380,3.4e9,1380,19);
plot_Pos_3 = BEAM_MAIN_program(3.4e9,1380,3.4e9,1380,29);
plot_Pos_4 = BEAM_MAIN_program(3.4e9,1380,3.4e9,1380,39);
plot_Pos_5 = BEAM_MAIN_program(3.4e9,1380,3.4e9,1380,0);
semilogy(linspace(init_freq,Final_freq,Final_freq-init_freq+1),plot_Pos_Base,'black',linspace(init_freq,Final_freq,Final_freq-init_freq+1),plot_Pos_1,'blue',linspace(init_freq,Final_freq,Final_freq-init_freq+1),plot_Pos_2,'green',linspace(init_freq,Final_freq,Final_freq-init_freq+1),plot_Pos_3,'magenta',linspace(init_freq,Final_freq,Final_freq-init_freq+1),plot_Pos_4,'red',linspace(init_freq,Final_freq,Final_freq-init_freq+1),plot_Pos_5,'cyan');
xlabel('Frequency Applied(Hz)'); ylabel('Normalized Amplitude(Xk/F)');
