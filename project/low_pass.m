
function [filteredData] = low_pass(audioData, highFs)
    Fs = 44100;
    
    filteredData = lowpass(audioData, highFs, Fs);
end


