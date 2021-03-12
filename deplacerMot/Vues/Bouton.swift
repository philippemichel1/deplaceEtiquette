//
//  bouton.swift
//  deplacerMot
//
//  Created by Philippe MICHEL on 10/03/2021.
//

import SwiftUI

struct Bouton: View {
     @Binding var actionBouton:Bool
    
    var body: some View {
        ZStack {
            Button(action: {
                withAnimation {
                    self.actionBouton.toggle()
                }
            }, label: {
                Text("Demarrer")
                    .font(.headline)
                    .frame(width: 100, height: 100, alignment: .center)
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .clipShape(Circle())
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 2, x: 2, y: 2)
                    .opacity(actionBouton ? 0 : 1)
                   
            }
            )
        }
        
    }
}

struct bouton_Previews: PreviewProvider {
    static var previews: some View {
        Bouton(actionBouton: .constant(false))
            .previewLayout(.sizeThatFits)
        
    }
}
