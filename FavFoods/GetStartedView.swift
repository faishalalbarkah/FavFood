//
//  GetStartedView.swift
//  FavFoods
//
//  Created by faisalalbarkah on 05/10/22.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
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

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
