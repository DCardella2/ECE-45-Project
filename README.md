# ECE 45 Synthesizer Project 

Source Code: https://github.com/DCardella2/ECE-45-Project

## Contributors: (Joaquin Valle, Dominick Cardella, Riccardo Manca)
Dominick Cardella: I wrote "low_pass.m" and "high_pass.m" which run the given audio file through low and high pass filters. I also wrote "oscillation.m" which applies a low-frequency oscillation to the audio. 

Riccardo Manca: I was in charge of most of the front end of the app, where I had to use the functions and integrate them into each component of the interface. I also made the volume slider, the frequency slider that allows the user to change the frequency of the audio signal and finally the plot of the frequency domain that plots each frequency found in the audio and changes according to the selected settings by the user.

Joaquin Valle: I created the echo function. By obtaining the impulse response of the signal and convoluding the original audio by the impulse response, the output signal has an echo. I also helped Riccardo with the frequency slider function and its implementation on the graph. 

## Report

### Potential Applications
- Low pass filter could be used to make a muffled sound, like hearing something in another room.
- High pass filter could be used to make things sound like they're being said through a speaker, phone, or other audio device.
- Oscillator can be used to simulate a repetitive noise like a police siren.
- The plot can be use to analyze how certain settings that we choose can affect the output, in this case the audio signal.
- Echo can be used to add an echo effect to any inputted signal.

### How to install the synthesizer
1. Ensure Matlab is installed in your computer and that it contains the packages: Signal Processing Toolbox and Matlab Audio Toolbox.
2. Install the zip file found in Github into your computer. Source Code: https://github.com/DCardella2/ECE-45-Project
3. Extract the folder named "project" from the zip file.
4. Double click the file named app1.mlapp
5. Matlab should automatically open and run the application. If this does not happen you can also open Matlab, select OpenFile in the top Toolstrip and search for app1.mlapp. You will have to perform an extra step, on the App Designer window, click on the green Run button in the Toolstrip
6. If you see a window similar to the screenshot below, you are ready to go.
![app](./app.png)

### Synthesizer Controls
1. On the app, select an audio you would like to hear where it says, “CHOOSE A SOUND”.
2. Then you can set the volume of your computer or operating system using the Volume Slider.
3. The app allows you to change the frequency of the sound using the slider.
  * When is at 0, the output will be the original signal.
  * When we move to the +15 side, we will hear the audio signal with a higher pitch.
  * When we move to the -15 side, we will hear the audio signal with a lower pitch.
4. Using the filters: 
  * Can use the switch to toggle the low and high pass filters
  * Cannot enable both filters at the same time.
5. Using the oscillator: 
  * Use the switch to toggle the oscillator on or off.
6. Using the echo:
  * Use the switch to toggle the echo on or off.
7. To plot and hear the sound, we have to switch the toggle of SOUND to be ON. We need to make sure the audio signal has finished before we switch the frequency, filter and echo settings. The user will know it is over when the toggle switches itself back to OFF.

### Applied Class Concepts
- Low/High pass: Any signal can be represented as a sum of sinusoids. These filters let only a certain frequency range through, while blocking another frequency range.
- Oscillator: We apply a low frequency oscillation to the signal by multiplying it with cosine. For every sample in our original sound, we apply amplitude scaling based on cos(wt), where t is the time at which we arrive at a signal and w is the oscillation frequency.
- The plot shows the frequency domain of an audio signal, which in class we examined in the Homework assignments. Using the plot to visualize, it allow us to show how the use of filters learned in class and the changing frequency will affect the frequency domain of audio signal.
- Impulse Response is convoluded with the original audio which in turn creates the echoed signal
- The frequency domain of audio signals

### Code and Modules Used
Dominick Cardella: I used Matlab Documentation, Audio System Toolbox and Signal Processing Toolbox that are available on Matlab.

Riccardo Manca: I borrowed a function from Yair Altman called SoundVolume which is used to set the volume of the computer or system running our app. I also used some parts of our Matlab Homework 2 and 3 to create the responsive plot of frequency of an audio signal.

Joaquin Valle: I used Matlab documentation, the Audio System and Signal Processing Toolbox, and the Youtuber "Neal Holtschulte" for some insight on how to use impulse response and convolution to make the echo effecton the given input signal. 
