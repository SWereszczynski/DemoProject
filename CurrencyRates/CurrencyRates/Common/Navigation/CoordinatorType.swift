//
//  CoordinatorType.swift
//  CurrencyRates
//
//  Created by Szymon Wereszczynski on 26/03/2024.
//

import SwiftUI

protocol CoordinatorType {
    associatedtype FlowPath
    var path: NavigationPath { get }
    var fullScreenCover: FlowPath? { get }
    var sheetPresentedItem: FlowPath? { get }
}
