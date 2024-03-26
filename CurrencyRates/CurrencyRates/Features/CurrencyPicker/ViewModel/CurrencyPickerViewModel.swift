//
//  CurrencyPickerViewModel.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import Combine

final class CurrencyPickerViewModel: CurrencyPickerViewModelType {
    
    @Published var state = CurrencyPickerViewState()
    @Published var action = CurrencyPickerViewAction()
    var router: CurrencyPickerRouter
    private var subscriptions = Set<AnyCancellable>()
    
    init(router: @escaping CurrencyPickerRouter) {
        self.router = router
        bindAction()
    }
}

private extension CurrencyPickerViewModel {
    func bindAction() {
        action
            .selectCurrencySubject
            .sink { [weak self] in
                self?.router(.currencyPicker)
            }
            .store(in: &subscriptions)
    }
}
