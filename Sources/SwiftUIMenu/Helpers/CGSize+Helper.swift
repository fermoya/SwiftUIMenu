//
//  CGSize+Helper.swift
//  CustomNavigations
//
//  Created by Fernando Moya de Rivas on 07/02/2020.
//  Copyright © 2020 Fernando Moya de Rivas. All rights reserved.
//

import CoreGraphics

extension CGSize {

    static var identity: CGSize { CGSize(width: 1, height: 1) }

    static func + (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width + rhs.width,
               height: lhs.height + rhs.height)
    }

    static func - (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width - rhs.width,
               height: lhs.height - rhs.height)
    }

    static func * (lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width * rhs.width,
               height: lhs.height * rhs.height)
    }

}
