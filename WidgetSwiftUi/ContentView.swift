//
//  ContentView.swift
//  WidgetSwiftUi
//
//  Created by Rambali Kumar on 28/03/24.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    @AppStorage("hero", store: UserDefaults(suiteName: "group.izooto.WidgetSwiftUi"))
    var heroData: Data = Data()
    
    var body: some View {
        
        let superHeroArray = [superMan,ironMan,batMan]
        
        VStack {
            ForEach(superHeroArray){ hero in
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                }
            }
        }
    }
    
    func saveToDefaults(hero:Superhero){
       // print(hero.name)
        if let heroData = try? JSONEncoder().encode(hero){
            self.heroData = heroData
            print(hero.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
        }
    }
    
}

#Preview {
    ContentView()
}
