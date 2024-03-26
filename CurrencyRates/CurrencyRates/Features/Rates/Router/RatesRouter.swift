//
//  RatesRouter.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

typealias RatesRouter = (RatesNavigationPath) -> Void

enum RatesNavigationPath {
    case currencyPicker
}
