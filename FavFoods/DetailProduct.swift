//
//  DetailProduct.swift
//  FavFoods
//
//  Created by faisalalbarkah on 08/10/22.
//

import SwiftUI

struct DetailProduct: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack (alignment:.leading,spacing: 0.0){
                Image("gyozadetail")
                    .padding(.bottom, 20.0)
                
                HStack (spacing: 0.0){
                    VStack(alignment:.leading,spacing:0.0){
                        Text("Gyoza Sapi")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("Navy"))
                            .padding(.bottom, 6.0)
                        
                        Text("Meal")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(Color("Grey"))
                            .padding(.bottom, 16.0)
                    }
                    
                    Spacer()
                    
                    HStack{
                        Text("4.8")
                            .font(.custom("Poppins-Medium", size: 16))
                            .foregroundColor(Color("Navy"))
                        Image("star")
                    }
                }
                
                Text("Makanan asal Bandung dengan tesktur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(Color("Navy"))
                
                VStack(alignment: .leading, spacing: 0.0){
                    Text("Bundle")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                        .padding(.top, 20.0)
                        .padding(.bottom, 12.0)
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            Image("ImageBundle1")
                                .padding(.trailing, 16.0)
                            Image("ImageBundle2")
                                .padding(.trailing, 16.0)
                            Image("ImageBundle3")
                                .padding(.trailing, 16.0)
                            Image("ImageBundle1")
                                .padding(.trailing, 16.0)
                            Image("ImageBundle2")
                                .padding(.trailing, 16.0)
                        }
                    })
                    .padding(.bottom, 32.0)
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 0.0){
                            Text("$808.00")
                                .font(.custom("Poppins-SemiBold", size: 22))
                                .foregroundColor(Color("Navy"))
                            Text("/porsi")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(Color("Grey"))
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            print("Faisal")
                        },  label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 190, height: 50)
                                    .foregroundColor(Color("Orange"))
                                Text("Order Now")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("White"))
                            }
                        }
                        )
                    }
                }
            }
            .padding(.horizontal, 24.0)
        })
    }
}

struct DetailProduct_Previews: PreviewProvider {
    static var previews: some View {
        DetailProduct()
    }
}
