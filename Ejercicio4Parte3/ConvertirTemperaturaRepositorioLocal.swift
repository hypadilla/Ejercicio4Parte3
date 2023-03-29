//
//  ConvertirTemperaturaRepositorioLocal.swift
//  Ejercicio4Parte2
//
//  Created by Harold Padilla on 21/03/23.
//

import Foundation

class ConvertirTemperaturaRepositorioLocal: ConvertirTemperaturaRepositorio{
    func convertirFahrenheitACelsius(_ fahrenheit: Double) -> Double {
        let celsius = (fahrenheit - 32) * 5/9
        return celsius
    }
    
    func convertirCelsiusAFahrenheit(_ celsius: Double) -> Double {
        let fahrenheit = (celsius * 9/5) + 32
        return fahrenheit
    }
}
