//
//  Menu+Buildable.swift
//  CustomNavigations
//
//  Created by Fernando Moya de Rivas on 07/02/2020.
//  Copyright © 2020 Fernando Moya de Rivas. All rights reserved.
//

import SwiftUI

extension Menu: Buildable {

    /// Switches the way `Menu` slides the drawer in the screen.
    public func style(_ value: Style) -> Self {
        mutating(keyPath: \.style, value: value)
    }

    /// Switches the position of the drawer (left or right)
    public func alignment(_ value: Alignment) -> Self {
        mutating(keyPath: \.alignment, value: value)
    }

    /// Shades the content depending on the menu drawer state
    public func shadeContent(_ value: Bool = true) -> Self {
        mutating(keyPath: \.shouldShadeContent, value: value)
    }

    /// Sets the drawer size proportion relative to the size of the menu
    public func revealRatio(_ value: CGFloat) -> Self {
        mutating(keyPath: \.revealRatio, value: value)
    }

    /// Adds a `DragGesture` to swipe the menu open / close
    public func allowDragging(_ value: Bool = true) -> Self {
        mutating(keyPath: \.allowsDragging, value: value)
    }

    /// Removes the `DragGesture` used to swipe the menu open / close
    public func disableDragging() -> Self {
        mutating(keyPath: \.allowsDragging, value: false)
    }

    /// Adds a header to the menu drawer
    public func header<Header: View>(@ViewBuilder header: @escaping () -> Header) -> Self {
        let header = { AnyView(header()) }
        return mutating(keyPath: \.header, value: header)
    }

    /// Adds a  footer to the menu drawer
    public func footer<Footer: View>(@ViewBuilder footer: @escaping () -> Footer) -> Self {
        let footer = { AnyView(footer()) }
        return mutating(keyPath: \.footer, value: footer)
    }

    /// Adds background to menu list rows
    public func menuRowBackground<Background: View>(_ value: Background) -> Self {
        mutating(keyPath: \.rowBackground, value: AnyView(value))
    }
    
    public func edgesIgnoringSafeArea(_ edges: Edge.Set) -> Self {
        mutating(keyPath: \.edges, value: edges)
            .mutating(keyPath: \.shouldIgnoreEdges, value: true)
    }

}
