//
//  SliderView.swift
//  LessonTwo_SwiftUI
//
//  Created by Кирилл Крамар on 23.07.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @State var text: String
    var color: UIColor
    @State private var showAlert = false
    var body: some View {
        HStack {
            Text(createText(value: value))
                .frame(size: CGSize(width: 40, height: 20))
                .foregroundColor(Color(.white))
            Slider(value: $value, in: 0...255,step: 1)
                .accentColor(Color(color))
            TextField("", text: $text) {
                if let value = Double(self.text), (0.0...255.0).contains(value) {
                    self.value = value
                } else {
                    self.showAlert = true
                    self.text = self.createText(value: self.value)
                }
            }
            .background(Color(.white))
            .frame(size: CGSize(width: 40, height: 20))
            .cornerRadius(4)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Внимание"),
                      message: Text("Допустимы только цифры"))
            }
        }
        .padding(.horizontal)
    }
}



