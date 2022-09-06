# Re:VIEW Action

## Re:VIEWとは

> Re:VIEWは電子書籍と紙書籍のための、簡潔かつ強力なデジタル出版ツールです。
–– ([@kmuto](https://github.com/kmuto) (*Re:VIEW*の開発者) [Re:View](https://github.com/kmuto/review))

## 使い方

### 基本的な使い方

例ではドキュメントルートを`./sample`にしています。

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

### ビルドした本を成果物としてアップロード

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

## 変数

`path` : 現在地からドキュメントルートへの相対パス

## License

ライセンスの詳細は、*licenses*ディレクトリを見てください。

* Re:View: GNU Lesser General Public License (LGPL).
* sample: MIT License.
* jumoline.sty: The LaTeX Project Public License.
* plistings.sty MIT License.
* gentombow.sty BSD License.
* jsbook.cls BSD License. 
