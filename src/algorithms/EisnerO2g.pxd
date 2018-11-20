cdef extern from "EisnerO2g.h":
    cdef vector[int] decodeProjective_o2g(int length,double* scores)

cdef extern from "EisnerO2g.cpp":
    pass



