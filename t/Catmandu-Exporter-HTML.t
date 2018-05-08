#!perl

use strict;
use warnings;
use Test::More;
use Catmandu;
use Catmandu::Importer::HTML;

use Data::Dumper;

my $pkg;

BEGIN {
    $pkg = 'Catmandu::Exporter::HTML';
    use_ok $pkg;
};

require_ok $pkg;

my $html = '';
my $exporter = $pkg->new(file => \$html);

isa_ok $exporter, $pkg;

my $importer = Catmandu::Importer::HTML->new(file => 't/muse.html');
my $record  = $importer->first;

ok $exporter->add($record);

ok $exporter->commit;

like $html , qr{^<html><body>};

done_testing;
