//
//  ExperienceView.swift
//  iCV
//
//  Created by Léo Cormoreche on 07/02/2023.
//

import SwiftUI

struct ExperienceView: View {
    var body: some View {
        VStack(){
            Image(systemName: "graduationcap")
                .font(.system(size: 80))
                .foregroundColor(Color.blue)
            Text("Formation et experience")
                .font(.system(size: 40, weight: .bold))
                .multilineTextAlignment(.center)
            Text("Indiquez comment vous voulez transférer les formations et experiences vers cet iPhone")
                .multilineTextAlignment(.center)
                .padding(.top, 7)
            
            List(){
                NavigationLink(destination: Text("Hello")){
                    Text("Restaurer à partir d'un CV")
                }
                NavigationLink(destination: Text("Hello")){
                    Text("Restaurer via un profil LinkedIn")
                }
                NavigationLink(destination: Text("Hello")){
                    Text("Restaurer à partir d'iCloud")
                }
                NavigationLink(destination: Text("Hello")){
                    Text("Ne pas transférer des formations et expériences")
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView()
    }
}
