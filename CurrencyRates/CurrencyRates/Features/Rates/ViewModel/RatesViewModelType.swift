//
//  RatesViewModelType.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import Combine

protocol RatesViewModelType: ObservableObject {
    var state: RatesViewState { get }
    var action: RatesViewAction { get }
    var router: RatesRouter { get }
}

struct RatesViewState {
    var currencyText = ""
}

struct RatesViewAction {
    let addCurrencyPairSubject = PassthroughSubject<Void, Never>()
}
