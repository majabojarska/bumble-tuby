# Bumble Tuby Guitar Amplifier

[![Build](https://github.com/majabojarska/bumble-tuby/actions/workflows/kicad_build.yaml/badge.svg)](https://github.com/majabojarska/majabojarska.dev/actions/workflows/kicad_build.yaml)
[![ERC](https://github.com/majabojarska/bumble-tuby/actions/workflows/kicad_check.yaml/badge.svg)](https://github.com/majabojarska/majabojarska.dev/actions/workflows/kicad_check.yaml)

This is a relatively simple, hybrid guitar amplifier, made as a hobby project.
To me it's mostly about learning, having fun, and building something tangible.

![DSO capture of amplification stage outputs](static/dso_sine_amplification.webp)

## Features

- Runs off of a single 12V DC supply
- Pre-amp based on the 12AU7 vacuum tube
- FX loop
- Tone control section
- Line in
- Solid state power amplifiers (headphones, speaker)
  - Class D mono speaker amp
  - Class A stereo headphone amp

[![Schematic](static/amp.svg?raw=true)](static/amp.pdf)

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
  - opamps: 10uF, 100nF
- [x] Add power switch, LED
- [x] Consider poweramp alternatives
  - TPA3110
- [x] Make buffer bias voltage adjustable
- [x] Fix tube biasing
- [x] Buffer triode outputs (plates)
- [x] Mute speaker PA when headphone jack plugged in
- [x] Add headphone PA
- [x] Add gain adjustment for the power section (LM386 pins 1-8)
- [x] Split design into separate subschematics
  - How to express connections?
  - [Hierarchical sheets in KiCad](https://docs.kicad.org/9.0/en/eeschema/eeschema.html#drawing-hierarchical-sheets)
- [x] Add stereo line-in, [signal mixing](https://electronics.stackexchange.com/questions/103435/naively-mixing-two-or-perhaps-more-audio-signals)
- [x] Attenuate FX send 20x, and then on return amplify it by 20x
  - Floor pedals can't handle the 8Vpp the preamp outputs
  - The whole FX section should by itself have unity gain, if the send and return are shorted.
- [x] Add split-rail opamp bias source
- [ ] Split design into multiple sheets
- [ ] Add a tone control section.
  - Big muff style single-pot tone control seems nice and simple.
  - After tube, before output buffer? Alternatively, right after gain stage, before first triode.
- [ ] Add screw terminals for vacuum tube connections
- [ ] Does this require ripple rejection?
- [ ] Revisit tube input biasing, something seems off. Verify on breadboard.
- [ ] Simulate pre-amp in SPICE
- [ ] Design perfboard layouts

### CI

- [ ] Render BOM into README, as a Markdown table.
- [ ] Auto update schematic date during artifact update workflow.

## Credits

This design was inspired by:

- [Ruby Tuby](https://tagboardeffects.blogspot.com/2014/10/ruby-tuby.html)
  amplifier design.
- [Tube Cricket](https://beavisaudio.com/projects/TubeCricket/)
