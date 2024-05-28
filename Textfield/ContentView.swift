//
//  ContentView.swift
//  Textfield
//
//  Created by mohammed souiden on 28/05/2024.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var fieldIsFocused: Bool
    @State private var text: String = """
1-Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text
2-Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text
3-Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text
4-Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text
5-Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text
6-Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text
7-Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text
8-Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text
9-Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text Long Text
"""

    var body: some View {
        ScrollView {
            TextField("Example", text: self.$text, axis: .vertical)
                .scrollDisabled(self.fieldIsFocused)
                .focused(self.$fieldIsFocused)
        }.scrollDismissesKeyboard(.interactively)
        .padding()
    }
}

#Preview {
    ContentView()
}
