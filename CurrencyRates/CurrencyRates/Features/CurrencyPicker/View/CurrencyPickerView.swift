//
//  CurrencyPickerView.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import SwiftUI

struct CurrencyPickerView<ViewModel: CurrencyPickerViewModelType>: View {
    
    @ObservedObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text("CurrencyPickerView")
        Button("Pick currency") {
            viewModel.action.selectCurrencySubject.send(())
        }
    }
    
}
