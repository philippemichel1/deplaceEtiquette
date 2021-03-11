//
//  ContentView.swift
//  deplacerMot
//
//  Created by Philippe MICHEL on 02/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State var actionAnimation:Bool = false
    
    var body: some View {
        VStack {
            Titre()
            Bouton(actionBouton: $actionAnimation)
        }
        if actionAnimation {
            Mots()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
