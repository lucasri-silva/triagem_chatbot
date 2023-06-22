calcular_gravidade([], nao_urgente).
calcular_gravidade([Sintoma | Restante], Gravidade) :-
    sintoma(Sintoma, GravidadeSintoma),
    calcular_gravidade(Restante, GravidadeRestante),
    comparar_gravidade(GravidadeSintoma, GravidadeRestante, Gravidade).

prioridade(emergencia, 4).
prioridade(muito_urgente, 3).
prioridade(urgente, 2).
prioridade(pouco_urgente, 1).
prioridade(nao_urgente, 0).

comparar_gravidade(Gravidade1, Gravidade2, GravidadeMaisAlta) :-
    prioridade(Gravidade1, Prioridade1),
    prioridade(Gravidade2, Prioridade2),
    Prioridade1 >= Prioridade2,
    GravidadeMaisAlta = Gravidade1.

comparar_gravidade(Gravidade1, Gravidade2, GravidadeMaisAlta) :-
    prioridade(Gravidade1, Prioridade1),
    prioridade(Gravidade2, Prioridade2),
    Prioridade1 < Prioridade2,
    GravidadeMaisAlta = Gravidade2.

