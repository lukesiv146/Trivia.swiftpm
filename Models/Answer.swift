//
//  File.swift
//  
//
//  Created by Luke J. Sivulka on 11/30/23.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
