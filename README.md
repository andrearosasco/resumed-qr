# Resumed-qr
In this project we develope and analyzed a Matlab implementation of the QR factorization capable of resuming the computation of a matrix factorization whose first k lines were already computed.

More formally, given a random matrix A, it's thin qr factorization Q, R and the matrix B which is equal to A augmented with an arbitrary number of column, our implementation takes as input Q, R, B and A and computes the qr factorization of A without recomputing the factorization of B.

In the report we analyzed our implementation complexity and stability comparing them with the ones of the Matlab implementation. 

Refer to the report for more information about the files content and structure.
