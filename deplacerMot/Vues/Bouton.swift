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
                    .frame(width: 100, height: 100, alignment: .center)
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .clipShape(Circle())
                    //.scaleEffect(actionBouton ? 0 : 1)
                    .opacity(actionBouton ? 0 : 1)
                   // .isHidden(actionBouton )
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
