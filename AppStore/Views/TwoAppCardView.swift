//
//  ThreeAppCardView.swift
//  AppStore
//
//  Created by Jem Alvarez on 5/26/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct TwoAppCardView: View {
    var apps : [AppLine]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0){
            NavigationLink (destination: AppView(appInfo: AppInfo(name: apps[0].title))){
                HStack (spacing: 0){
                    Image(apps[0].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.vertical, 5)
                        .padding(.trailing)
                    VStack(alignment: .leading, spacing: 20) {
                        VStack (alignment: .leading) {
                            Text(apps[0].title)
                                .font(.system(size: 15))
                            Text(apps[0].subTitle)
                                .font(.system(size: 12))
                                .opacity(0.5)
                        }
                        
                        Button(action: {
                            
                        }) {
                            if !apps[0].downloaded {
                                Text("GET")
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                    .padding(.horizontal, 23)
                                    .padding(.vertical, 5)
                                    .background(Color(red: 0.3, green: 0.3, blue: 0.3).opacity(0.3))
                                    .cornerRadius(15)
                                    .padding(.trailing, 2)

                            } else {
                                Image(systemName: "icloud.and.arrow.down")
                                .font(.system(size: 20))
                                .padding(.trailing)
                            }
                            
                        }
                    }
                }
            }
            .buttonStyle(NoHighlightButtonStyle())
            
            Divider()
                .padding(.leading, 70)
                .padding(.trailing)
                .padding(.top)
            
            NavigationLink (destination: AppView(appInfo: AppInfo(name: apps[1].title))){
                HStack (spacing: 0){
                    Image(apps[1].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.vertical, 5)
                        .padding(.trailing)
                    VStack(alignment: .leading, spacing: 20) {
                        VStack (alignment: .leading) {
                            Text(apps[1].title)
                                .font(.system(size: 15))
                            Text(apps[1].subTitle)
                                .font(.system(size: 12))
                                .opacity(0.5)
                        }
                        
                        Button(action: {
                            
                        }) {
                            if !apps[1].downloaded {
                                Text("GET")
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                    .padding(.horizontal, 23)
                                    .padding(.vertical, 5)
                                    .background(Color(red: 0.3, green: 0.3, blue: 0.3).opacity(0.3))
                                    .cornerRadius(15)
                                    .padding(.trailing, 2)

                            } else {
                                Image(systemName: "icloud.and.arrow.down")
                                .font(.system(size: 20))
                                .padding(.trailing)
                            }
                            
                        }
                    }
                }
            }
            .buttonStyle(NoHighlightButtonStyle())
        }
    }
}

struct TwoAppCardView_Previews: PreviewProvider {
    static var previews: some View {
        TwoAppCardView(apps: AppCards.threeAppCards[0])
    }
}
