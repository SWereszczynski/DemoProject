//
//  FlowIdentifiable.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

protocol FlowIdentifiable: Identifiable {
    var id: String { get }
}

extension FlowIdentifiable {
    var id: String {
        String(describing: self)
    }
}
