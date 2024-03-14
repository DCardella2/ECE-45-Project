

function oscData = oscillation(audioData, lowFs)
    Fs = 44100;
    Len = length(audioData);
    oscData = zeros(1, Len);

    for i = (1:Len)
        oscData(i) = audioData(i) * cos(lowFs * i / Fs);
    end
end

