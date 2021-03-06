# lattice_sum
Recursively finds all the non-negative integer points x_i : i=1..n such that x_1 + x_2 + ... + x_n = r , where r is an integer

## Scope
Given a number of dimensions n and an integer r, it finds all the vectors ![equation](https://latex.codecogs.com/gif.latex?%5Cmathbf%7BX%7D%20%5Cin%20%7B%5Crm%20I%5C%21R%7D_n%5E&plus;%20%5Ccup%20%5C%7B%5Cmathbf%7B0%7D_n%5C%7D%20%3D%20%5C%7Bx_1%2Cx_2%2C%5Cldots%2Cx_n%5C%7D) such that ![equation](https://latex.codecogs.com/gif.latex?%5Csum_%7Bi%3D1%7D%5En%20x_i%20%3D%20r).

## Validation
In test_lattice_plane a graphical and a multidimensional validation is performed.

## Changelog
Now performs only the necessary iterations
