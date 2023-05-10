//
//  ContentView.swift
//  LearningApp
//
//  Created by Work on 10.05.23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model: ContentModel
    
    
    var body: some View {
        
        
        
        Text("Hi")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
