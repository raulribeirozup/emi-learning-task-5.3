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
        contador?.padraoIncrementoMudou(Int(sender.value))
    }
    
    
    @IBAction func decrementoPressionado(_ sender: Any) {
        contador?.decrementa()
    }
    
    
    @IBAction func incrementoPressionado(_ sender: Any) {
        contador?.incrementa()
    }
    
    
    @IBAction func resetPressionado(_ sender: UIButton) {
        contador?.reset()
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

