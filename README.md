# Arturia SparkLE — Reason Remote Codecs

Deprecated Reason Remote files for using the Arturia SparkLE drum controller with Reason. No longer in development; kept here as an archive.

The codecs and maps are my own work, written 2017–2018.

This one is made of **two separate codecs that are designed to be used together**:

| Folder | Surface in Reason | What it does |
|--------|-------------------|--------------|
| `Sequencer/` | Arturia · SparkLE Sequencer | Transport, pads, 16 step buttons and sequencer controls. **Lock this surface to a sequencer device** (e.g. Redrum). |
| `Instrument/` | Arturia · SparkLE Instrument | The Tempo, Volume and P1–P3 encoders, for controlling whichever instrument has keyboard focus. |

## Setup

1. Keep the SparkLE in its native **Spark** mode, not MIDI mode (press Filter + Slicer + Roller together to toggle).
2. Install both codecs and both maps (see below), then restart Reason.
3. In Preferences → Control Surfaces, add **SparkLE Sequencer** and **SparkLE Instrument** manually, and set both to the SparkLE's MIDI input and output.
4. Lock **SparkLE Sequencer** to your Redrum (or other sequencer device): right-click the device, or use Options → Surface Locking. Leave **SparkLE Instrument** unlocked so it follows the selected instrument.

## SparkLE Sequencer

**Everywhere (Reason Document):** Play, Stop (release returns to the left locator / zero), Record, Global Filter → Reset Automation Override, and the bar position shown on the four pattern LEDs.

**Redrum Drum Computer**
- Proj / Kit / Instr choose what the Dial does (e.g. Dial → Selected Drum).
- Bank, Patt, Seq, Tune, Mute, Solo and Select switch what the 16 step buttons do: choose bank A–D, choose pattern, enter steps for the selected drum (with step lights and a playing-step chase), select/trigger drums, mute, solo.
- Pads 1–8 → Patterns 1–8; Pattern ◀ / ▶ → previous / next 16 steps; Divide encoder → number of steps; Move encoder → accent; Loop → Shuffle; Erase → Flam.

**Matrix Pattern Sequencer:** Bank A–D on step buttons 1–4, Pads → Patterns 1–8, Dial → pattern select.

**Thor Polysonic Synthesizer:** Patt / Seq modes; the 16 step buttons edit Thor's step sequencer gates, with step LEDs.

**RPG-8 Monophonic Arpeggiator:** 16 step buttons → pattern steps, Divide → step count, Loop → Shuffle, Pattern ◀ / ▶ → octave shift, Dial → arpeggio mode.

## SparkLE Instrument

| Encoder | AudioRealism ABL3 / ABL2 | Combinator |
|---------|--------------------------|------------|
| Tempo | Cutoff | Rotary 1 |
| Volume | Resonance | Rotary 2 |
| P1 | Envmod | Rotary 3 |
| P2 | Decay | Rotary 4 |
| P3 | Accent | — |

The touchpad X/Y are defined in the codec but not mapped.

## Install

1. Copy the `.luacodec`, `.lua` and `.png` files from both `Sequencer/` and `Instrument/` to the `Remote/Codecs/Lua Codecs/Arturia/` folder.
2. Copy both `.remotemap` files to the `Remote/Maps/Arturia/` folder.
3. Restart Reason and follow **Setup** above.

On macOS the Remote folder is `~/Library/Application Support/Propellerhead Software/Remote/`; on Windows it's `%APPDATA%\Propellerhead Software\Remote\`.

## Licence

MIT — see `LICENSE`.
