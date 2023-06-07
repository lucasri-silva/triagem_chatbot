calcular_gravidade([], baixo).
calcular_gravidade([Sintoma|Restante], Gravidade) :-
sintoma(Sintoma, GravidadeSintoma),
calcular_gravidade(Restante, GravidadeRestante),
comparar_gravidade(GravidadeSintoma, GravidadeRestante, Gravidade).

comparar_gravidade(alto, _, alto).
comparar_gravidade(medio, alto, alto).
comparar_gravidade(medio, medio, medio).
comparar_gravidade(medio, baixo, medio).
comparar_gravidade(baixo, alto, alto).
comparar_gravidade(baixo, medio, medio).
comparar_gravidade(baixo, baixo, baixo).
