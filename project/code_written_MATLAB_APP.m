    
% this code is what we wrote for the matlab app design window
% we just have it to show the code written, is not the actual app

% Callbacks that handle component events
    methods (Access = private)

        % Callback function: SOUNDSwitch, UIAxes
        function SOUNDSwitchValueChanged(app, event)
            value = app.SOUNDSwitch.Value;

            volumeSlider = app.VolumeSlider.Value;
            volume = SoundVolume(volumeSlider/100);

            if (strcmp(value, 'On') == 1)
                sound_drop = app.CHOOSEASOUNDDropDown.Value;
                if (strcmp(sound_drop, 'CAT') == 1)
                    [y,fs] = audioread('CAT.wav');
                    nsemitones = app.FrequencySlider.Value;
                    if strcmp(app.LowPassFilterSwitch.Value, 'On') == 1
                        y = low_pass(y, 1000);
                    elseif strcmp(app.HighPassFilterSwitch.Value, 'On') == 1
                        y = high_pass(y, 2000);
                    end
                    if strcmp(app.EchoSwitch.Value, 'On') == 1
                        y = echo(y, fs);
                    end
                    audioOut = shiftPitch(y,nsemitones);
                    if strcmp(app.OscillatorSwitch.Value, 'On') == 1
                        audioOut = oscillation(audioOut, 10);
                    end
                    sound(audioOut, fs);
                    pause(6);
                    app.SOUNDSwitch.Value = 'Off';

                    Len = length(audioOut); % Length of the signal
                    ModFreq = fft(audioOut); % Perform FFT
                    frequencies = (-Len/2:Len/2-1)*(fs/Len);
                    plot(app.UIAxes,frequencies, abs(fftshift(ModFreq)));
                    xlim(app.UIAxes, [0, 10000]);
                end
                if (strcmp(sound_drop, 'HORSE') == 1)
                    [y,fs] = audioread('HORSE.wav');
                    nsemitones = app.FrequencySlider.Value;
                    if strcmp(app.LowPassFilterSwitch.Value, 'On') == 1
                        y = low_pass(y, 500);
                    elseif strcmp(app.HighPassFilterSwitch.Value, 'On') == 1
                        y = high_pass(y, 2000);
                    end
                    if strcmp(app.EchoSwitch.Value, 'On') == 1
                        y = echo(y, fs);
                    end
                    audioOut = shiftPitch(y,nsemitones);
                    if strcmp(app.OscillatorSwitch.Value, 'On') == 1
                        audioOut = oscillation(audioOut, 10);
                    end
                    sound(audioOut, fs);
                    pause(3);
                    app.SOUNDSwitch.Value = 'Off';

                    Len = length(audioOut); % Length of the signal
                    ModFreq = fft(audioOut); % Perform FFT
                    frequencies = (-Len/2:Len/2-1)*(fs/Len);
                    plot(app.UIAxes,frequencies, abs(fftshift(ModFreq)));
                    xlim(app.UIAxes, [0,10000]);
                end
                if (strcmp(sound_drop, 'WOLF') == 1)
                    [y,fs] = audioread('WOLF.wav');
                    nsemitones = app.FrequencySlider.Value;
                    if strcmp(app.LowPassFilterSwitch.Value, 'On') == 1
                        y = low_pass(y, 500);
                    elseif strcmp(app.HighPassFilterSwitch.Value, 'On') == 1
                        y = high_pass(y, 1000);
                    end
                    if strcmp(app.EchoSwitch.Value, 'On') == 1
                        y = echo(y, fs);
                    end
                    audioOut = shiftPitch(y,nsemitones);
                    if strcmp(app.OscillatorSwitch.Value, 'On') == 1
                        audioOut = oscillation(audioOut, 10);
                    end
                    sound(audioOut, fs);
                    pause(7);
                    app.SOUNDSwitch.Value = 'Off';

                    Len = length(audioOut); % Length of the signal
                    ModFreq = fft(audioOut); % Perform FFT
                    frequencies = (-Len/2:Len/2-1)*(fs/Len);
                    plot(app.UIAxes,frequencies, abs(fftshift(ModFreq)));
                    xlim(app.UIAxes, [0,2000]);
                end
                if (strcmp(sound_drop, 'INTRO') == 1)
                    [y,fs] = audioread('massimo-intro.wav');
                    nsemitones = app.FrequencySlider.Value;
                    if strcmp(app.LowPassFilterSwitch.Value, 'On') == 1
                        y = low_pass(y, 500);
                    elseif strcmp(app.HighPassFilterSwitch.Value, 'On') == 1
                        y = high_pass(y, 1000);
                    end
                    if strcmp(app.EchoSwitch.Value, 'On') == 1
                        y = echo(y, fs);
                    end
                    audioOut = shiftPitch(y,nsemitones);
                    if strcmp(app.OscillatorSwitch.Value, 'On') == 1
                        audioOut = oscillation(audioOut, 10);
                    end
                    sound(audioOut, fs);
                    pause(10);
                    app.SOUNDSwitch.Value = 'Off';

                    Len = length(audioOut); % Length of the signal
                    ModFreq = fft(audioOut); % Perform FFT
                    frequencies = (-Len/2:Len/2-1)*(fs/Len);
                    plot(app.UIAxes,frequencies, abs(fftshift(ModFreq)));
                    xlim(app.UIAxes, [0,2000]);
                end
                if (strcmp(sound_drop, 'FOURIER') == 1)
                    [y,fs] = audioread('massimo-fourier.wav');
                    nsemitones = app.FrequencySlider.Value;
                    if strcmp(app.LowPassFilterSwitch.Value, 'On') == 1
                        y = low_pass(y, 500);
                    elseif strcmp(app.HighPassFilterSwitch.Value, 'On') == 1
                        y = high_pass(y, 1000);
                    end
                    if strcmp(app.EchoSwitch.Value, 'On') == 1
                        y = echo(y, fs);
                    end
                    audioOut = shiftPitch(y,nsemitones);
                    if strcmp(app.OscillatorSwitch.Value, 'On') == 1
                        audioOut = oscillation(audioOut, 10);
                    end
                    sound(audioOut, fs);
                    pause(15);
                    app.SOUNDSwitch.Value = 'Off';

                    Len = length(audioOut); % Length of the signal
                    ModFreq = fft(audioOut); % Perform FFT
                    frequencies = (-Len/2:Len/2-1)*(fs/Len);
                    plot(app.UIAxes,frequencies, abs(fftshift(ModFreq)));
                    xlim(app.UIAxes, [0,2000]);
                end
                if (strcmp(sound_drop, 'NONE') == 1)
                    app.SOUNDSwitch.Value = 'Off';
                end
            end

            if (strcmp(value, 'Off') == 1)
                
            end
        end

        % Value changed function: VolumeSlider
        function VolumeSliderValueChanged(app, event)
            volumeSlider = app.VolumeSlider.Value;
            volume = SoundVolume(volumeSlider/100);
        end

        % Value changed function: FrequencySlider
        function FrequencySliderValueChanged(app, event)
            value = app.FrequencySlider.Value;
        end
    end