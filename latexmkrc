@default_excluded_files = ("preamble.tex");

$pdf_mode = 5;
$xelatex = "xelatex -file-line-error -halt-on-error -synctex=0 -no-pdf -interaction=batchmode %O %S";
$xdvipdfmx = "xdvipdfmx -E -o %D %O %S";
$preview_mode = 0;
$pdf_update_method = 0;

my $tl_build_dir = $ENV{'TL_BUILD_DIR'} // '.';
$out_dir = "$tl_build_dir";
$aux_dir = "$tl_build_dir";

$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk glsdefs glg glo gls idx ilg ind ist lof log lot out run.xml toc dvi xdy";
