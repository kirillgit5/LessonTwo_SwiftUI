//
//  Extension + View.swift
//  LessonTwo_SwiftUI
//
//  Created by Кирилл Крамар on 23.07.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import Foundation
import SwiftUI

extension View {
    func bordered() -> some View {
        ModifiedContent(content: self, modifier: BorderViewModifier())
    }
    
    func frame(size: CGSize) -> some View {
        modifier(FrameForSize(size: size))
    }
    
    func createText(value: Double) -> String {
        "\(lround(value))"
    }
}
