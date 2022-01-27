# Data-Interleaver

## Introduction
In this project a stream interleaver is designed to combine two streams of data. Stream interleavers can be used in many different applications such as video and audio applications.
The equation that is used for the design is: P_f = a * P_0 + (1 - a) * P_1. P_0 and P_1 are the two input signals and a is the weight coefficient which determines the output waveform. The different implementations show different ways of designing this circuit in using: no dsp blocks, dsp blocks, different clock domains, and SRL components.

## Results
### Results for Direct Implementation
#### Here both no DSP blocks and using multiple DSP block implementations are shown.
![Direct Implementation](img/direct_imp_sim.PNG)  
### Implementation using no DSP  
![DI](img/direct_imp_no_dsp.PNG)  
![DI](img/no_dsp+dsp.PNG)  
![DI](img/slice_logic_dist_no_dsp.PNG)  
![DI](img/slice_logic_no_dsp.PNG)  
![DI](img/utilization_no_dsp.PNG)  
### Implementation using DSP blocks  
![DI](img/direct_imp_synthesis_schem.PNG) 
![DI](img/direct_imp_utilization.PNG)  
![DI](img/direct_imp_place_report_dsp.PNG)  
### Results for Optimizing Design with DSP blocks to only use 1 DSP block
#### Implementation changing design from using 2 DSP blocks to 1
##### To get the design to only use 1 DSP block, the clock wizard from the IP catalog is used in order to generate a clock that is 2x the clock speed. The 2x clock will be used for the DSP block. (In this design: 40 MHz was used in order to 2x the clock to 80 MHz for the DSP block)
![OI](img/optimized_sim.PNG)  
![OI](img/optimized_dsp.PNG)  
![OI](img/optimized_report_lut1.PNG)  
![OI](img/optimized_slice_logic_distribution.PNG)  
![OI](img/optimized_synthesis_schem.PNG)  
### Results for Implementation of Optimized design when delaying an input using SRL components  
#### Synthesis and waveform for delayed design
![Delayed](img/delayed_wav.PNG)  
![Delayed]](img/delayed_slice_logic.png)  
![Delayed](img/delayed_synthesis.png)  
![Delayed](img/delayed_dsp.png)  
