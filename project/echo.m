% Using audioread, two variables are returned: the audio signal and the sample rate of the audio
[audio_signal, sample_rate] = audioread('SpeechDFT-16-8-mono-5secs.wav');

% Parameters for the echo effect
delay = 0.5; % time delay of echo in seconds
gain = 0.5; % amplification factor for the echo

% Create the impulse response for the echo
impulse_response = [1; zeros(round(delay*sample_rate), 1); gain]; 
% The 1 represents the original sound, followed by zeros*delay, and ends with gain to represent amplified echo

% Apply convolution to create the echo effect
echoed_signal = conv(audio_signal, impulse_response);
% Echoed signal is stored

% Normalize the signal to prevent clipping, divides each sample of echoed signal by the max absolute value of signal
echoed_signal = echoed_signal / max(abs(echoed_signal));


% Play echoed audio
sound(echoed_signal, sample_rate); % Audio with echo
