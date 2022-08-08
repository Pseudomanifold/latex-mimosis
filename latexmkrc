@default_files = ('Thesis.tex');

add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );

sub makeglossaries {
    my ($name, $path) = fileparse( $$Psource );
    return system "makeglossaries -d '$path' '$name'";
}

$lualatex = 'lualatex  %O  --shell-escape %S';
$pdf_mode = 4;
$clean_ext = "%R.acn %R.acr %R.alg %R.aux %R.auxlock %R.bak %R.bbl %R.blg %R.dvi %R.fls %R.glg %R.glo %R.gls %R.idx %R.ist %R.ilg %R.ind %R.log %R.out %R.pdf %R.ps %R.sav %R.swp %R.toc %R.run.xml %R-blx.bib %R_latexmk %R~ %R.pgf-plot.%R Figures/External/";
