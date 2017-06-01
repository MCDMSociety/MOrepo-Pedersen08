# Instance groups for bicriterion assignment and multi modal assignment problems

The paper consider two groups of instances; namely, instances for the classical bi-objective linear 
assignment problem and instances for the bi-objective multi modal assignment problem. All cost-files
are given in xml-format (see e.g. [ex1](./instances/xml/AP/Pedersen08_AP_d5_c0-1000_36.xml) and
[ex2](./instances/xml/AP/Pedersen08_MMAP_d4_e2-8_c0-500_m3_s0_09.xml) ). For further information on
how these files were generated consult the 
[APGen](http://www.research.relund.dk/publications/pdf/relund06a.pdf) documentation paper.


## Assignment problems (AP)

The instances are contained in the sub folder `AP`. Instances are named 

- `Pedersen08_AP_d<n>_c0-1000_<Y>.xml` where `Y` is the instance number of a BiAP of size `n` with 
   negatively correlated costs. Cost range is [0,1000].
- `Pedersen08_AP_d<n>_c0-1000_non_<Y>.xml` where `Y` is the instance number of a BiAP of size `n` with 
   random generated costs. Cost range is [0,1000].

A total of 4000 instances are provided. That is, 100 instances of each of the following sizes 
n = 5, 10, ..., 100 with costs randomly chosen in 0, ..., 1000 and using both random and negatively
correlated cost.

## Multi modal assignment problems (MMAP)

The instances are contained in the sub folder `MMAP`. Instances are named
`Pedersen08_MMAP_d<n>_e<I1>_c<I2>_m<M>_s<S>_<Y>.xml` where `Y` is the instance number of a BiMMAP of
size $n$ with entry range `I1` and cost range `I2` using method `M` and shape `S`.

A total of 8000 instances are provided. That is, 100 instances of each of the
following 80 possible configurations were generated:

- n: 4, 6, 8, 10.
- I1: 2-8 (not for method 2) and 10-30.
- I2: 0-500 and 0-10000.
- (M,S): (1, −60), (1,0), (1, 60), (2, 3), (2, 4), (3, 0).



## Raw format description

The instance files are not in a plain text format. However, if you would like to convert an instance
to plain text file then the xml file may be converted using an xslt style sheet. For more details 
see the [ReadMe.md](../convert/ReadMe.md) file in the `convert` folder.




