function [out] = addSNR(signal, noise, SNR, fs)
% menambahkan SNR
% signal : file wav sinyal (*.wav)
% noise  : file wav noise (*.wav)
% SNR    : SNR (dB)
% fs 	 : frequency sampling yang diinginkan (keluaran) (Hz)

[sig, fss] = audioread(signal);
[ns, fsn] = audioread(noise);

% resample
if fss ~= fs
	sig = resample(sig, fs, fss);
end

if fsn ~= fs
	ns = resample(ns, fs, fss);
end

% menyamakan panjang file
if length(sig) > length(ns)
	sig = sig(1:length(ns));
elseif length(ns) > length(sig)
	ns = ns(1:length(sig))
end

% make zero snr
snr0 = 0;
alpha0 = sqrt(sum(sig.^2)/(sum(ns.^2)*10^(snr0/10)));
m = alpha0*m;

% make zero snr
snr1 = 0 - snr0;
alpha1 = sqrt(sum(t.^2)/(sum(m.^2)*10^(sir/10)));

alpha = sqrt(sum(t.^2)/(sum(m.^2)*10^(sir/10)));
snr1 = round(10*log10(sum(t.^2)/sum((alpha.*m).*(alpha.*m)))); %snr now
m = alpha*m;

end