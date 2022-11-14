//
//  Contador.swift
//  LearningTask-5.3
//
//  Created by Raul Ribeiro on 14/11/22.
//

import Foundation

struct Contador {
    let numeroAtual: Int
    let padraoIncremento: Int
    
    init(_ numeroAtual: Int, _ padraoIncremento: Int) {
        self.numeroAtual = numeroAtual
        self.padraoIncremento = padraoIncremento
    }
    
    mutating func muda(numeroAtual: Int, padraoIncremento: Int) {
        self = Contador(numeroAtual, padraoIncremento)
    }
    
    func incrementa() -> Int {
        return numeroAtual + padraoIncremento
    }
    
    func decrementa() -> Int {
        return numeroAtual - padraoIncremento
    }
}
