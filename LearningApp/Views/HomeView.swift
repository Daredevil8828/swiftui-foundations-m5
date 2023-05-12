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
       
        NavigationStack {
            VStack(alignment: .leading) {
                Text("What do you want to do today?")
                    .padding(.leading, 20)
                
                ScrollView {
                    
                    LazyVStack {
                        
                        ForEach(model.modules) { module in
                            
                            
                            VStack(spacing: 20) {
                                
                                
                                NavigationLink {
                                    
                                    ContentView()
                                        .onAppear(perform: {
                                            model.beginModule(module.id)
                                        })
                                } label: {
                                    HomeViewRow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                                    
                                }

                                
                               
                                
                                
                                
                                HomeViewRow(image: module.test.image, title: " \(module.category) Test", description: module.test.description, count: "\(module.test.questions.count) Questions", time: module.test.time)
                            }
                        }
                    }
                    .accentColor(.black)
                    .padding()
                }
            }
            .navigationTitle("Get started")
            .navigationViewStyle(.stack)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
