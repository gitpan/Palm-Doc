use ExtUtils::MakeMaker;

WriteMakefile(
	'NAME'              => 'Palm::Doc',
	'VERSION_FROM'      => 'Doc.pm',
	'DISTNAME'          => 'Palm-Doc',
	'INSTALLDIRS'       => 'site',
	'AUTHOR' => 'Christophe Beauregard <cpb@cpan.org>',
	'ABSTRACT' => 'Module for processing PalmDoc databases',
	'PREREQ_PM' => {
		'Palm::PDB' => '1',
	},
	'EXE_FILES' => [ 'makepalmdoc', 'mobisucks' ],
);
