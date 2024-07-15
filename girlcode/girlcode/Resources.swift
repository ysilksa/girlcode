//
//  Resources.swift
//  girlcode
//
//  Created by 3 GO Participant on 6/29/24.
//  This Swift file holds resources, which allows users to access resources and helplines.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        ZStack {
            NavigationView{
                ZStack {
                    // background color
                    backgroundGradient
                    
                    // VStack for all resource buttons
                    VStack (spacing: 15) {
                        NavigationLink(destination:Resource_1()){
                            Text(" National Domestic Violence Hotline")
                                .frame(width: 300, height: 50, alignment: .center)
                                .background(Color(hex: 15362705))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.custom("Sarabun-Regular", size: 17))
                              
                        }
                        NavigationLink(destination:Resource_2()){
                            Text("Rape, Abuse & Incest National Network (RAINN)")
                                .frame(width: 300, height: 50, alignment: .center)
                                .background(Color(hex: 15362705))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.custom("Sarabun-Regular", size: 17))
                        }
                        NavigationLink(destination:Resource_3()){
                            Text("National Sexual Assault Hotline")
                                .frame(width: 300, height: 50, alignment: .center)
                                .background(Color(hex: 15362705))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.custom("Sarabun-Regular", size: 17))
                        }
                        NavigationLink(destination:Resource_4()){
                            Text("National Human Trafficking Hotline")
                                .frame(width: 300, height: 50, alignment: .center)
                                .background(Color(hex: 15362705))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.custom("Sarabun-Regular", size: 17))
                        }
                        NavigationLink(destination:Resource_5()){
                            Text("Women's Law Initiative")
                                .frame(width: 300, height: 50, alignment: .center)
                                .background(Color(hex: 15362705))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.custom("Sarabun-Regular", size: 17))
                        }
                        NavigationLink(destination:Resource_6()){
                            Text("Crisis Text Line")
                                .frame(width: 300, height: 50, alignment: .center)
                                .background(Color(hex: 15362705))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.custom("Sarabun-Regular", size: 17))
                        }
                        NavigationLink(destination:Resource_7()){
                            Text("National Organization for Victim Assistance (NOVA)")
                                .frame(width: 300, height: 50, alignment: .center)
                                .background(Color(hex: 15362705))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.custom("Sarabun-Regular", size: 17))
                        }
                        
                    }
                    .position(x: 196.5, y: 280)
                }
                .navigationTitle("Resources")
                .ignoresSafeArea(edges: .bottom)
            }
            
            // white background for tabview
            whiteTabView
                .frame(width: 400, height: 116.0)
                .foregroundColor(.white)
                .position(CGPoint(x: 196.5, y: 740))
        }
        
    }
}

#Preview {
    Resources()
}
