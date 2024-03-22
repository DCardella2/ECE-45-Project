
function [filteredData] = high_pass(audioData, highFs)
    Fs = 44100;
    
    filteredData = highpass(audioData, highFs, Fs);
end


