# map-fonts

![The original font that this repo is based on.](source.png)

This repository contains fonts that mimic the style found on a variety of maps.
For now, this includes fonts that are found on maps by [G. W. Bacon].

Fonts are designed in [Sketch]. An automated script exports the slices as SVG,
imports them to [FontForge], then exports as a TrueType font.

[G. W. Bacon]: https://en.wikipedia.org/wiki/George_Washington_Bacon
[Sketch]: https://www.sketch.com
[FontForge]: https://fontforge.github.io

## GW Bacon Title (Regular)

![A preview of "GW Bacon Title Regular"](gw-bacon-title.png)

## License

Fonts are licensed under the [SIL Open Font License version 1.1-update5][OFL].

[OFL]: https://scripts.sil.org/cms/scripts/page.php?item_id=OFL-FAQ_web

## Build process

### Dependencies

1. Sketch
2. FontForge
2. [svg-stroke-to-path] (Which requires Inkscape)
3. [fontforge-svg-importer][svg-importer]

[svg-importer]: https://github.com/leifgehrmann/fontforge-svg-importer
[svg-stroke-to-path]: https://github.com/leifgehrmann/svg-stroke-to-path

### Building the fonts

Because Sketch is required, the make script will only work on Mac OS.
But other than that, building the font is really simple.
Just clone this repository, and run:

```
make
```

This will generate the `.ttf` file for each font. An `.sdf` file will also be
created, in case the generated font needs to be tweaked.
