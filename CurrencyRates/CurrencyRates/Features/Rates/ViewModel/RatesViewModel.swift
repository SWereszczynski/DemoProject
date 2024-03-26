//
//  RatesViewModel.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import Foundation
import Combine

final class RatesViewModel: RatesViewModelType {
    
    @Published var state = RatesViewState()
    @Published var action = RatesViewAction()
    var router: RatesRouter
    private var subscriptions = Set<AnyCancellable>()
    
    init(router: @escaping RatesRouter) {
        self.router = router
        bindAction()
    }
}

private extension RatesViewModel {
    func bindAction() {
        action
            .addCurrencyPairSubject
            .sink { [weak self] _ in
                self?.router(.currencyPicker)
            }
            .store(in: &subscriptions)
    }
}
