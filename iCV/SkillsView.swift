//
//  SkillsView.swift
//  iCV
//
//  Created by Léo Cormoreche on 07/02/2023.
//

import SwiftUI

struct SkillsView: View {
    
    @State private var skill: String = ""
    
    var body: some View {
        VStack(){
            Image(systemName: "bolt")
                .font(.system(size: 80))
                .foregroundColor(Color.blue)
            
            Text("Choisir une compétence")
                .font(.system(size: 40, weight: .bold))
                .multilineTextAlignment(.center)
            
            
            List(){
                HStack(){
                    Button("Adobe - Photoshop"){
                        skill = "Adobe - Photoshop"
                    }
                    if(skill == "Adobe - Photoshop"){
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                    }
                }
                
                HStack(){
                    Button("Adobe - Ilustrator"){
                        skill = "Adobe - Ilustrator"
                    }
                    if(skill == "Adobe - Ilustrator"){
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                    }
                }
                
                HStack(){
                    Button("Adobe - InDesign"){
                        skill = "Adobe - InDesign"
                    }
                    if(skill == "Adobe - InDesign"){
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                    }
                }
                
                
                HStack(){
                    Button("Adobe - XD"){
                        skill = "Adobe - XD"
                    }
                    if(skill == "Adobe - XD"){
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                    }
                }
                
                HStack(){
                    Button("Sony Vegas"){
                        skill = "Sony Vegas"
                    }
                    if(skill == "Sony Vegas"){
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                    }
                }
                
                HStack(){
                    Button("Figma"){
                        skill = "Figma"
                    }
                    if(skill == "Figma"){
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                    }
                }
                
                HStack(){
                    Button("Bootstrap"){
                        skill = "Bootstrap"
                    }
                    if(skill == "Bootstrap"){
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                    }
                }
                
                HStack(){
                    Button("Canva"){
                        skill = "Canva"
                    }
                    if(skill == "Canva"){
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                    }
                }
                
            }
            .scrollDisabled(true)
            .foregroundColor(Color.black)
            .navigationBarItems(
                trailing: NavigationLink(destination: ExperienceView()){
                                    Text("Suivant")
                                        .font(.system(size: 18, weight: .semibold))
                                }
                        )
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView()
    }
}
