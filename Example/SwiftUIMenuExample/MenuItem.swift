//
//  MenuItem.swift
//  CustomNavigations
//
//  Created by Fernando Moya de Rivas on 16/12/2019.
//  Copyright © 2019 Fernando Moya de Rivas. All rights reserved.
//

import Foundation
import SwiftUI

struct MenuItem: Equatable {
    
    var name: String
    var color: Color
}

let menuItems: [MenuItem] = [
    MenuItem(name: "Section 1", color: .blue),
    MenuItem(name: "Section 2", color: .red),
    MenuItem(name: "Section 3", color: .green),
    MenuItem(name: "Section 4", color: .orange),
    MenuItem(name: "Section 5", color: .yellow),
    MenuItem(name: "Section 6", color: .purple)
]
