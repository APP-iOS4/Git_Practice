//
//  ContentView.swift
//  GitPractice
//
//  Created by 양호준 on 2023/06/24.
//

import SwiftUI

struct ContentView: View {
    private var secretKey: String {
        guard let secretKey = Bundle.main.infoDictionary?["SecretKey"] as? String else {
            return ""
        }
        
        return secretKey
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text("")
            Text("시크릿 키: \(secretKey)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
