use ExtUtils::MakeMaker;

# cpan doesn't seem to be able to find p5-Palm any other way,
# so if it's not already installed we basically have to force
# loading a specific version.
my $p5palm = 'ARENSB/p5-Palm-1.3.0.tar.gz';
eval {
	require Palm::PDB;
	$p5palm = 'Palm::PDB';
};

WriteMakefile(
	'NAME'              => 'Palm::Doc',
	'VERSION_FROM'      => 'Doc.pm',
	'DISTNAME'          => 'Palm-Doc',
	'INSTALLDIRS'       => 'site',
	'AUTHOR' => 'Christophe Beauregard <cpb@cpan.org>',
	'ABSTRACT' => 'Module for processing PalmDoc databases',
	'PREREQ_PM' => {
		$p5palm => 0,
		'HTML::TreeBuilder' => 0,
		'HTML::FormatText' => 0,
		'Getopt::Std' => 0,
		'Encode' => 0,
		'HTML::Entities' => 0,
		'Test::More' => 0.46,
	},
	'EXE_FILES' => [ 'makepalmdoc', 'mobisucks', 'htmltopalmdoc' ],
);
