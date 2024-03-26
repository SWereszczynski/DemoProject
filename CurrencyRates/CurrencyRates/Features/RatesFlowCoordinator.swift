//
//  RatesFlowCoordinator.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import Combine
import SwiftUI

struct RatesFlowCoordinator: View, CoordinatorType {
    enum FlowPath: Hashable, FlowIdentifiable {
        case currencyPicker
    }
    
    @State var path = NavigationPath()
    @Environment(\.dismiss) private var dismiss
    @State var sheetPresentedItem: FlowPath?
    @State var fullScreenCover: FlowPath?
    
    var body: some View {
        NavigationStack(path: $path) {
            RatesViewBuilder.build { path in
                switch path {
                case .currencyPicker:
                    sheetPresentedItem = .currencyPicker
                }
            }
        }
        .sheet(item: $sheetPresentedItem, content: sheetContent)
    }
    
    @ViewBuilder
    private func sheetContent(item: FlowPath) -> some View {
        switch item {
        case .currencyPicker:
            CurrencyPickingFlowCoordinator()
        }
    }
}
