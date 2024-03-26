//
//  CurrencyPickerViewModelType.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import Combine

protocol CurrencyPickerViewModelType: ObservableObject {
    var state: CurrencyPickerViewState { get }
    var action: CurrencyPickerViewAction { get }
    var router: CurrencyPickerRouter { get }
}

struct CurrencyPickerViewState {
    var currencyText = ""
}

struct CurrencyPickerViewAction {
    let selectCurrencySubject = PassthroughSubject<Void, Never>()
}
