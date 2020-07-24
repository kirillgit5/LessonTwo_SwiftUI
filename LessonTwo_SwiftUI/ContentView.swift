//
//  ContentView.swift
//  LessonTwo_SwiftUI
//
//  Created by Кирилл Крамар on 23.07.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // MARK : State Property
    @State private var redColor = 155.0
    @State private var blueColor = 155.0
    @State private var greenColor = 155.0
    
    //MARK : Private Property
    private var currentColor: UIColor {
        UIColor(red: CGFloat(redColor/255),
                green: CGFloat(greenColor/255),
                blue: CGFloat(blueColor/255),
                alpha: 1)
    }
    
    var body: some View {
        ZStack {
            Color(.systemBlue).edgesIgnoringSafeArea(.all)
            VStack {
                ColorView(color: currentColor,
                          size: CGSize(width: 280, height: 140))
                SliderView(value: $redColor,
                           text: createText(value: redColor),
                           color: .red)
                SliderView(value: $greenColor,
                           text: createText(value: blueColor),
                           color: .green)
                SliderView(value: $blueColor,
                           text: createText(value: greenColor),
                           color: .blue)
                Spacer()
            }
            .padding()
            
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK : Private Methods

