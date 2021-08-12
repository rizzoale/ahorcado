Feature: Ahorcado tester

    Scenario: Titulo de la aplicacion
    When inicio la aplicacion
    Then el titulo es "Ahorcado"

    Scenario: Mostrar tamaño palabra oculta
    When inicio la aplicacion
    Then la incognita es "Adivina la palabra: ----"

    Scenario: Adivinar letra incorrecta
    When inicio la aplicacion
    And ingreso "B"
    Then en las letras incorrectas esta "B - :("
    And la incognita es "Adivina la palabra: ----"

    Scenario: Adivinar letra correcta
    When inicio la aplicacion
    And ingreso "A"
    Then en las letras incorrectas esta "A - :)"
    And la incognita es "Adivina la palabra: -A-A"

    Scenario: Adivinar letra palabra
    When inicio la aplicacion
    And ingreso "A"
    And ingreso "C"
    And ingreso "S"
    Then la incognita es "Adivina la palabra: CASA"