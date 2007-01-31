package Acme::Read::Like::A::Monger;
$text=do{local$/;<>};@::_=map{"$_  "} split_sentences($text);
@::_=split/\b/,$text if@::_<2;foreach my$s(@::_){my@abc=split
/(?:\s+|::)/,$s; map{s/[^A-Za-z]//g}@abc;use Text::Sentence
'split_sentences';@abc=map{ucfirst lc $_}grep{length $_ > 0}
@abc;$rm = join'::',@abc;$rm= join'',map{chr(ord(int rand 26)
+ord'A')}(1..10) if !$rm; $rm.= "::_" while(exists $cba{$rm}); 
$cba{$rm} = $s; print"require $rm;\n";}print"\n"x100;foreach 
$k(keys %cba){print"package $k;\nsub pm {\"";print quotemeta 
$cba{$k};print"\";\}\n";}print<<'BEGIN'; # Jonathan Rockway :)
BEGIN {@INC=(sub{print eval"@{[join '::', split/\W/,$_[1]]}";
open*DATA,"<$0";*DATA});}
BEGIN
$VERSION = '0.01';
__END__

=head1 NAME

Acme::Read::Like::A::Monger - convert prose to something a Perl hacker
can understand.

=head1 SYNOPSIS

    $ perl -MAcme::Read::Like::A::Monger < some_text.txt > a_script.pl

If C<some_text.txt> contains:

    Hello world!  Unit tests are good.  Test more.

Then the first few lines of C<<a_script.pl>> will look like:

    require Hello::World;
    require Unit::Tests::Are::Good;
    require Test::More;

When you run this script, the output will be:

   Hello world!  Unit tests are good.  Test more.

Now you can use your Perl-deciphering skills to read plain old
text!  Fun!  Productive!  Read like a monger!

=head1 AUTHOR

Jonathan Rockway C<< <jrockway at cpan.org> >>

=head1 LICENSE

Perl
