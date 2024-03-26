//
//  RatesViewBuilder.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import SwiftUI

struct RatesViewBuilder {
    static func build(router: @escaping RatesRouter) -> some View {
        let viewModel = RatesViewModel(router: router)
        return RatesView(viewModel: viewModel)
    }
}
