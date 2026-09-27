# Fall Trip

An 8-bit sequel to Shelly's Quest. Nine mazes, one per stop on the Catskills
itinerary. Clear a maze, unlock the next postcard, and the trip reveals itself a
stop at a time. The last one ends at Diamond Notch Falls.

- `docs/index.html` is the hosted game (GitHub Pages serves this folder).
- `index.html` is the same game in the trimmed form used for the claude.ai artifact.
- `./build.sh` regenerates `docs/index.html` from `index.html`. Run it after every edit.

Progress is saved to `localStorage`, so she can put it down between stops.
