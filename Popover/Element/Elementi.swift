//
//  Elementi.swift
//  Popover
//
//  Created by Michele Manniello on 22/02/21.
//

import Foundation
import SwiftUI
struct ArrowShape: Shape {
    func path(in rect: CGRect) -> Path {
        let center = rect.width/2
        return Path{ path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            
            path.addLine(to: CGPoint(x: center - 15, y: rect.height))
            path.addLine(to: CGPoint(x: center , y: rect.height))
            path.addLine(to: CGPoint(x: center + 15, y: rect.height))
            
            path.addLine(to: CGPoint(x: 0, y: rect.height))
        }
    }
}
