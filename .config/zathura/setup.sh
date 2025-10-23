#!/bin/bash

d=$(brew --prefix zathura)/lib/zathura ; mkdir -p $d ; for n in cb djvu pdf-mupdf pdf-poppler ps ; do p=$(brew --prefix zathura-$n)/lib$n.dylib ; [[ -f $p ]] && ln -s $p $d ; done
