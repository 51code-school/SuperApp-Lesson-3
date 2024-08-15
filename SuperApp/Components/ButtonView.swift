//
//  ButtonView.swift
//  SuperApp
//
//  Created by Anton Hoang on 26/05/2024.
//  Copyright © 2024 碼願科技有限公司. All rights reserved.

import SwiftUI

struct ButtonView: View {
    
    @State private var isButtonSelected: Bool = false
    @State private var counter = 0
    
    let image: ImageName
    let primaryColor: Color
    let selectedColor: Color

    var body: some View {
        Button(action: {
            isButtonSelected.toggle()

            if isButtonSelected {
                counter += 1
            } else {
                counter -= 1
            }
        }) {
            VStack {
                Image(systemName: image.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(isButtonSelected ? selectedColor : primaryColor)

                Text("\(counter)")
                    .foregroundColor(.white)
            }
        }
    }
}

struct Demo: View {
    var body: some View {
        ZStack {
            Color.black
            ButtonView(image: .bookmark, primaryColor: .white, selectedColor: .yellow)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Demo()
}
