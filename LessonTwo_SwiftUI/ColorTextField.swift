//
//  ColorTextField.swift
//  LessonTwo_SwiftUI
//
//  Created by Кирилл Крамар on 23.07.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct ColorTextField: UIViewRepresentable {
    @Binding var text: String
    var keyType: UIKeyboardType
    func makeUIView(context: Context) -> UITextField {
        let textfield = UITextField()
        textfield.keyboardType = keyType
        let toolBar = UIToolbar()
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                       target: nil,
                                       action: nil)
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: .done,
                                         target: self,
                                         action: #selector(textfield.doneButtonTapped(button:)))
        toolBar.items = [flexible,doneButton]
        toolBar.sizeToFit()
        textfield.inputAccessoryView = toolBar
        return textfield
    }
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
    }
}

extension  UITextField {
    @objc func doneButtonTapped(button:UIBarButtonItem) -> Void {
        self.resignFirstResponder()
    }
    
}
