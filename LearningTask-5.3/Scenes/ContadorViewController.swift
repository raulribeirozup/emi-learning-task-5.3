//
//  ViewController.swift
//  LearningTask-5.3
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class ContadorViewController: UIViewController {

    
    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet weak var padraoIncrementoLabel: UILabel!
    @IBOutlet weak var padraoIncrementoStepper: UIStepper!

    var contador: Contador? {
        didSet {
            guard isViewLoaded, let contador = contador else { return }
            atualizaView(para: contador)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contador = contador {
            atualizaView(para: contador)
        }
    }

    @IBAction func padraoIncrementoMudou(_ sender: UIStepper) {
        let valor = Int(sender.value)
        
        if let contadorLabel = contadorLabel.text, !contadorLabel.isEmpty, let valorContador = Int(contadorLabel) {
            contador?.muda(numeroAtual: valorContador, padraoIncremento: valor)
        }
        
    }
    
    
    @IBAction func decrementoPressionado(_ sender: Any) {
        if let valorContador = contador?.decrementa() {
            contador?.muda(numeroAtual: valorContador, padraoIncremento: Int(padraoIncrementoStepper.value))
        }
    }
    
    
    @IBAction func incrementoPressionado(_ sender: Any) {
        if let valorContador = contador?.incrementa() {
            contador?.muda(numeroAtual: valorContador, padraoIncremento: Int(padraoIncrementoStepper.value))
        }
    }
    
    
    @IBAction func resetPressionado(_ sender: UIButton) {
        contador?.muda(numeroAtual: 0, padraoIncremento: 1)
    }
    
    func atualizaView(para contador: Contador) {
        if contador.numeroAtual < 0 {
            self.view.backgroundColor = UIColor(named: "Almond")
        } else {
            self.view.backgroundColor = UIColor(named: "Satin Linen")
        }
        
        contadorLabel.text = String(describing: contador.numeroAtual)
        
        padraoIncrementoLabel.text = String(describing: contador.padraoIncremento)
        padraoIncrementoStepper.value = Double(contador.padraoIncremento)
    }
}

