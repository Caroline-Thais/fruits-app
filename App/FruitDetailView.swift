//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Thaís Caroline Silva on 29/09/22.
//

import SwiftUI

struct FruitDetailView: View {
    
    //PROPERTIES:
    var fruit: Fruit
    
    //BODY:
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack (alignment: .leading, spacing: 20) {
                    //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                    //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                    //NUTRIENTS
                        
                    //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                    //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                    //LINK
                    SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//END OF VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)//this is for ipad
                }//END OF VSTACK
            }//END OF SCROLL
            .edgesIgnoringSafeArea(.top)
        }//END OF NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())//to iPad
    }
}

//PREVIEW:
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
