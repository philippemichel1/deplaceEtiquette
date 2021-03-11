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
        
        Button(action: {
            withAnimation {
                self.actionBouton.toggle()
            }
            
        }, label: {
            Text("Demarré")
                .frame(width: 100, height: 100, alignment: .center)
                .background(Color.yellow)
                .foregroundColor(.black)
                .clipShape(Circle())
                .scaleEffect(actionBouton ? 0 : 1)
        }
        )
        
    }
    
}

struct bouton_Previews: PreviewProvider {
    static var previews: some View {
        Bouton(actionBouton: .constant(false))
            .previewLayout(.sizeThatFits)
        
    }
}
