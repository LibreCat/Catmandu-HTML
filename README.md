# NAME

Catmandu::Exporter::HTML - a HTML exporter

# SYNOPSIS

    # From the commandline
    $ catmandu convert HTML --fix myfixes to HTML < ex/test.html

    # From Perl

    use Catmandu;

    # Print to STDOUT
    my $exporter = Catmandu->exporter('HTML');

    $exporter->add_many($arrayref);
    $exporter->add_many($iterator);
    $exporter->add_many(sub { });

    $exporter->add($hashref);

    printf "exported %d objects\n" , $exporter->count;

    # Get an array ref of all records exported
    my $data = $exporter->as_arrayref;

# DESCRIPTION

This is a [Catmandu::Exporter](https://metacpan.org/pod/Catmandu::Exporter) for converting Perl into HTML.

# SEE ALSO

[Catmandu::Importer::LIDO](https://metacpan.org/pod/Catmandu::Importer::LIDO), [HTML::TokeParser](https://metacpan.org/pod/HTML::TokeParser)
