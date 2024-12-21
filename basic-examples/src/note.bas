05 rem set sid chip base address for voice one
10 sd=54272 
15 rem set frequency to a4 in pal system
20 poke sd+0,69: rem low byte
30 poke sd+1,29: rem high byte
35 rem set the volume to max
40 poke sd+24,15
45 rem set envelope generator ADSR curve
50 a=0:d=6:s=13:r=8
60 poke sd+5,a*16+d
70 poke sd+6,s*16+r
75 rem start note and set waveform
80 poke sd+4,32+1
90 for t=0 to 100: next
95 rem stop note
100 poke sd+4,32+0