% Definiciones del tiempo
tiempo(presente).
tiempo(pasado).
tiempo(futuro).

% Definiciones de persona
persona(primera).
persona(segunda).
persona(tercera).

% Definiciones de número
numero(singular).
numero(plural).

% Definiciones del verbo "ser"
ser(presente, primera, singular, "am").
ser(presente, segunda, singular, "are").
ser(presente, tercera, singular, "is").
ser(presente, primera, plural, "are").
ser(presente, segunda, plural, "are").
ser(presente, tercera, plural, "are").
ser(pasado, primera, singular, "was").
ser(pasado, segunda, singular, "were").
ser(pasado, tercera, singular, "was").
ser(pasado, primera, plural, "were").
ser(pasado, segunda, plural, "were").
ser(pasado, tercera, plural, "were").
ser(futuro, primera, singular, "will be").
ser(futuro, segunda, singular, "will be").
ser(futuro, tercera, singular, "will be").
ser(futuro, primera, plural, "will be").
ser(futuro, segunda, plural, "will be").
ser(futuro, tercera, plural, "will be").

play(presente, primera, singular, "play").
play(presente, segunda, singular, "play").
play(presente, tercera, singular, "plays").
play(presente, primera, plural, "play").
play(presente, segunda, plural, "play").
play(presente, tercera, plural, "play").
play(pasado, primera, singular, "played").
play(pasado, segunda, singular, "played").
play(pasado, tercera, singular, "played").
play(pasado, primera, plural, "played").
play(pasado, segunda, plural, "played").
play(pasado, tercera, plural, "played").
play(futuro, primera, singular, "will play").
play(futuro, segunda, singular, "will play").
play(futuro, tercera, singular, "will play").
play(futuro, primera, plural, "will play").
play(futuro, segunda, plural, "will play").
play(futuro, tercera, plural, "will play").

walk(presente, primera, singular, "walk").
walk(presente, segunda, singular, "walk").
walk(presente, tercera, singular, "walks").
walk(presente, primera, plural, "walk").
walk(presente, segunda, plural, "walk").
walk(presente, tercera, plural, "walk").
walk(pasado, primera, singular, "walked").
walk(pasado, segunda, singular, "walked").
walk(pasado, tercera, singular, "walked").
walk(pasado, primera, plural, "walked").
walk(pasado, segunda, plural, "walked").
walk(pasado, tercera, plural, "walked").
walk(futuro, primera, singular, "will walk").
walk(futuro, segunda, singular, "will walk").
walk(futuro, tercera, singular, "will walk").
walk(futuro, primera, plural, "will walk").
walk(futuro, segunda, plural, "will walk").
walk(futuro, tercera, plural, "will walk").

conjugar_verbo(Verbo, Tiempo,Persona, Numero, Conjugacion):-
    Verbo="play" ->
    Conjugacion="played";
    Verbo= "walk"
    Conjugacion="walked".

conjugar_verbo(Verbo, Tiempo, Persona, Numero, Conjugacion):-
  tiempo(Tiempo),
  persona(Persona),
  numero(Numero),
  (
    (Verbo="to be")->
    ser(Tiempo, Persona, Numero,R),
    Conjugacion=R;
    (Verbo="play")->
    play(Tiempo, Persona, Numero,R),
    Conjugacion=R;
    ( Verbo="walk")->
    walk(Tiempo, Persona, Numero,R),
    Conjugacion=R;
    Conjugacion = Verbo;
 ).


