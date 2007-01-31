#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Acme::Read::Like::A::Monger' );
}

diag( "Testing Acme::Read::Like::A::Monger $Acme::Read::Like::A::Monger::VERSION, Perl $], $^X" );
