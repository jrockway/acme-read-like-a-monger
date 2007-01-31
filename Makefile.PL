use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Acme::Read::Like::A::Monger',
    AUTHOR              => 'Jonathan Rockway <jrockway@cpan.org>',
    VERSION_FROM        => 'lib/Acme/Read/Like/A/Monger.pm',
    ABSTRACT_FROM       => 'lib/Acme/Read/Like/A/Monger.pm',
    PL_FILES            => {},
    PREREQ_PM => {
		  'Text::Sentence' => 0,
		  'Test::More' => 0,
		 },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Acme-Read-Like-A-Monger-*' },
);
