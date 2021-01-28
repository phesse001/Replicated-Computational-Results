# Replicated-Computational-Results

# TODO
- [ ] Clean up all meta descriptionss and sofware detection plugins related to blis test suite
- [ ] Find unique identifiers that show up in objdump or nm when linking to/not linking to blis (might be helpful to compare to normal command line linking output when linking to only one mkl lib but still works and compare)
- [ ] Get test suite working on windows and linux, describe specific versions (soft,hard,arc,etc)
- [ ] Look at ck's kernel to find out how sw/hw detection is impplemented and how dictionaries are passed to ck actions
- [ ] Potentially attempt to apply ML based compiler autotuning to ck program(maybe start with small program, move to blis test suite)
- [ ] Add dependency to octave for blis framework to produce plots to stay consistent with native testing framework (along with action to plot, should be able to use supplied supplemental plotting script)

## Potentially useful resources
* [Blis](https://github.com/flame/blis)
* [Related Linear Algebra](http://www.ulaff.net/)
* [Automatically tuned linear algebra software](https://www.researchgate.net/publication/2572098_Automatically_Tuned_Linear_Algebra_Software)
* CK Autotuning [1](https://cknowledge.io/report/rpi3-crowd-tuning-2017-interactive/#sec_autotuning) and [2](https://github.com/ctuning/ck/wiki/Compiler-autotuning)
* [BLIS Object API](https://github.com/flame/blis/blob/master/docs/BLISObjectAPI.md)
* [A Survey on Compiler Autotuning](https://arxiv.org/pdf/1801.04405.pdf)

