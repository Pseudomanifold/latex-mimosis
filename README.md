# latex-mimosis: A minimal & modern template for your thesis

This repository contains a minimal & modern LaTeX template for
dissertations and other university documents.

For the impatient or curious: [this is what the template looks
like](Thesis.pdf).
You may also want to take a look at my [my Ph.D. dissertation](http://bastian.rieck.me/research/Dissertation_Rieck_2017.pdf), which uses a predecessor of this template.

# Users

Before going over the details of this template, why not look at how it
looks in practice? The following documents have been typeset with this
template&nbsp;(or a slightly modified variant of it):

- S. Almasian, [Learning Joint Vector Representations of Words and Named Entities](https://github.com/satya77/Thesis_Entity_Embeddings/blob/master/MasterThesis_SatyaAlmasian.pdf), M.Sc.&thinsp;thesis, Heidelberg University, 2018
- K. Hanser, [Visualization of Coherence in Meteorological Data](https://github.com/hanserK/master_thesis/blob/master/Thesis_Karsten_Hanser.pdf), M.Sc.&thinsp;thesis, Heidelberg University, 2018
- P. Jung, [On the Frame of Reference in Flow Visualization](https://github.com/JungStar/master_thesis/blob/master/Thesis.pdf), M.Sc.&thinsp;thesis, Heidelberg University, 2019
- B. Rieck, [Persistent Homology in Multivariate Data Visualization](http://archiv.ub.uni-heidelberg.de/volltextserver/22914/1/Dissertation.pdf), Ph.D.&thinsp;thesis, Heidelberg University, 2017

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

# License

The template uses the MIT license. Please see the file
[`LICENSE.md`](LICENSE.md) in the main directory of the repository for
more details.

# Known issues

The superscript citation style is not compatible with all citation
styles. For example, to use the citation with `chem-angew`, please
use an adjusted `\supercite` command such as this one:

```latex
\DeclareCiteCommand{\supercite}[\mkbibsuperscript]
{\bibopenbracket%
	\usebibmacro{cite:init}%
	\let\multicitedelim=\supercitedelim
	\usebibmacro{prenote}}
{\usebibmacro{citeindex}%
	\usebibmacro{cite:comp}}
{}
{\usebibmacro{cite:dump}%
	\usebibmacro{postnote}%
	\bibclosebracket%
}
```

Thanks to Carlo Botha for this contribution!

# Frequently asked questions (FAQ)

1. Does the template support bold fonts?

Yes. First of all, you can change the default font (my personal
suggestion is to use the `fontspec` package and `xelatex` or `lualatex`;
then, changing your font is as easy as using `\setmainfont`). Second,
note that in older TeX distributions, the font &lsquo;EB
Garamond&rsquo;, shipped in the `ebgaramond` package, does *not* ship
with a bold variant. Consider updating your TeX distribution or manually
replacing the font. This is *not* an issue with this
package&mdash;please see [issue #10](/../../issues/10) for more
information.

# Contributing

If you require additional features, find some bugs, or just have some
generic inquiries, please just open an issue in this repository.

# Contributors

Here is a list of contributors:

- [Giuseppe (giuscri)](https://github.com/giuscri): improved cleanup operations
- Carlo Botha: fixed `\supercite` for `chem-angew` citation style
- [Miloslav Číž (drummyfish)](https://github.com/drummyfish): grammar/style corrections for `README` file
- [Bastian Rieck (Pseudomanifold)](https://github.com/Pseudomanifold): original creator and maintainer
- [Diego A. Rodriquez (diarodriguezva)](https://github.com/diarodriguezv): support with `ebgaramond` updates
- [TonyY](https://github.com/toooonyy): `latexmkrc` updates and fixes; `hyperref` fixes
