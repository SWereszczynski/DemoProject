//
//  CurrencyRatesApp.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import SwiftUI

@main
struct CurrencyRatesApp: App {
    var body: some Scene {
        WindowGroup {
            RatesFlowCoordinator()
        }
    }
}
