function plot_frequency(audioData)
    Fs = 44100;
    stuff = fft(audioData);
    N = length(audioData);
    f = (Fs / N) * (-N / 2 : N / 2 - 1);
    plot(f, abs(fftshift(stuff)));
end