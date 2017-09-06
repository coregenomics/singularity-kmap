# kmap singularity image

Build the singularity container for the
[kmap](https://github.com/coregenomics/kmap) R package:

    ./build.sh

Requires sudo access on the host computer and
[`singularity`](http://singularity.lbl.gov/) installed.

## Why singularity and not spack?

While [`spack`](https://github.com/llnl/spack) would have been nicer
to administer, it turns out the R built-in socket communication for
multicore processing on R 3.4.1 fails on RHEL 6.7.  Additionally the
number of the R packages with poorly written configure scripts makes
maintenance difficult.  Here is the abandoned
[installation script](https://gist.github.com/omsai/983d24898b6bba6b99f4d335c0edd748)
for reference.
