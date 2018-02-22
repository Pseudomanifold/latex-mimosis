# latex-mimosis: A minimal & modern template for your thesis

This repository contains a minimal & modern LaTeX template for
dissertations and other university documents.

For the impatient or curious: [this is what the template looks
like](Thesis.pdf).
You may also want to take a look at my [my Ph.D. dissertation](http://bastian.rieck.me/research/Dissertation_Rieck_2017.pdf), which uses a predecessor of this template.

# Advantages

This template aims to be&hellip;
- clean: no LaTeX trickery
- minimal: no unnecessary adjustments and decorations
- modern: typographically pleasing

It is specifically suited for the European education system because it
uses A4 paper size by default&mdash;this can be easily adjusted to fit
your personal needs, though&nbsp;(see below).

The class is based on [`KOMA-script`](komascript.de), so it should be
flexible enough to suit virtually any purpose.

# How to use

- Clone this repository
- Copy the file `mimosis.cls` into your document directory
- Add `\documentclass{mimosis}` to your document preamble
- Optionally copy the file `Thesis.tex` and the files in `Sources` as
  a starting point
- Use `latexmk` to build the document using `pdflatex`
- Write a nice thesis in LaTeX

# How to customize

The template is based on the excellent [`KOMA-script`](https://ctan.org/pkg/koma-script)
class. You can thus change the appearance of many things quite easily.
For example, if you want the thesis to use the `letter` paper format,
just add

    \KOMAoptions{paper=letter}

in the preamble of the document and recompile.

# Example

The repository comes with an example file called `Thesis.tex`. Please
take a look at this file in order for more detailed instructions about
how to use the class.

It is recommended to use `latexmk` to build your LaTeX documents. Your
distribution might already have this command. If so, you can use

    latexmk

in the main directory of this repository in order to build the example
file.

## Required packages for the class

The template uses various LaTeX packages that you should install using
your favourite LaTeX distribution. Some distributions already do this
automatically when you compile the document for the first time. Others
require manual updates. Please refer to the documentation of your LaTeX
distribution for more details.

Here is a list of packages that you need&nbsp;(I am using the package
name as specified on CTAN):

- [`amsmath`](https://ctan.org/pkg/amsmath)
- [`amsthm`](https://ctan.org/pkg/amsthm)
- [`booktabs`](https://ctan.org/pkg/booktabs)
- [`csquotes`](https://ctan.org/pkg/csquotes)
- [`dsfont`](https://ctan.org/pkg/dsfont)
- [`glossaries`](https://ctan.org/pkg/glossaries)
- [`graphicx`](https://ctan.org/pkg/graphicx)
- [`fontspec`](https://ctan.org/pkg/fontspec)&nbsp;(only for LuaTeX and XeTeX users)
- [`ifluatex`](https://ctan.org/pkg/ifluatex)
- [`ifpdf`](https://ctan.org/pkg/ifpdf)
- [`ifxetex`](https://ctan.org/pkg/ifxetex)
- [`inputenc`](https://ctan.org/pkg/inputenc)&nbsp;(only for pdfTeX users)
- [`koma-script`](https://ctan.org/pkg/koma-script)
- [`makeidx`](https://ctan.org/pkg/makeidx)
- [`paralist`](https://ctan.org/pkg/paralist)
- [`setspace`](https://ctan.org/pkg/setspace)
- [`siunitx`](https://ctan.org/pkg/siunitx)
- [`subcaption`](https://ctan.org/pkg/subcaption)
- [`xcolor`](https://ctan.org/pkg/xcolor)
- [`xspace`](https://ctan.org/pkg/xspace)

## Required packages for the example document

Typesetting the example document requires an additional set of packages.
Feel free to remove them, though&mdash;they are only used for showcasing
how a real document might look like.

- [`biblatex`](https://ctan.org/pkg/biblatex)
- [`bookmark`](https://ctan.org/pkg/bookmark)
- [`etoolbox`](https://ctan.org/pkg/etoolbox)
- [`hyperref`](https://ctan.org/pkg/hyperref)
- [`metalogo`](https://ctan.org/pkg/metalogo)


For pdfTeX users:

- [`ebgaramond`](https://ctan.org/pkg/ebgaramond)
- [`sourcecodepro`](https://ctan.org/pkg/sourcecodepro)

For LuaTeX or XeTeX users:

- The Minion Pro font; please use your favourite search engine for this
  or change the line `\setmainfont{Minion Pro}` in the preamble to
  another font&nbsp;(or leave it out entirely)

# Contributing

If you require additional features, find some bugs, or just have some
generic inquiries, please just open an issue in this repository.

# Contributors

Here is a list of contributors:

- [Miloslav Číž (drummyfish)](https://github.com/drummyfish): grammar/style corrections for `README` file
- [Bastian Rieck (Submanifold)](https://github.com/Submanifold): original creator and maintainer
