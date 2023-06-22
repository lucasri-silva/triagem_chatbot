:-consult('./sintomas_db.pl').
:-consult('./severidade_regras.pl').

chatbot :-
    write('Bem-vindo ao chatbot de triagem! Por favor, digite seus sintomas: '), nl,
    ler_sintomas(Sintomas),
    gravidade(Sintomas, G),
    write('Com base nos seus sintomas, o seu nível de triagem é: '), write(G), nl,
    halt.

ler_sintomas(Sintomas) :-
    write('Digite um sintoma (ou "fim" para finalizar): '), nl,
    read(Sintoma),
    (Sintoma = fim -> Sintomas = [] ;
    ler_sintomas(Restante),
    Sintomas = [Sintoma | Restante]).

gravidade(Sintomas, G) :- calcular_gravidade(Sintomas, G).
