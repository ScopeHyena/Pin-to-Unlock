//
// MainView.swift
//
// 12.03 2023 by Scope.H
//
//

import SwiftUI

struct MainView: View {
    @State var textInput = ""
    var body: some View {
        SecureField("PIN Here", text: $textInput)
        Button("Submit") {
            
        }
    }
}

#Preview {
    MainView()
}
