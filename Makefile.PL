use ExtUtils::MakeMaker;

WriteMakefile(
	'NAME'              => 'Palm::Doc',
	'VERSION_FROM'      => 'Doc.pm',
	'DISTNAME'          => 'Palm-Doc',
	'INSTALLDIRS'       => 'site',
	'AUTHOR' => 'Christophe Beauregard <cpb@cpan.org>',
	'ABSTRACT' => 'Module for processing PalmDoc databases',
	'PREREQ_PM' => {
		'Palm::PDB' => 1,
		'HTML::TreeBuilder' => 0,
		'HTML::FormatText' => 0,
		'Getopt::Std' => 0,
		'Encode' => 0,
		'HTML::Entities' => 0,
	},
	'EXE_FILES' => [ 'makepalmdoc', 'mobisucks', 'htmltopalmdoc' ],
);
