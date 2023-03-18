//
//  ContentView.swift
//  FavFoods
//
//  Created by faisalalbarkah on 03/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showHomePage = false
    
    var body: some View {
        
        return Group{
            if showHomePage {
                HomeView()
            } else {
                VStack(spacing: 0.0){
                    Image("OnBoardingIllustration")
                        .padding(.bottom, 50.0)
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 0.0){
                            Text("180K Store")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("Grey"))
                            
                            Text("Order Your \nFavorite Foods")
                                .font(.custom("Poppins-Bold", size: 36))
                                .foregroundColor(Color("Navy"))
                            
                            Button(action: {
                                print("Faisal")
                                self.showHomePage = true
                            },  label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 327, height: 50)
                                        .foregroundColor(Color("Orange"))
                                    Text("Explore Now")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("White"))
                                }
                            }
                            )
                            .padding(.top, 30.0)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
