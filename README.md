# GarrettHyde.com

[![Build Status][build-status-badge]][build-status]

My personal website.

## Build Notes

### Branches

| Name       | Description                                      |
| ---------- | ------------------------------------------------ |
| `master`   | Source code for [Hugo][hugo] builds              |
| `gh-pages` | Compiled HTML hosted by [GitHub Pages][gh-pages] |

### CI/CD

[GitHub Actions][gh-actions] are used to compile this website and push the
generated HTML to the `gh-pages` branch.

The [Hugo Setup Action][gh-actions-hugo] is used to install Hugo. The
[GitHub Pages Action][gh-actions-gh-pages] is used to deploy the static files to
GitHub Pages.

### Customize Favicon

1. Go to [favicon.io][favicon] and download the favicon.

   | Parameter        | Value        |
   | ---------------- | ------------ |
   | Text             | H            |
   | Background       | Rounded      |
   | Font Family      | Leckerli One |
   | Font Size        | 110          |
   | Font Color       | #FFF         |
   | Background Color | #2962FF      |
2. Copy the 512x512 pixel image to `assets/media/icon.png`
   ([reference][academic-docs]).

[academic-docs]: https://wowchemy.com/docs/getting-started/customization/#website-icon
[build-status]: https://github.com/ghyde/website/actions/workflows/gh-pages.yml
[build-status-badge]: https://github.com/ghyde/website/actions/workflows/gh-pages.yml/badge.svg
[favicon]: https://favicon.io/favicon-generator/?t=H&ff=Leckerli+One&fs=110&fc=%23FFF&b=rounded&bc=%232962FF
[gh-pages]: https://pages.github.com/
[gh-actions]: https://github.com/features/actions
[gh-actions-hugo]: https://github.com/peaceiris/actions-hugo
[gh-actions-gh-pages]: https://github.com/peaceiris/actions-gh-pages
[hugo]: https://gohugo.io/
