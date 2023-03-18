//
//  HomeView.swift
//  FavFoods
//
//  Created by faisalalbarkah on 05/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchFood: String = ""
    @State private var showDetailPage = false
    
    var body: some View {
        
        return Group {
            if showDetailPage {
                DetailProduct()
            } else {
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(alignment:.leading, spacing: 0.0) {
                        HStack{
                            Image("profile")
                            Spacer()
                            VStack{
                                Text("Howdy")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("Grey"))
                                
                                Text("Luna Polar")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("Navy"))
                            }
                        }
                        
                        VStack(alignment:.center){
                            Text("What do you want\nfor lunch?")
                                .font(.custom("Poppins-Bold", size: 22))
                                .foregroundColor(Color("Navy"))
                                .multilineTextAlignment(.center)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 66, maxHeight: 66)
                        .padding(.top, 30.0)
                        .padding(.bottom, 24.0)
                        
                        HStack{
                            TextField("Search pizza, burger, etc ...",
                                text: $searchFood)
                            .disableAutocorrection(true)
                            .padding(.leading, 24.0)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                        .background(Color("SoftGray"))
                        .cornerRadius(50.0)
                        .padding(.horizontal, 24.0)
                        
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Categories")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 12.0)
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack{
                                    HStack{
                                        Image("bread")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        
                                        Text("Bread")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Navy"))
                                            .padding(.trailing, 18.0)
                                    }
                                    .background(Color("SoftGray"))
                                    .cornerRadius(50.0)
                                     
                                    HStack{
                                        Image("carrot")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        
                                        Text("Healthy")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Navy"))
                                            .padding(.trailing, 18.0)
                                    }
                                    .background(Color("SoftGray"))
                                    .cornerRadius(50.0)
                                    
                                    HStack{
                                        Image("donut")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        
                                        Text("Sweets")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Navy"))
                                            .padding(.trailing, 18.0)
                                    }
                                    .background(Color("SoftGray"))
                                    .cornerRadius(50.0)
                                }
                            })
                            
                        }
                        .padding(.top, 30.0)
                        
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text("Most Ordered")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 12.0)
                            
                            HStack(spacing: 0.0){
                                Image("orange")
                                VStack(alignment: .leading, spacing: 0.0){
                                    Text("Orange Fruits")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Text("Healthy")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Grey"))
                                }
                                .padding(.leading, 16.0)
                                Spacer()
                                HStack{
                                    Text("4.5")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("star")
                                }
                            }
                            .padding(.bottom, 18.0)
                            
                            HStack(spacing: 0.0){
                                Image("gyoza")
                                VStack(alignment: .leading, spacing: 0.0){
                                    Text("Gyoza Sapi")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Text("Meal")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Grey"))
                                }
                                .padding(.leading, 16.0)
                                Spacer()
                                HStack{
                                    Text("4.8")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("star")
                                }
                            }
                            .onTapGesture {
                                self.showDetailPage = true
                            }
                            .padding(.bottom, 18.0)
                            
                            HStack(spacing: 0.0){
                                Image("avocado")
                                VStack(alignment: .leading, spacing: 0.0){
                                    Text("Avocado Salad")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Text("Healthy")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Grey"))
                                }
                                .padding(.leading, 16.0)
                                Spacer()
                                HStack{
                                    Text("4.3")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("star")
                                }
                            }
                            .padding(.bottom, 18.0)
                            
                            HStack(spacing: 0.0){
                                Image("avocado")
                                VStack(alignment: .leading, spacing: 0.0){
                                    Text("Avocado Salad")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Text("Healthy")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Grey"))
                                }
                                .padding(.leading, 16.0)
                                Spacer()
                                HStack{
                                    Text("4.3")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("star")
                                }
                            }
                            .padding(.bottom, 18.0)
                            
                            HStack(spacing: 0.0){
                                Image("avocado")
                                VStack(alignment: .leading, spacing: 0.0){
                                    Text("Avocado Salad")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Text("Healthy")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Grey"))
                                }
                                .padding(.leading, 16.0)
                                Spacer()
                                HStack{
                                    Text("4.3")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("star")
                                }
                            }
                            .padding(.bottom, 18.0)
                        }
                        .padding(.top, 30.0)
                        
                    }
                    .padding(.horizontal, 24.0)
                })
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
