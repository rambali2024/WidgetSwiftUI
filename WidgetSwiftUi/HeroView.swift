//
//  HeroView.swift
//  WidgetSwiftUi
//
//  Created by Rambali Kumar on 29/03/24.
//

import SwiftUI

struct HeroView: View {
    
    let hero: Superhero
    
    var body: some View {
        HStack{
            CircularImageView(image: Image(hero.image))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .center)
                .padding()
            Spacer()
            VStack{
                Text(hero.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.purple)
                
                Text(hero.realName)
                    .fontWeight(.bold)
            }.padding()
            Spacer()
        }.frame(width: UIScreen.main.bounds.width,alignment: .center)
        
            
    }
}

#Preview {
    HeroView(hero: batMan)
}
