

%%%%%%%%%%%%%%%%%%%topoplot
load('E:\M\CODE\show\values_im_18.mat');
values=zscore(values);
folder_name = '***';
if ~exist(folder_name, 'dir')
    mkdir(folder_name);
end
names = {'offset', 'exponent', 'center frequency', 'power', 'bandwidth', 'theta-beta ratio', 'delta-theta ratio', 'delta-alpha ratio', 'theta-alpha ratio', 'relative energy-δ', 'relative energy-θ', 'relative energy-α', 'relative energy-β', 'kurtosis-δ', 'kurtosis-θ', 'kurtosis-α', 'kurtosis-β'};
for i=1:length(names)
    filename = char(names(i));
    value = abs(values(:,i));
    
    figure;
    topoplot(value, 'chanlocs2.txt','plotrad',0.6 , 'maplimits', [0,3], 'style','both','headrad',0.6,'electrodes', 'on');
     colormap(othercolor('Reds9')); 
   %colorbar;
    title(filename,'FontSize',22,'FontWeight','bold');
 set (gcf,'Position', [0,0,300,350])
     file = fullfile(folder_name, [filename '.svg']);
     saveas(gcf, file);
     close(gcf);
end












