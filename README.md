# NAME

Catmandu::HTML - Modules for handling HTML data within the Catmandu framework

# SYNOPSIS

Command line client `catmandu`:

    catmandu convert HTML to JSON < ex/test.html > data/test.json

    catmandu convert JSON to HTML < data/test.json > ex/test.html

    # Keep the text
    curl -s http://librecat.org |
      catmandu convert HTML to Text --fix "html_text()"

    # Filter out the anchors
    curl -s http://librecat.org |
      catmandu convert HTML to Text --fix "html_filter_tag(a); html_text(join:\"\n\")"

    # Filter out the meta tags as YAML
    curl -s http://librecat.org |
      catmandu convert HTML to YAML --fix "html_filter_tag(meta, group_by:name)"

See documentation of modules for more examples.

# AVAILABLE MODULES

- [Catmandu::Exporter::HTML](https://metacpan.org/pod/Catmandu::Exporter::HTML)

    Serialize HTML data

- [Catmandu::Importer::HTML](https://metacpan.org/pod/Catmandu::Importer::HTML)

    Parse HTML data

- [Catmandu::Fix::html\_filter\_tag](https://metacpan.org/pod/Catmandu::Fix::html_filter_tag)

    Filter HTML by name and optional group them

- [Catmandu::Fix::html\_filter\_type](https://metacpan.org/pod/Catmandu::Fix::html_filter_type)

    Filter HTML by type

- [Catmandu::Fix::html\_text](https://metacpan.org/pod/Catmandu::Fix::html_text)

    Select only the literal text values from the HTML

# SEE ALSO

This module is based on [Catmandu](https://metacpan.org/pod/Catmandu)

# AUTHORS

- Patrick Hochstenbach, `patrick.hochstenbach at ugent.be`

# COPYRIGHT AND LICENSE

The Perl software is copyright (c) 2018 by Patrick Hochstenbach.
This is free software; you can redistribute it and/or modify it under the same
terms as the Perl 5 programming language system itself.
