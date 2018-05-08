package Catmandu::Importer::HTML;

use Catmandu::Sane;

our $VERSION = '0.01';

use Moo;
use HTML::TokeParser;
use namespace::clean;

with 'Catmandu::Importer';

sub generator {
    my ($self) = @_;
    my $n = 0;

    my $parser = HTML::TokeParser->new($self->fh);

    sub {
        state $ready = 0;
        return undef if ($ready++);

        my $record = {};

        while (my $token = $parser->get_token) {
            push @{$record->{token}} , $token;
        }

        $record;
    };
}

1;
