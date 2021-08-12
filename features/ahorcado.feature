Feature: Ahorcado tester

    Scenario: Titulo de la aplicacion
    When inicio la aplicacion
    Then el titulo es "Ahorcado"

    Scenario: Mostrar tamaño palabra oculta
    When inicio la aplicacion
    Then la incognita es "Adivina la palabra: _"