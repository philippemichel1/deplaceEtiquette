//
//  Mots.swift
//  deplacerMot
//
//  Created by Philippe MICHEL on 02/03/2021.
//

import SwiftUI
import SafariServices

struct Mots: View {
    let listeMots:[String] = ["solution","la", "recherche", "je"]
    let couleurMots:[Color] = [.black,.red,.blue,.gray]
    let compare = CGSize.zero
    var urlString = "https://www.titastus.com"
    @State private var deplacement:[CGSize] = [.zero,.zero,.zero,.zero]
    @State var montrerFenetreAPropos:Bool = false
    @State var montrerVueAuteur:Bool = false
    @State var montrerSafari:Bool = false
    
    var body: some View {
        ZStack {
            ForEach(0..<listeMots.count) {nbElement in
                Text(String(listeMots[nbElement]))
                    .font(.headline)
                    .padding(10)
                    .frame(width: 150, height: 30, alignment: .center)
                    .foregroundColor(.white)
                    .background(couleurMots[nbElement])
                    .cornerRadius(10)
                    .offset(deplacement[nbElement])
                    .gesture(
                        DragGesture()
                            // début du glissr changement de position
                            .onChanged {
                                // déplacement recupere la nouvelle position renvoyé par translation
                                self.deplacement[nbElement] = $0.translation
                            }
                            //fin de changement de position
                            .onEnded{ _ in
                                if deplacement[0] != compare {
                                    Timer.scheduledTimer(withTimeInterval: 1.3, repeats: false) { (timer) in
                                        self.montrerVueAuteur = true
                                    }
                                }
                            } // .onEnded
                        
                    )//DragGesture
            } //ForEach
            
        } // ZStack
        // montre la vue auteur
        if montrerVueAuteur {
            ZStack(alignment: .center) {
                FenetreMenu(largeurFenetre: 270, hauteurFenetre: 130)
                VStack {
                    Text("Philippe MICHEL")
                        .font(.headline)
                    HStack {
                        Image(Ressources.images.titastus.rawValue)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Button(action: {
                            montrerSafari.toggle()
                        }, label: {
                            Text("www.titastus.com")
                        }) .sheet(isPresented: $montrerSafari) {
                            ControleurSafari(url: URL(string: self.urlString)!)
                                .padding()
                        }
                    }
                }
            }
        }//
    }
}

struct Mots_Previews: PreviewProvider {
    static var previews: some View {
        Mots()
            .previewLayout(.sizeThatFits)
        
    }
}
