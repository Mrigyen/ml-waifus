# ML Waifu Wallpapers

## Introduction

Gwern Branwen has released a [website](https://www.thiswaifudoesnotexist.net/index.html) that showcases a selection of [StyleGAN](https://github.com/NVlabs/stylegan)-generated anime girl face images (and many of them are adorable).

This is an extremely simple script that randomly selects an image from Gwern's website's server, downloads it (each download replaces the previous image download), and adds it as a GNOME wallpaper.

It is great motivation to study Machine Learning more. At least for me.

---

## Requirements

1. GNOME desktop on a Linux OS
2. `wget` (which most linux distros have anyway).

Verified working on Ubuntu 18.04 with GNOME desktop environment.

---

## Installation

1. Download or copy the script locally.
2. Edit the path to save the picture.
2. Type `crontab -e` onto your terminal.
3. Add this line to the end of the file: `*/1 * * * * /bin/bash /path/to/script.sh`, replacing the `/path/to/script.sh` with the actual path to the script you just saved.
4. Enjoy.

---

## Possible issues
(Because no program is perfect.)

1. Proxy madness: if you have `http_proxy` set in your environment variables but you switch to a non-proxy internet connection, `wget` will get stuck attempting to download the picture, but won't be able to. In that case, you'll be stuck with the same picture until the environment variables are also taken care of.

