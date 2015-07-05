Assembly and Annotation
=======================

This repository contains a microbial *de novo* assembly workflow implemented in Galaxy.  This workflow uses [SPAdes][] to perform assembly, along with a few Perl scripts for filtering the assembly.

Installation
============

Galaxy Workflow
---------------

This workflow can be installed from the [Galaxy Test Toolshed][] <https://testtoolshed.g2.bx.psu.edu/view/aaronpetkau/assembly_single_end/f7cd57d1cfb0>.  This will install any of the necessary tool dependencies in Galaxy.

Other Dependencies
------------------

A few other dependencies need to be installed and made available to Galaxy and the tools.  This are:

* [BioPerl][]
* [gnuplot][]

Steps
-----

This workflow takes as input a set of sequence reads, in fastq format and proceeds through the following steps:

1. Assembly with [SPAdes]
2. Removing small contigs or contigs with low coverage.  Marking contigs with high coverage as potential repeat regions.
3. Generates assembly statistics.

[Galaxy]: https://galaxyproject.org/
[SPAdes]: http://bioinf.spbau.ru/spades
[Galaxy Test Toolshed]: https://testtoolshed.g2.bx.psu.edu
[BioPerl]: http://www.bioperl.org/wiki/Main_Page
[gnuplot]: http://www.gnuplot.info/