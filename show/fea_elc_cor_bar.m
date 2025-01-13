% morandi_colors = [
%     199, 177, 152; 
%     199, 170, 143; 
%     189, 152, 138; 
%     187, 151, 125; 
%     178, 143, 125; 
%     159, 126, 116; 
%     149, 123, 114; 
%     140, 109, 102; 
%     126, 110, 99; 
%     116, 99, 85; 
%     105, 95, 85; 
%     92, 83, 77; 
%     83, 75, 69; 
%     73, 64, 58; 
%     66, 58, 52; 
%     59, 52, 46; 
%     51, 45, 39; 
%     44, 39, 34] ;
% morandi_colors = morandi_colors / 255;
bar(unnamed,"stacked");
legend('Fp1','Fp2','F3','F4','C3','C4','P3','P4','O1','O2','F7','F8','T3','T4','T5','T6','Fz','Cz' );
set(gca,'XTick',1:17,'XTickLabel', { 'exponent',
'offset',
'relative energy-β',
'theta-beta ratio',
'relative energy-δ',
'delta-alpha ratio',
'relative energy-θ',
'theta-alpha ratio',
'relative energy-α',
'center frequency',
'delta-theta ratio',
'kurtosis-β',
'bandwidth',
'kurtosis-δ',
'kurtosis-θ',
'power',
'kurtosis-α',
});





b=barh(unnamed);	
xlim([0 0.9]);
b(1).FaceColor = [053 078 151]/255;
b(2).FaceColor = [112 163 196]/255;
b(3).FaceColor = [199 229 236]/255;
b(4).FaceColor = [245 180 111]/255;
b(5).FaceColor = [223 091 063]/255;
b(1).EdgeColor = [053 078 151]/255;
b(2).EdgeColor = [112 163 196]/255;
b(3).EdgeColor = [199 229 236]/255;
b(4).EdgeColor = [245 180 111]/255;
b(5).EdgeColor =  [223 091 063]/255;
legend('Frontal','Center','Parietal','Occipital','Temporal');	
ytick=1:1:17;
yticks(ytick);

yticklabel={'kurtosis-α',
'power',
'kurtosis-θ',
'kurtosis-δ',
'bandwidth',
'kurtosis-β',
'delta-theta ratio',
'center frequency',
'relative energy-α',
'theta-alpha ratio',
'relative energy-θ',
'delta-alpha ratio',
'relative energy-δ',
'theta-beta ratio',
'relative energy-β',
'offset',
'exponent'
};

set(gca,'yticklabels',yticklabel,'Fontsize',14,'FontWeight','bold');

% set(gca,'XTick',1:17,'XTickLabel', { 'exponent',
% 'offset',
% 'relative energy-β',
% 'theta-beta ratio',
% 'relative energy-δ',
% 'delta-alpha ratio',
% 'relative energy-θ',
% 'theta-alpha ratio',
% 'relative energy-α',
% 'center frequency',
% 'delta-theta ratio',
% 'kurtosis-β',
% 'bandwidth',
% 'kurtosis-δ',
% 'kurtosis-θ',
% 'power',
% 'kurtosis-α',
% });

