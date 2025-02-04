//
//  BogusView.swift
//  HullNext
//
//  Created by Martin Davy on 1/30/25.
//

import SwiftUI

struct BogusView: View {
    
    @Environment(BogusViewModel.self) var bogusvm
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    BogusView()
}
