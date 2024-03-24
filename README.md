# ECE 45 Synthesizer Project 

Source Code: https://github.com/DCardella2/ECE-45-Project (will probably need to make this public)

## Contributors: (Joaquin, Dominick, Riccardo)
Dominick Cardella: I wrote "low_pass.m" and "high_pass.m" which run the given audio file through low and high pass filters. I also wrote "oscillation.m" which applies a low-frequency oscillation to the audio. 

Riccardo Manca: The plot can be use to analyze how certain settings that we choose can affect the output, in this case the audio signal.

Joaquin Valle: Echo can be used to add an echo effect to any inputed signal.

## Report

### Potential Applications
- Low pass filter could be used to make a muffled sound, like hearing something in another room.
- High pass filter could be used to make things sound like they're being said through a speaker, phone, or other audio device.
- Oscillator can be used to simulate a repetitive noise like a police siren.

### Synthesizer Controls

Using the filters: 
- Can use the switch to toggle the low and high pass filters
- Cannot enable both filters at the same time.

Using the oscillator: 
- Use the switch to toggle the oscillator on or off.

### Applied Class Concepts
- Low/High pass: Any signal can be represented as a sum of sinusoids. These filters let only a certain frequency range through, while blocking another frequency range.
- Oscillator: We apply a low frequency oscillation to the signal by multiplying it with cosine. For every sample in our original sound, we apply amplitude scaling based on cos(wt), where t is the time at which we arrive at a signal and w is the oscillation frequency.

### Code and Modules Used
- Audio System Toolbox
- Signal Processing Toolbox
