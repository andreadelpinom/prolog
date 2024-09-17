materias(Lenguajes,3).
materias(robotics,2).
materias(matematicas,3)

universidad('Andrea','lenguajes',3).
universidad('Juan Alejandro','robotics',2).
universidad('Antonio','matematicas',3).

rige(Persona,N):-
    universidad(Persona,A,B),
    A=<N,
    N=<B.

