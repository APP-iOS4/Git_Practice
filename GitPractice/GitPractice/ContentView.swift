//
//  ContentView.swift
//  GitPractice
//
//  Created by 양호준 on 2023/06/24.
//

import SwiftUI

struct ContentView: View {
    private var passKey: String {
        guard let passKey = Bundle.main.infoDictionary?["PassKey"] as? String else {
            return ""
        }
        
        return passKey
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text("패스키: \(passKey)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
