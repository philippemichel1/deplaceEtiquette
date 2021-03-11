//
//  ControleurSafari.swift
//  deplacerMot
//
//  Created by Philippe MICHEL on 11/03/2021.
//

import Foundation
import Foundation
import SafariServices
import SwiftUI

struct ControleurSafari: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<ControleurSafari>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<ControleurSafari>) {

    }
}
