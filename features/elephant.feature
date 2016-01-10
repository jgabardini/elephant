# encoding: utf-8

Feature: Facturación de una linea

  Scenario: Cálculo de subtotal
    Given una compra de 1 elemento a 1 peso
    Then subtotal debe ser 1

  Scenario Outline: Cálculo de porcentaje descuento
    Given una compra de <cantidad> elemento a <precio> peso
    Then descuento debe ser <porcentaje> %

    Examples:
    |cantidad|precio|porcentaje|
    |1|1|0|
