//
//  CurrencyPairFlowCoordinator.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import SwiftUI

struct CurrencyPickingFlowCoordinator: View, CoordinatorType {
    enum FlowPath: Hashable, FlowIdentifiable {
        case currencyPicker
    }
    
    @State var path = NavigationPath()
    @Environment(\.dismiss) private var dismiss
    @State var sheetPresentedItem: FlowPath?
    @State var fullScreenCover: FlowPath?
    
    var body: some View {
        NavigationStack(path: $path) {
            CurrencyPickerViewBuilder.build { path in
                switch path {
                case .currencyPicker:
                    self.path.append(FlowPath.currencyPicker)
                }
            }
            .navigationDestination(for: FlowPath.self, destination: linkDestination)
        }
    }
    
    @ViewBuilder
    func linkDestination(link: FlowPath) -> some View {
        CurrencyPickerViewBuilder.build { path in
            switch path {
            case .currencyPicker:
                dismiss()
            }
        }
    }
}
