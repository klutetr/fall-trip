# Fall Trip

An 8-bit sequel to [Shelly's Quest](https://github.com/klutetr/shellys-quest). Nine
mazes, one per stop on the Catskills itinerary. Clear a maze, unlock the next
postcard, and the trip reveals itself a stop at a time. The last one ends at
Diamond Notch Falls.

**Play: https://klutetr.github.io/fall-trip/**

- `docs/index.html` is the hosted game (GitHub Pages serves this folder).
- `index.html` is the same game in the trimmed form used for the claude.ai artifact.
- `./build.sh` regenerates `docs/index.html` from `index.html`. Run it after every edit.

Progress is saved to `localStorage`, so she can put it down between stops.

Each stop is one entry in the `LEVELS` array at the top of the script: its map,
palette, pickup sprite, postcard copy, and whether Ethan shows up. The maps are
generated rather than hand-drawn, so every pickup and the door are always
reachable, and no pickup on an Ethan level sits at the end of a dead end.
