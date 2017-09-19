# latex-mimosis: A minimal & modern template for your thesis

This repository contains a minimal & modern LaTeX template for
dissertations and other university documents.

For the impatient or curious: [this is how the template looks
like](Thesis.pdf).

# Advantages

This template aims to be&hellip;
- clean: no LaTeX trickery
- minimal: no unnecessary adjustments and decorations
- modern: typographically pleasing

It is specifically suited for the European education system because it
uses A4 paper size by default.

# How to use

- Clone this repository
- Copy the file `mimosis.cls` into your document directory
- Add `\documentclass{mimosis}` to your document preamble
- Optionally copy the file `Thesis.tex` and the files in `Sources` as
  a starting point
- Use `latexmk` to build the document using `pdflatex`
- Write a nice thesis in LaTeX

# Example

The repository comes with an example file called `Thesis.tex`. Please
take a look at this file in order for more detailed instructions about
how to use the class.

It is recommended to use `latexmk` to build your LaTeX documents. Your
distribution might already have this command. If so, you can use

    latexmk

in the main directory of this repository in order to build the example
file.

# Contributing

If you require additional features, find some bugs, or just have some
generic inquiries, please just open an issue in this repository.
