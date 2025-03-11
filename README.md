# Bumble Tuby Guitar Amplifier

This is a simple, hybrid guitar amplifier, made as a hobby project. More applicable for learning and practice, rather than anything else. Outputs around 1W of power.

## Features

- Runs off of a single 12V DC supply.
- Pre-amp based on the 12AX7 vacuum tube.
- Power amplifier based on the LM386 IC.

[![Schematic](https://github.com/majabojarska/ruby-tuby/blob/main/static/amp.svg?raw=true)](https://github.com/majabojarska/ruby-tuby/blob/main/static/amp.pdf)

### Bill of materials

> [!NOTE]  
> This section is yet to be populated.

## To-do

### Circuit design

- [x] Add headphone output.
- [x] Add effects loop:
  - FX send can be driven directly from the 2nd tube stage.
  - FX return needs a buffer before feeding into the power amp section. Can use the second half of the NE5532 for this.
  - What about operation modes? With/without effects loop. This would require a SPDT switch to either send the pre-amped signal into the effects chain, or directly into the buffer.
- [x] Add bypass capacitors on power supply lines:
  - LM386: 10uF, 100nF
  - NE5532: 10uF, 100nF
- [x] Add power switch, LED
- [ ] Bridge the two LM386s for twice the power
  - https://runoffgroove.com/littlegem.html
- [ ] Design perfboard layout
- [ ] Add a tone control section.
  - Between tube stages?
- [ ] (?) Add gain adjustment for the power section (LM386 pins 1-8)

### CI

- [ ] Render BOM into README, as a Markdown table.

## Credits

This design was inspired by:

- [Ruby Tuby](https://tagboardeffects.blogspot.com/2014/10/ruby-tuby.html)
  amplifier design.
- [Tube Cricket](https://beavisaudio.com/projects/TubeCricket/)
