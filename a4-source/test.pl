edge(1,2).
edge(2,3).
edge(2,4).
reachable(X,Y):- edge(X,Y).
reachable(X,Y)::- edge(X,Z),reachable(Z,Y).