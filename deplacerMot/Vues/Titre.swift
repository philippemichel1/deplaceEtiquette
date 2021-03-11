//
//  Titre.swift
//  deplacerMot
//
//  Created by Philippe MICHEL on 11/03/2021.
//

import SwiftUI

struct Titre: View {
    var body: some View {
        Text("Besoin de vous !")
            .padding(10)
            .font(.largeTitle)
            .foregroundColor(.black)
            .background(Color.orange)
            .cornerRadius(5)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 2, x: 2, y: 2)
    }
}

struct Titre_Previews: PreviewProvider {
    static var previews: some View {
        Titre()
    }
}
