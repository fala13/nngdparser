#!python
#cython: language_level=3
# distutils: language = c++

cimport numpy as np
from libcpp.vector cimport vector

def decodeProhjective(int len, arr):
   # if not arr.flags['C_CONTIGUOUS']:
  #      arr = np.ascontiguousarray(arr) # Makes a contiguous copy of the numpy array.

    cdef double[::1] arr_memview = arr
    cdef vector[int] result = decodeProjective_o2g(arr_memview.shape[0], &arr_memview[0])

    return list(result)
