//
//  CurrencyPickerViewBuilder.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import SwiftUI

struct CurrencyPickerViewBuilder {
    static func build(router: @escaping CurrencyPickerRouter) -> some View {
        let viewModel = CurrencyPickerViewModel(router: router)
        return CurrencyPickerView(viewModel: viewModel)
    }
}
