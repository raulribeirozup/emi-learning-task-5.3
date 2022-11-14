//
//  Contador.swift
//  LearningTask-5.3
//
//  Created by Raul Ribeiro on 14/11/22.
//

import Foundation

struct Contador {
    private(set)var numeroAtual = 0
    private(set)var padraoIncremento = 1
    
    mutating func reset() {
        self = Contador()
    }
    
    mutating func incrementa() {
        numeroAtual += padraoIncremento
    }
    
    mutating func decrementa() {
        numeroAtual -= padraoIncremento
    }
    
    mutating func padraoIncrementoMudou(_ padraoIncremento: Int) {
        self.padraoIncremento = padraoIncremento
    }
}
