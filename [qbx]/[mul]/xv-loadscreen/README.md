# XVision Loading Screen (User HTML Design)

- Uses your provided layout/colors, but swaps YouTube background for an **offline-safe animated slideshow** to avoid CEF autoplay/cors issues.
- Music player wired to local `assets/music/ambient.wav` (press **M** to toggle mute).
- Manual shutdown enabled; screen closes when session starts or QBCore player loads.

## Install
1) Drop `xv-loadscreen-vision` into `resources`.
2) In `server.cfg`: `ensure xv-loadscreen-vision`
3) Edit texts/news/staff in `html/index.html`.

## Customize
- Replace backgrounds: `html/assets/images/bg1.png..bg3.png`
- Replace track: `html/assets/music/ambient.wav`
- Colors/labels in CSS near top of `index.html`.
