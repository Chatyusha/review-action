# Review Actions

## What is "ReView"

> Re:VIEW is an easy-to-use digital publishing system for paper books and ebooks. 
–– ([@kmuto](https://github.com/kmuto),the developer of [Re:View](https://github.com/kmuto/review))

If you want to know more about `Re:View`, please see the original repository,
[https://github.com/kmuto/review](https://github.com/kmuto/review).


## Usage

### Basic

e.g.)
The path of document root is `./sample`

```.github/workflows/buildbook.yml
name: ci
on:
  push:
    branches:
      - master

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Build Book
        uses: Chatyusha/review-action@v1
        with:
          path: sample
```

## Args

## Quick Start

## License

Main part of Re:VIEW is applied GNU Lesser General Public License (LGPL). See [licenses/review](./licenses/review) file.

Exception:

* doc/, sample/: MIT License. See [licenses/doc-sample](licenses/doc-sample) file.
* jumoline.sty
* plisting.sty
* gentomhow.sty
* jsbook.cls
