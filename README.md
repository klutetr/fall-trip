# Fall Trip

An 8-bit sequel to [Shelly's Quest](https://github.com/klutetr/shellys-quest). Nine
little scenes, one per stop on the Catskills itinerary. Between each one a postcard
turns over and reveals the next stop, so the trip unfolds a stop at a time. The last
one ends at Diamond Notch Falls.

**Play: https://klutetr.github.io/fall-trip/**

There is nothing to collect and nothing to dodge. Each scene is a place with a path
through it, and the only thing to do is get to the far side. Stop one is the drive up,
in the convertible, with him at the wheel. After that he tags along on foot, a step or
two behind her, until he is waiting at the end of the last trail.

The places you eat and drink are all approached from outside: you walk up the street,
across the lot or through the beer garden, and going in the door is what ends the stop.
Each building has its own facade, its own name on the sign, and its own hour of the
day, so no two of them look alike.

- `docs/index.html` is the hosted game (GitHub Pages serves this folder).
- `index.html` is the same game in the trimmed form used for the claude.ai artifact.
- `./build.sh` regenerates `docs/index.html` from `index.html`. Run it after every edit.

Progress is saved to `localStorage`, so she can put it down between stops.

Each stop is one entry in the `LEVELS` array at the top of the script. A scene is a
15x13 grid of characters; the level's `tiles` says what each character means, `base`
and `objectBase` say what ground it sits on, and `theme.ambient` is the wash that
gives the hour its light. `@` is where she starts, `X` is the way out, `M` is him.
