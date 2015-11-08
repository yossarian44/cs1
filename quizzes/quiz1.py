'''Plot the function $f(x) = x^2$ for integer values of x
ranging from 0 inclusive to 10 exclusive.'''

import pylab as pl

x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

fx = [0, 5, 15, 25, 30, 50, 30, 25, 15, 5, 0]

pl.plot(x, fx)

pl.show()
