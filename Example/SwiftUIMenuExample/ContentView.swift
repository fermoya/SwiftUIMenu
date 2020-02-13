//
//  ContentView.swift
//  SwiftUIMenuExample
//
//  Created by Fernando Moya de Rivas on 13/02/2020.
//  Copyright © 2020 Fernando Moya de Rivas. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var index = 0
    @State var isMenuOpen = false
    @State var isPresented = false

    var body: some View {
        NavigationView {
            Menu(indexSelected: self.$index,
                     isOpen: self.$isMenuOpen,
                     menuItems: menuItems,
                     id: \.name,
                     menuItemRow: { Text($0.name) },
                     menuItemContent: { section in
                        ZStack {
                            Rectangle().fill(Color.white)
                            Text("This is section \(section)")
                        }.navigationBarItems(leading: self.menuButton)
                            .navigationBarTitle(Text("Section \(section + 1)"), displayMode: .inline)
                    })
                .style(.stretch)
                .overlappingRatio(0.8)
                .allowDragging()
                .shadeContent()
        }
    }
}

extension ContentView {

    private var closeButton: some View {
        Button(action: {
            withAnimation {
                self.isPresented.toggle()
            }
        }) {
            Image(systemName: "xmark")
                .padding(8)
        }
    }

    var menuButton: some View {
        Button(action: {
            withAnimation {
                self.isMenuOpen.toggle()
            }
        }) {
            Image(systemName: self.isMenuOpen ? "xmark" : "list.bullet")
        }
    }

}
