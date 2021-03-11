//
//  ContentView.swift
//  deplacerMot
//
//  Created by Philippe MICHEL on 02/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State var ouvrirVue:Bool = false
    
    var body: some View {
        VStack {
            Titre()
            Spacer()
            Bouton(actionBouton: $ouvrirVue)
            Spacer()
        }
        .sheet(isPresented: $ouvrirVue) {
            Mots()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
