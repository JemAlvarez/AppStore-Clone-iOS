//
//  ThreeAppCardView.swift
//  AppStore
//
//  Created by Jem Alvarez on 5/26/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct ThreeAppCardView: View {
    var apps : [AppLine]
    
    var body: some View {
        VStack (spacing: 0){
            NavigationLink (destination: AppView(appInfo: AppInfo(name: apps[0].title))){
                HStack (spacing: 0){
                    Image(apps[0].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 62)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.vertical, 5)
                        .padding(.trailing, 5)
                    VStack (alignment: .leading) {
                        Text(apps[0].title)
                            .font(.system(size: 15))
                        Text(apps[0].subTitle)
                            .font(.system(size: 12))
                            .opacity(0.5)
                    }
                    Spacer()
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
            .buttonStyle(NoHighlightButtonStyle())
            
            Divider()
                .padding(.leading, 70)
                .padding(.trailing)
            
            NavigationLink (destination: AppView(appInfo: AppInfo(name: apps[1].title))){
                HStack (spacing: 0){
                    Image(apps[1].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 62)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding(.vertical, 5)
                            .padding(.trailing, 5)
                        VStack (alignment: .leading) {
                            Text(apps[1].title)
                                .font(.system(size: 15))
                            Text(apps[1].subTitle)
                                .font(.system(size: 12))
                            .opacity(0.5)
                    }
                    Spacer()
                    Button(action: {
                        
                    }) {
                        if !apps[1].downloaded {
                            Text("OPEN")
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
            .buttonStyle(NoHighlightButtonStyle())
            
            Divider()
                .padding(.leading, 70)
                .padding(.trailing)
            
            NavigationLink (destination: AppView(appInfo: AppInfo(name: apps[2].title))){
                HStack (spacing: 0){
                    Image(apps[2].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 62)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding(.vertical, 5)
                            .padding(.trailing, 5)
                        VStack (alignment: .leading) {
                            Text(apps[2].title)
                                .font(.system(size: 15))
                            Text(apps[2].subTitle)
                                .font(.system(size: 12))
                            .opacity(0.5)
                    }
                    Spacer()
                    Button(action: {
                        
                    }) {
                        if !apps[2].downloaded {
                            Text("OPEN")
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
            .buttonStyle(NoHighlightButtonStyle())
        }
    }
}

struct ThreeAppCardView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeAppCardView(apps: AppCards.threeAppCards[0])
    }
}
