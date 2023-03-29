//
//  File.swift
//  Ejercicio4Parte2
//
//  Created by Harold Padilla on 21/03/23.
//

import UIKit

class ConvertirTemperaturaViewController: UIViewController {
    
    var convertirTemperaturaDominio: ConvertirTemperaturaDominio!
    var convertirTemperaturaRepositorio: ConvertirTemperaturaRepositorio!
    
    override func viewDidLoad() {
        inicializador()
    }
    
    private func inicializador() {
        convertirTemperaturaRepositorio = ConvertirTemperaturaRepositorioLocal()
        convertirTemperaturaDominio = ConvertirTemperaturaDominio(convertirTemperaturaRepositorio: convertirTemperaturaRepositorio)
    }
    
    //MARK: Datos para covertir de Fahrenheit a Celsius
    @IBOutlet weak var celsiusTextView: UITextField!
    @IBOutlet weak var resultadoCelsiusLabel: UILabel!
    @IBAction func convertirCelsiusButtoPressed(_ sender: Any) {
        let temperaturaCelsius = celsiusTextView.text ?? String()
        let resultado = convertirTemperaturaDominio.convertirCelsiusAFahrenheit(temperaturaCelsius)
       
        resultadoCelsiusLabel.text = resultado
        resultadoCelsiusLabel.isHidden = false
    }
    

    
    //MARK: Datos para covertir de Fahrenheit a Celsius
    @IBOutlet weak var fahrenheitTextView: UITextField!
    @IBOutlet weak var resultadoFahrenheitLabel: UILabel!
    @IBAction func covertirFahrenheitButtonPressed(_ sender: Any) {
        let temperaturaFahrenheit = fahrenheitTextView.text ?? String()
        let resultado = convertirTemperaturaDominio.convertirFahrenheitACelsius(temperaturaFahrenheit)
       
        resultadoFahrenheitLabel.text = resultado
        resultadoFahrenheitLabel.isHidden = false
    }
}
