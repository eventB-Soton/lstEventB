Listing Event-B models
======================

This package contains a documented style file for easily listing
Event-B code in LaTeX.

Installation
------------

The package is already pre-compiled. However, in the case where it is
needed for recompiling, a Gradle script has been provided. The users can
simply issue the following command:

  ./gradlew (on *nix systems)
or
  gradlew.bat (on Windows systems)

This will perform the following:
- To create the style file "lstEventB.sty"
- To create the documentation "lstEventB.pdf"
- To create the sample "sample-lstEventB.pdf"
- To create the sample "sample-lstEventB-colour.pdf"

The style file "lstEventB.sty" should be copied to some proper location
for LaTeX to find it later (e.g.,
"/usr/local/share/texmf/tex/lstEventB.sty").

Documentation
-------------

There are one documentation file delivered with this package:

  - File "lstEventB.pdf" contains the source of the style file in the
    classical literate programming style.

License
-------

This file may be distributed and/or modified under the conditions of
the LaTeX Project Public License, either version 1.3c of this license
or (at your option) any later version.  The latest version of this
license is in:

   http://www.latex-project.org/lppl.txt

and version 1.3c or later is part of all distributions of LaTeX version
2008/05/04 or later.

This work has the LPPL maintenance status `author-maintained'.

The Current Maintainer of this work is
[T.S.Hoang](mailto:T.S.Hoang@ecs.soton.ac.uk "T dot S dot Hoang at ecs
dot soton dot ac dot uk")

Past Maintainer of this work are
[C. Zhu](mailto:C.Zhu@ecs.soton.ac.uk "C dot Zhu at ecs dot soton dot ac dot uk")

-- Copyright (C) 2016, 2021 University of Southampton
