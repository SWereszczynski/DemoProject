//
//  RatesView.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import SwiftUI

struct RatesView<ViewModel: RatesViewModelType>: View {
    
    @ObservedObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 20) {
            headerView
            HStack {
                Button("Add currency pair") {
                    viewModel.action.addCurrencyPairSubject.send(())
                }
                .buttonStyle(.borderless)
                Spacer()
            }.padding()
            Spacer()
        }
    }
}

private extension RatesView {
    
    var headerView: some View {
        VStack(spacing: 4) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Currency rates")
        }
    }
}

struct RatesView_Previews: PreviewProvider {
    static var previews: some View {
        RatesView(viewModel: RatesViewModel(router: { _ in }))
    }
}
