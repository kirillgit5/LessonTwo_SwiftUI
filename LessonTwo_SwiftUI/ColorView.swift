//
//  ColorView.swift
//  LessonTwo_SwiftUI
//
//  Created by Кирилл Крамар on 23.07.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    var color: UIColor
    let size: CGSize
    var body: some View {
        Color(color)
            .bordered()
            .frame(size: size)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .white,size: CGSize(width: 0, height: 0))
    }
}

struct BorderViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white,
                                                               lineWidth: 5))
        
    }
}

struct FrameForSize: ViewModifier {
    let size: CGSize
    func body(content: Content) -> some View {
        content.frame(width: size.width, height: size.height)
    }
}



