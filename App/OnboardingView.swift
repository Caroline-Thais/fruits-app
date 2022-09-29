//
//  OnboardingView.swift
//  Fructus
//
//  Created by Thaís Caroline Silva on 28/09/22.
//

import SwiftUI

struct OnboardingView: View {
    //PROPERTIES:
    var fruits: [Fruit] = fruitsData
    //BODY:
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//END OF LOOP
        }//END TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//PREVIEW:
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
