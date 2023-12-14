//
//  Extensions.swift
//  Trivia
//
//  Created by Luke J. Sivulka on 11/30/23.
//

import Foundation
import SwiftUI


extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color(.black))
    }
}
