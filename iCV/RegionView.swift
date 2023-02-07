//
//  RegionView.swift
//  iCV
//
//  Created by Léo Cormoreche on 06/02/2023.
//

import SwiftUI

struct RegionView: View {
    var body: some View {
        NavigationView{
            VStack(){
                
                VStack(){
                    Text("Choisir un pays ou une région")
                        .font(.system(size: 30, weight: .bold))
                        .multilineTextAlignment(.center)
                    List{
                        Section{
                            NavigationLink(destination: SkillsView()){
                                Text("France")
                            }
                        }
                        
                        Section{
                            NavigationLink(destination: Text("Hello Afghanistan")){
                                Text("Afghanistan")
                            }
                            
                            NavigationLink(destination: Text("Hello Afrique du Sud")){
                                Text("Afrique du Sud")
                            }
                            
                            NavigationLink(destination: Text("Hello Albanie")){
                                Text("Albanie")
                            }
                            
                            NavigationLink(destination: Text("Hello Algérie")){
                                Text("Algérie")
                            }
                            
                            NavigationLink(destination: Text("Hello Allemagne")){
                                Text("Allemagne")
                            }
                            
                            NavigationLink(destination: Text("Hello Andorre")){
                                Text("Andorre")
                            }
                        }header: {
                            Text("Autre pays et regions")
                        }
                    }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .scrollDisabled(true)
                        .scrollContentBackground(.hidden)
                }
                
                /**
                VStack(){
                    Text("Autres pays et region")
                }
                 **/
                 
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .background(.opacity(0.1))
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}

struct RegionView_Previews: PreviewProvider {
    static var previews: some View {
        RegionView()
    }
}
