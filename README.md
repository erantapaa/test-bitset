
This is a repo to illustrate a segfault with the bitset package and GHCI
running on OSX.

Steps to reproduce problem:

1. Install `stack`
2. Run: `stack build`
3. Run: `stack ghci`
4. At the ghci prompt, evaluate the expression `test`

You will see:

    *Road> test
    X
    *Road> Segmentation fault: 11
    $

