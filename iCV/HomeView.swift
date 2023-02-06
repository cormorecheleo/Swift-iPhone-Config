//
//  HomeView.swift
//  iCV
//
//  Created by Léo Cormoreche on 06/02/2023.
//

import SwiftUI

struct HomeView: View {
    @State var show:Bool = false
    @State var goNext: Bool = false
    var body: some View {
        NavigationView{
            VStack(){
                Text(show ? "Hello" : "")
                    .font(.system(size: 90, weight: .ultraLight))
                NavigationLink{
                    RegionView()
                }label: {
                    Text(show ? "Commencer" : "")
                }
                .font(.system(size: 20, weight: .light))
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .padding(.top, 180)
            .onAppear(perform: {
                withAnimation(Animation.easeIn(duration: 1).delay(0.5)) {
                    show = true
                    print(goNext)
                }
            })
        }
        .onAppear(perform:  delayHello)
    }
    
    private func delayHello() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
                    goNext = true
                    print(goNext)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
