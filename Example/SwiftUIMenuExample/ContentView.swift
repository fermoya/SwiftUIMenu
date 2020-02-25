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
    var isMenuOnLeft = true

    var body: some View {
        NavigationView {
            Menu(indexSelected: self.$index,
                     isOpen: self.$isMenuOpen,
                     menuItems: menuItems,
                     id: \.name,
                     menuItemRow: {
                        Text($0.name)
                            .foregroundColor($0.color)
                     },
                     menuItemContent: { section in
                        ZStack {
                            Rectangle().fill(menuItems[self.index].color)
                            Text("Welcome to ").font(.system(size: 20))
                                + Text(menuItems[self.index].name).font(.system(size: 30)).bold().italic()
                        }.navigationBarItems(leading: self.isMenuOnLeft ? AnyView(self.menuButton) : AnyView(EmptyView()),
                                             trailing: self.isMenuOnLeft ? AnyView(EmptyView()) : AnyView(self.menuButton))
                            .navigationBarTitle(Text("SwiftUIMenu"), displayMode: .inline)
                    })
                .style(.overlap)
                .revealRatio(0.8)
                .header(header: {
                    ProfileHeader()
                })
                .alignment(isMenuOnLeft ? .left : .right)
                .footer(footer: {
                    Text("Copyright © 2020 Fernando Moya de Rivas. All rights reserved.")
                })
                .shadeContent()
        }
    }
}

extension ContentView {

    var menuButton: some View {
        Button(action: {
            withAnimation {
                self.isMenuOpen.toggle()
            }
        }) {
            Image(systemName: self.isMenuOpen ? "xmark" : "list.bullet")
                .padding()
        }
    }

}
