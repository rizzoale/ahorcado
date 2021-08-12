Feature: Ahorcado tester

    Scenario: Titulo de la aplicacion
    When inicio la aplicacion
    Then el titulo es "Ahorcado"

    Scenario: Mostrar tamaño palabra oculta
    When inicio la aplicacion
    Then la incognita es "Adivina la palabra: _"

    Scenario: Adivinar letra incorrecta
    When inicio la aplicacion
    And ingreso "A"
    Then en las letras incorrectas esta "A - :("