# encoding: utf-8

Feature: Facturación de una linea

  Scenario: Cálculo de subtotal
    Given una compra de 1 elemento a 1 peso
    Then subtotal debe ser 1

  
