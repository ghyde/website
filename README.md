# GarrettHyde.com

[![Build Status](https://travis-ci.com/ghyde/website.svg?branch=master)](https://travis-ci.com/ghyde/website)

My personal website.

## Build Notes

### Branches

| Name       | Description                                      |
| ---------- | ------------------------------------------------ |
| `master`   | Source code for [Hugo][hugo] builds              |
| `gh-pages` | Compiled HTML hosted by [GitHub Pages][gh-pages] |

### CI/CD

[Travis CI][travis-ci] is used to compile the website and push the generated
HTML to the `gh-pages` branch.

### Customize Favicon

1. Go to [favicon.io][favicon] and download the favicon.
2. Copy the 512x512 pixel image to `assets/images/icon.png`
   ([reference][academic-docs]).

[academic-docs]: https://wowchemy.com/docs/getting-started/customization/#website-icon
[favicon]: https://favicon.io/favicon-generator/?t=H&ff=Leckerli+One&fs=110&fc=%23FFF&b=rounded&bc=%232962FF
[gh-pages]: https://pages.github.com/
[hugo]: https://gohugo.io/
[travis-ci]: https://travis-ci.org/
