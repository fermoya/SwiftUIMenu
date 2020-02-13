//
//  Menu+Buildable.swift
//  CustomNavigations
//
//  Created by Fernando Moya de Rivas on 07/02/2020.
//  Copyright © 2020 Fernando Moya de Rivas. All rights reserved.
//

import CoreGraphics

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
    public func overlappingRatio(_ value: CGFloat) -> Self {
        mutating(keyPath: \.overlappingRatio, value: value)
    }

    /// Adds a `DragGesture` to swipe the menu open / close
    public func allowDragging(_ value: Bool = true) -> Self {
        mutating(keyPath: \.allowDragging, value: value)
    }

    /// Removes the `DragGesture` used to swipe the menu open / close
    public func disableDragging() -> Self {
        mutating(keyPath: \.allowDragging, value: false)
    }

}
