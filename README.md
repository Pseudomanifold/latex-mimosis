# latex-mimosis: A minimal & modern template for your thesis

This repository contains a minimal & modern LaTeX template for
dissertations and other university documents.

For the impatient or curious: [this is what the template looks like](https://pseudomanifold.github.io/latex-mimosis/Thesis.pdf).
You may also want to take a look at [my Ph.D. dissertation](http://bastian.rieck.me/research/Dissertation_Rieck_2017.pdf), which uses a predecessor of this template.

# Users

Before going over the details of this template, why not look at how it
looks in practice? The following documents have been typeset with this
template&nbsp;(or a slightly modified variant of it):

- S. Almasian, [Learning Joint Vector Representations of Words and Named Entities](https://github.com/satya77/Thesis_Entity_Embeddings/blob/master/MasterThesis_SatyaAlmasian.pdf), M.Sc.&thinsp;thesis, Heidelberg University, 2018
- E. Angriman, [Scalable Algorithms for the Analysis of Massive Networks](https://edoc.hu-berlin.de/handle/18452/25013), Ph.D.&thinsp;thesis, Humboldt University of Berlin, 2022
- C. Bock, [Motifs and Manifolds: Statistical and Topological Machine Learning for Characterising and Classifying Biomedical Time Series](https://www.research-collection.ethz.ch/handle/20.500.11850/524042), Ph.D.&thinsp;thesis, ETH Zurich, 2021
- A. Coín, [Bayesian RKHS-based methods in functional regression](https://github.com/antcc/tfm/releases/download/v1.1/masters-thesis.pdf), M.Sc.&thinsp;thesis, Autonomous University of Madrid, 2022
- K. Hanser, [Visualization of Coherence in Meteorological Data](https://github.com/hanserK/master_thesis/blob/master/Thesis_Karsten_Hanser.pdf), M.Sc.&thinsp;thesis, Heidelberg University, 2018
- M. Moor, [Machine Learning on Clinical Time Series: Classification and Representation
  Learning](https://www.research-collection.ethz.ch/handle/20.500.11850/532377), Ph.D.&thinsp;thesis, ETH Zurich, 2022
- B. Rieck, [Persistent Homology in Multivariate Data Visualization](http://archiv.ub.uni-heidelberg.de/volltextserver/22914/1/Dissertation.pdf), Ph.D.&thinsp;thesis, Heidelberg University, 2017

Please open a pull request if you want your document to be listed here,
and consider acknowledging this repository.

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

If you are using Overleaf, download [`latex-mimosis`](https://www.overleaf.com/latex/templates/latex-mimosis/syptyjpjrzzj)
in the gallery. If you want to use the template locally, follow these
steps:

- Clone this repository
- Copy the file `mimosis.cls` into your document directory
- Add `\documentclass{mimosis}` to your document preamble
- Optionally copy the file `Thesis.tex` and the files in `Sources` as
  a starting point
- Use `latexmk` to build the document
- Write a nice thesis in LaTeX

While you can customise everything to your heart's desire, you should
probably start with changing the fonts. I strongly recommend to use
`xelatex` or `lualatex` to build the document, as this will make font
selection almost trivial. Essentially, you only require these three
commands&nbsp;(I took the liberty to specify some example fonts):

```latex
\setmainfont{Baskerville}
\setsansfont{IBM Plex Sans}
\setmonofont{IBM Plex Mono}
```

Put these commands in your main file such as `Thesis.tex` and be sure to
remove this code block here:

```latex
\ifxetexorluatex
  % ...
\else
  % ...
\fi
```

Note that the document will work fine nevertheless, but some people
dislike the default fonts or do not have them installed.

**Overleaf users**: If you are using Overleaf to build your thesis, you
are restricted by their choice of fonts. Please read [this document](https://www.overleaf.com/learn/latex/Questions/Which_OTF_or_TTF_fonts_are_supported_via_fontspec%3F)
for more information about which fonts are available.

# How to customise

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

- The EB Garamond font
- The Source Code Pro font

If you installed the packages above, everything should work
automatically.

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

# Extensions

## Table of contents per chapter

If you want a small table of contents for each chapter, update
`mimosis.cls` as follows:

```latex
\usepackage[automark,headsepline,plainheadsepline]{scrlayer-scrpage}
\pagestyle{scrheadings}
\automark[section]{chapter}

\lehead*{\headmark}
\cehead{}
\rehead{\headmark}

\lohead{\headmark}
\cohead{}
\rohead*{\headmark}

\newpairofpagestyles[scrheadings]{chapter}{
	\KOMAoptions{headsepline=false,plainheadsepline=false}%
	\ihead*{}%
	\ohead*{}%
}

\newpairofpagestyles[scrheadings]{part}{
	\KOMAoptions{headsepline=false,plainheadsepline=false}%
	\ihead*{}%
	\ohead*{}%
}

\renewcommand*\chapterpagestyle{chapter}

\renewcommand*\partpagestyle{part}
```

This extension was contributed by [Nikos Antoniadis](https://github.com/nikosantoniadis) in [issue 16](https://github.com/Pseudomanifold/latex-mimosis/issues/16).
If you want to add this as proper extension or configurable parameter,
please let me know!

# Frequently asked questions (FAQ)

1. Does the template support bold fonts?\
   \
   Yes. First of all, you can change the default font (my personal
   suggestion is to use the `fontspec` package and `xelatex` or `lualatex`;
   then, changing your font is as easy as using `\setmainfont`). Second,
   note that in older TeX distributions, the font &lsquo;EB
   Garamond&rsquo;, shipped in the `ebgaramond` package, does *not* ship
   with a bold variant. Consider updating your TeX distribution or manually
   replacing the font. This is *not* an issue with this
   package&mdash;please see [issue #10](/../../issues/10) for more
   information.

2. How do I use `siunitx`?\
   \
   The options of this package were recently updated. The setup has now
   been removed to simplify the package. For the new version of the
   package, the following options are suggested by [Holger Dell](https://github.com/holgerdell):
   ```latex
   \sisetup{%
     mode                = match,
     propagate-math-font = true,
     reset-math-version  = false,
     reset-text-family   = false,
     reset-text-series   = false,
     reset-text-shape    = false,
     text-family-to-math = true,
     text-series-to-math = true,
   }
   ```
   If this does not work, you can also fall back to the older settings:
   ```latex
   \sisetup{%
     detect-all    = true,
     detect-family = true,
     detect-mode   = true,
     detect-shape  = true,
     detect-weight = true,
   }
   ```

3. I have a font with special support for ordinal numbers. How can I use
   them?\
   \
   The easiest way is to override the definitions and specify the
   required font features:
   ```latex
   \renewcommand{\st}{{\addfontfeatures{VerticalPosition=Ordinal}\textup{st}}\xspace}
   \renewcommand{\rd}{{\addfontfeatures{VerticalPosition=Ordinal}\textup{rd}}\xspace}
   \renewcommand{\nd}{{\addfontfeatures{VerticalPosition=Ordinal}\textup{nd}}\xspace}
   \renewcommand{\th}{{\addfontfeatures{VerticalPosition=Ordinal}\textup{th}}\xspace}
   ```
   Notice that this will not work for most fonts. If you are unsure,
   just leave the default values in place.

4. I want to use standard TeX fonts, but they look weird. (See [issue #29](https://github.com/Pseudomanifold/latex-mimosis/issues/29) for more details)\
   \
   This could be related to the encoding if you are using `pdflatex`.
   Either consider using a better font, such as `lmodern` (to be found
   in the package with the same name), or use a different encoding:
   ```latex
   \usepackage[OT1]{fontenc}
   ```
   This might cause problems when copying text from the template,
   though. The better solution is to use `lmodern`.

5. How can I ensure that the font for equations matches the main font?\
   \
   This depends a lot on your font selection. If you are using
   `xelatex`, consider using the `mathspec` package. Else, check that
   a package is available that provides maths support. For EB Garamond,
   the `unicode-math` package can be used, for instance. (See [issue
   #33](https://github.com/Pseudomanifold/latex-mimosis/issues/33) for
   a brief discussion)
   
6. How can I remove the indent in the second line (and all following ones) of Table/Figure captions? \
   \
   In `mimosis.cls` change `\captionsetup{subrefformat=parens}` to:
   ```tex
   \captionsetup{subrefformat=parens,format=plain}
   ```
   For details see [here](https://latex-tutorial.com/caption-customization-latex/).

7. How can I update the font size of citations? \
   \
   Check out `bibliography-mimosis.tex` and update or remove
   the `\renewcommand*{\citesetup}` block to your preference.

8. I do not like some of the mathematical symbols. How can I change them? \
   \
   You should be using `fontspec` and see whether your selected font
   supports `StylisticSet`. See [`garamond-math`](https://ctan.org/pkg/garamond-math)
   for an example.

# Contributing

If you require additional features, find some bugs, or just have some
generic inquiries, please just open an issue in this repository.

# Testimonials

> I like it!

&mdash; My mum

> Garish and overproduced.

&mdash; Some rando on social media

> Nice and clean!

&mdash; [`utopcell` on Hacker News](https://news.ycombinator.com/item?id=16414851)

> A dream to work with! A beautiful template that just works.

&mdash; [Leslie O'Bray](https://leslieobray.com) (who was totally not
coerced into writing something nice about this template)

# Contributors

Here is a list of contributors:

- [Nikos Antoniadis (nikosantoniadis)](https://github.com/nikosantoniadis): mini-TOC extension
- [bottom-bracket](https://github.com/bottom-bracket): `automake` and `standalone` compatibility improvements
- [Giuseppe (giuscri)](https://github.com/giuscri): improved cleanup operations
- [Jannis Born (jannisborn)](https://github.com/jannisborn): extended hyperlinks for `\textcite` commands
- Carlo Botha: fixed `\supercite` for `chem-angew` citation style
- [Miloslav Číž (drummyfish)](https://github.com/drummyfish): grammar/style corrections for `README` file
- [Michaël Defferrard (mdeff)](https://github.com/mdeff): matching fonts for mathematics and text
- [Holger Dell (holgerdell)](https://github.com/holgerdell): numerous simplifications of the main template; compatibility updates; automated publishing workflow
- [Florian Graf (f-graf)](https://github.com/f-graf): numerous font style and font size improvements
- [Bastian Rieck (Pseudomanifold)](https://github.com/Pseudomanifold): original creator and maintainer
- [Diego A. Rodriquez (diarodriguezva)](https://github.com/diarodriguezv): support with `ebgaramond` updates
- [TonyY](https://github.com/toooonyy): `latexmkrc` updates and fixes; `hyperref` fixes
