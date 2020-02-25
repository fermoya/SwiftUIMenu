//
//  ProfileHeader.swift
//  SwiftUIMenuExample
//
//  Created by Fernando Moya de Rivas on 21/02/2020.
//  Copyright © 2020 Fernando Moya de Rivas. All rights reserved.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        HStack {
            Image("profile")
                .resizable()
                .frame(size: CGSize(width: 60, height: 60))
            Spacer()
            VStack(alignment: .trailing) {
                Text("Name and surname")
                Text("email@example.com")
                    .font(.system(size: 12))
                    .italic()
            }
        }
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}
