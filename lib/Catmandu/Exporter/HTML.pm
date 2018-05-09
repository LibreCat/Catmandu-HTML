package Catmandu::Exporter::HTML;

use Catmandu::Sane;

our $VERSION = '0.01';

use Moo;
use namespace::clean;

with 'Catmandu::Exporter';

sub add {
    my ($self,$data) = @_;

    my $token = $data->{token} // [];

    for (@$token) {
        my $type = $_->[0];

        if ($type eq 'S') {
            $self->fh->print($_->[4]);
        }
        elsif ($type eq 'E') {
            $self->fh->print($_->[2]);
        }
        elsif ($type eq 'T') {
            $self->fh->print($_->[1]);
        }
        elsif ($type eq 'C') {
            $self->fh->print($_->[1]);
        }
        elsif ($type eq 'D') {
            $self->fh->print($_->[1]);
        }
        elsif ($type eq 'PI') {
            $self->fh->print($_->[2]);
        }
    }
}

sub commit {
    my $self = $_[0];
    $self->fh->close;
}

1;
