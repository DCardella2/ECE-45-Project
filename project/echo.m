function echoed_signal = echo(audioData, fs)
    
    % Parameters for the echo effect
    delay = 0.5; % time delay of echo in seconds
    gain = 0.5; % amplification factor for the echo
    
    % Create the impulse response for the echo
    impulse_response = [1; zeros(round(delay*fs), 1); gain]; 
    
    % Ensure audioData is a column vector
    if size(audioData, 2) > 1
        audioData = audioData(:, 1);
    end
    
    % Ensure impulse_response is a column vector
    if size(impulse_response, 2) > 1
        impulse_response = impulse_response(:, 1);
    end
    
    % Apply convolution to create the echo effect
    echoed_signal = conv(audioData, impulse_response);
    
    % Normalize the signal to prevent clipping
    echoed_signal = echoed_signal / max(abs(echoed_signal));

end
