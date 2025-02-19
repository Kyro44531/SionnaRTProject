clear;clc;
load('4LoS.mat');
%freq_resp = flip(freq_resp,2);
% cfr -> cir (channel impulse response)
cir = ifft(freq_resp_92,[],2);
% power delay profile
pdp = 20*log10(abs(cir));
delay = (0:1000)./1e9;
figure(1);
gca = imagesc(delay.*1e9,0:359,pdp);
% set(gca,'edgecolor','none');
colorbar;
max_val = max(pdp(:));
clim([max_val-30 max_val]);
colormap jet;
set(gcf,'unit','normalized','position',[0.2,0.2,0.4,0.32]);
xlim([0 100]);
xlabel('Delay (ns)');ylabel('AoA (deg)');
title('PADP')

%% Process Data
powers = zeros(1001,3);
i = 1;
j = 1;
for tao = delay
    [power, angle] = findpeaks(pdp(:,i));
    % 此处的逻辑是?
    % 首先，找到所有大于92的peak
    % 然后过滤掉过近的，也就是和上一个相差了小于10度的，就把较小的那个给删了
    if (~isempty(power))
        for k = 1:length(power)
            if power(k) <= -94
                power(k) = 0;
                angle(k) = -1;
            end
        end
        power(all(power == 0, 2)) = [];
        angle(all(angle == -1, 2)) = [];
    end
    if (~isempty(power))
        k = 1;
        while k <= length(power)
            if k > 1 && angle(k) - angle(k - 1) < 60
                if power(k) < power(k - 1)
                    power(k) = [];
                    angle(k) = [];
                else
                    power(k - 1) = [];
                    angle(k - 1) = [];
                end
            else
                k = k + 1;
            end
        end
   end
   if (~isempty(power))
        for k = 1:length(power)
            powers(j,1) = tao;
            powers(j,2) = power(k);
            powers(j,3) = angle(k);
            j = j + 1;
        end
    end
    i = i + 1;
end
powers(all(powers == 0, 2), :) = [];
figure(2);
scatter(powers(:,1) - 2.1e-8, 180 - powers(:,3), 100, powers(:,2) - 18, 'filled');
colormap jet;
clim([min(powers(:,2)) - 18, max(powers(:,2)) - 18]);
xlim([-0.3e-8, 6.3e-8]);
grid on;