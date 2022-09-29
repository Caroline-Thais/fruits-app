//
//  ContentView.swift
//  Fructus
//
//  Created by Thaís Caroline Silva on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    
    //PROPERTIES
    
    @State private var isShowingShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {
                    item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }//END OF BUTTON
                    .sheet(isPresented: $isShowingShowingSettings) {
                        SettingsView()
                    }
            )
        }//END OF NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())//to iPad
    }
}

//PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
