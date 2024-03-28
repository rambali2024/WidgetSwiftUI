//
//  ContentView.swift
//  WidgetSwiftUi
//
//  Created by Rambali Kumar on 28/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let superHeroArray = [superMan,ironMan,batMan]
        
        VStack {
            ForEach(superHeroArray){ hero in
                HeroView(hero: hero)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
