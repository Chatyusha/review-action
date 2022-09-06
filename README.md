# Re:VIEW Action

## What is "Re:VIEW"

> Re:VIEW is an easy-to-use digital publishing system for paper books and ebooks. 
–– ([@kmuto](https://github.com/kmuto),the developer of [Re:View](https://github.com/kmuto/review))

If you want to know more about *Re:View*, please see the original repository,
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

### Artifacts

```yml
name: ci
on:
  push:
    branches:
      - master

jobs:
  build:
    runs-on: ubuntu-latest
    name: Build Book and Upload Artifacts
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Build Review Article
        uses: Chatyusha/review-action@v1
        with:
          path: sample
      - name: Upload PDF
        uses: actions/upload-artifact@v2
        with:
          name: book
          path: sample/book.pdf
```

## Args

`path`: The path from current directory to document root

## License

See the files in the directory, *licenses*, for details

* Re:View: GNU Lesser General Public License (LGPL).
* sample: MIT License.
* jumoline.sty: The LaTeX Project Public License.
* plistings.sty MIT License.
* gentombow.sty BSD License.
* jsbook.cls BSD License. 
