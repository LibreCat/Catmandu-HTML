package Catmandu::HTML;

our $VERSION = '0.01';

1;

__END__

=encoding utf8

=head1 NAME

Catmandu::HTML - Modules for handling HTML data within the Catmandu framework

=head1 SYNOPSIS

Command line client C<catmandu>:

  catmandu convert HTML to JSON < ex/test.html > data/test.json

  catmandu convert JSON to HTML < data/test.json > ex/test.html

See documentation of modules for more examples.

=head1 AVAILABLE MODULES

=over

=item L<Catmandu::Exporter::HTML>

Serialize HTML data

=item L<Catmandu::Importer::HTML>

Parse HTML data

=item L<Catmandu::Fix::html_filter_tag>

Filter HTML by name and optional group them

=item L<Catmandu::Fix::html_filter_type>

Filter HTML by type

=item L<Catmandu::Fix::html_text>

Select only the literal text values from the HTML

=back

=head1 SEE ALSO

This module is based on L<Catmandu>

=head1 AUTHORS

=over

=item Patrick Hochstenbach, C<< patrick.hochstenbach at ugent.be >>

=back

=head1 COPYRIGHT AND LICENSE

The Perl software is copyright (c) 2018 by Patrick Hochstenbach.
This is free software; you can redistribute it and/or modify it under the same
terms as the Perl 5 programming language system itself.

=encoding utf8

=cut
