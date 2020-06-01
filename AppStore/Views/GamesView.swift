import SwiftUI
import SwiftUIPager

// GEOMETRY READER / DYNAMIC
// change .start for pagers
// change offset for vstacks

// tap tab bar to scroll up

struct GamesView: View {
    let featuredApps = Array(Apps.allApps[0..<10])
    @State var featuredSection = 0
    
    let thisWeekApps = [Array(Apps.allApps[0...2]), Array(Apps.allApps[3...5]),
        Array(Apps.allApps[6...8]), Array(Apps.allApps[9...11]), Array(Apps.allApps[12...14]),
        Array(Apps.allApps[15...17]), Array(Apps.allApps[18...20]), Array(Apps.allApps[21...23]),
        Array(Apps.allApps[24...26])
    ]
    @State var weekSection = 0
    
    @State var arcadeSection = 0
    
    @State var popularSection = 0
    
    @State var allNewSection = 0
    
    @State var moreGamesSection = 0
    
    let limitedEventsApps = Array(Apps.allApps[(Apps.allApps.count - 3)...])
    @State var limitedEventsSection = 0
    
    let comingSoonApps = [Array(Apps.allApps[0...3]), Array(Apps.allApps[0...2]), Array(Apps.allApps[3...5]), Array(Apps.allApps[6...8])]
    @State var comingSoonSection = 0
    
    @State var groundUpSection = 0
    
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                // featured
                Pager(page: $featuredSection,
                     data: featuredApps,
                     id: \.id,
                     content: { app in
                          AppCardView(app: app)
                })
                .itemSpacing(10)
                .alignment(featuredSection == 0 ? .start : .center)
                .itemAspectRatio(0.9)
                .frame(height: 400)
                .padding(.vertical, -45)
                
                // sections
                VStack {
                    // this week
                    VStack {
                        Divider()
                        HStack(alignment: .top) {
                            VStack (alignment: .leading) {
                                Text("What to Play This Week")
                                    .font(.system(size: 23))
                                    .fontWeight(.bold)
                                Text("Selected by the editors")
                                    .font(.system(size: 15))
                                    .opacity(0.5)
                            }
                            Spacer()
                            NavigationLink (destination: SearchView()) {
                                Text("See All")
                            }
                        }

                        Pager(page: $weekSection,
                             data: thisWeekApps,
                             id: \.[0].id,
                             content: { line in
                                  ThreeAppCardView(apps: line)
                        })
                        .itemSpacing(10)
                        .alignment(weekSection == 0 ? .start : .center)
                        .itemAspectRatio(0.9)
                        .frame(height: 400)
                        .padding(.vertical, -80)
                    }

                    // arcade
                    VStack {
                        Divider()
                        HStack(alignment: .top) {
                            VStack (alignment: .leading) {
                                Text("Top Apple Arcade Games \n for You")
                                    .font(.system(size: 23))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            NavigationLink (destination: SearchView()) {
                                Text("See All")
                            }
                        }

                        Pager(page: $arcadeSection,
                             data: thisWeekApps,
                             id: \.[0].id,
                             content: { line in
                                  ThreeAppCardView(apps: line)
                        })
                        .itemSpacing(10)
                        .alignment(arcadeSection == 0 ? .start : .center)
                        .itemAspectRatio(0.9)
                        .frame(height: 400)
                        .padding(.vertical, -80)
                    }

                    // popular
                    VStack {
                        Divider()
                        HStack(alignment: .top) {
                            VStack (alignment: .leading) {
                                Text("Popular Games")
                                    .font(.system(size: 23))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            NavigationLink (destination: SearchView()) {
                                Text("See All")
                            }
                        }

                        Pager(page: $popularSection,
                             data: thisWeekApps,
                             id: \.[0].id,
                             content: { line in
                                  ThreeAppCardView(apps: line)
                        })
                        .itemSpacing(10)
                        .alignment(popularSection == 0 ? .start : .center)
                        .itemAspectRatio(0.9)
                        .frame(height: 400)
                        .padding(.vertical, -80)
                    }

                    // new game daily spotlight (with video)


                    // all new games we love
                    VStack {
                        Divider()
                        HStack(alignment: .top) {
                            VStack (alignment: .leading) {
                                Text("All New Games We Love")
                                    .font(.system(size: 23))
                                    .fontWeight(.bold)
                                Text("Discover your next favorite")
                                    .font(.system(size: 15))
                                    .opacity(0.5)
                            }
                            Spacer()
                            NavigationLink (destination: SearchView()) {
                                Text("See All")
                            }
                        }

                        Pager(page: $allNewSection,
                             data: thisWeekApps,
                             id: \.[0].id,
                             content: { line in
                                  ThreeAppCardView(apps: line)
                        })
                        .itemSpacing(10)
                        .alignment(allNewSection == 0 ? .start : .center)
                        .itemAspectRatio(0.9)
                        .frame(height: 400)
                        .padding(.vertical, -80)
                    }

                    // more games you might like
                    VStack {
                        Divider()
                        HStack(alignment: .top) {
                            VStack (alignment: .leading) {
                                Text("More Games You Might Like")
                                    .font(.system(size: 23))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            NavigationLink (destination: SearchView()) {
                                Text("See All")
                            }
                        }

                        Pager(page: $moreGamesSection,
                             data: thisWeekApps,
                             id: \.[0].id,
                             content: { line in
                                  ThreeAppCardView(apps: line)
                        })
                        .itemSpacing(10)
                        .alignment(moreGamesSection == 0 ? .start : .center)
                        .itemAspectRatio(0.9)
                        .frame(height: 400)
                        .padding(.vertical, -80)
                    }

                    // limited time events
                    VStack {
                        Divider()
                        HStack(alignment: .top) {
                            VStack (alignment: .leading) {
                                Text("⭐️Limited-Time Events⭐️")
                                    .font(.system(size: 23))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            NavigationLink (destination: SearchView()) {
                                Text("See All")
                            }
                        }

                        Pager(page: $limitedEventsSection,
                             data: limitedEventsApps,
                             id: \.id,
                             content: { app in
                                AppCardViewAlt(app: app)
                        })
                        .itemSpacing(10)
                        .alignment(limitedEventsSection == 0 ? .start : .center)
                        .itemAspectRatio(0.9)
                        .frame(height: 400)
                        .padding(.vertical, -30)
                    }

                    // coming soon
                    VStack {
                        Divider()
                        HStack(alignment: .top) {
                            VStack (alignment: .leading) {
                                Text("Coming Soon")
                                    .font(.system(size: 23))
                                    .fontWeight(.bold)
                                Text("Pre-order now, play later")
                                    .font(.system(size: 15))
                                    .opacity(0.5)
                            }
                            Spacer()
                            NavigationLink (destination: SearchView()) {
                                Text("See All")
                            }
                        }

                        Pager(page: $comingSoonSection,
                             data: comingSoonApps,
                             id: \.[0].id,
                             content: { line in
                                  TwoAppCardView(apps: line)
                        })
                        .itemSpacing(10)
                        .alignment(comingSoonSection == 0 ? .start : .center)
                        .itemAspectRatio(0.9)
                        .frame(height: 400)
                        .padding(.vertical, -90)
                    }

                    // from the ground up
                    VStack {
                        Divider()
                        HStack(alignment: .top) {
                            VStack (alignment: .leading) {
                                Text("From the Ground Up")
                                    .font(.system(size: 23))
                                    .fontWeight(.bold)
                            }
                            Spacer()
                            NavigationLink (destination: SearchView()) {
                                Text("See All")
                            }
                        }

                        Pager(page: $groundUpSection,
                             data: comingSoonApps,
                             id: \.[0].id,
                             content: { line in
                                  TwoAppCardView(apps: line)
                        })
                        .itemSpacing(10)
                        .alignment(groundUpSection == 0 ? .start : .center)
                        .itemAspectRatio(0.9)
                        .frame(height: 400)
                        .padding(.vertical, -90)
                    }
                }
                
                // top categroies
                VStack {
                    Divider()
                    HStack(alignment: .top) {
                        VStack (alignment: .leading) {
                            Text("Top Categories")
                                .font(.system(size: 23))
                                .fontWeight(.bold)
                        }
                        Spacer()
                        NavigationLink (destination: SearchView()) {
                            Text("See All")
                        }
                    }
                    
                    HStack (spacing: 30) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 25))
                        
                        VStack (alignment: .leading) {
                            Text("AR Games")
                                .font(.system(size: 22))
                            Divider()
                        }
                    }
                    HStack (spacing: 30) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 25))
                        
                        VStack (alignment: .leading) {
                            Text("Indie")
                                .font(.system(size: 22))
                            Divider()
                        }
                    }
                    HStack (spacing: 30) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 25))
                        
                        VStack (alignment: .leading) {
                            Text("Action")
                                .font(.system(size: 22))
                            Divider()
                        }
                    }
                    HStack (spacing: 30) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 25))
                        
                        VStack (alignment: .leading) {
                            Text("Racing")
                                .font(.system(size: 22))
                            Divider()
                        }
                    }
                    HStack (spacing: 30) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 25))
                        
                        VStack (alignment: .leading) {
                            Text("Puzzle")
                                .font(.system(size: 22))
                            Divider()
                        }
                    }
                    HStack (spacing: 30) {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 25))
                        
                        VStack (alignment: .leading) {
                            Text("Simulation")
                                .font(.system(size: 22))
                        }
                        
                        Spacer()
                    }
                }
                
                // quick links + buttons + terms and conditions
                VStack {
                    VStack(alignment: .leading) {
                        Divider()
                        Text("Quick Links")
                            .font(.system(size: 23))
                            .fontWeight(.bold)
                    }
                    .padding(.bottom, 23)
                    
                    VStack(alignment: .leading) {
                        Text("Try Apple Arcade")
                            .foregroundColor(.blue)
                            .font(.system(size: 22))
                        Divider()
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Parents' Guide to the App Store")
                            .foregroundColor(.blue)
                            .font(.system(size: 22))
                        Divider()
                    }
                    
                    VStack(alignment: .leading) {
                        Text("About In-App Purchases")
                            .foregroundColor(.blue)
                            .font(.system(size: 22))
                        Divider()
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Apps and Games for Your Kids")
                            .foregroundColor(.blue)
                            .font(.system(size: 22))
                        Divider()
                    }
                    
                    VStack(alignment: .leading) {
                        Text("About Personalization")
                            .foregroundColor(.blue)
                            .font(.system(size: 22))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.bottom, 35)
                    
                    VStack {
                        Text("Redeem")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.3, green: 0.3, blue: 0.3).opacity(0.3))
                            .cornerRadius(10)
                            .padding(.bottom, 5)
                        Text("Send Gift")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.3, green: 0.3, blue: 0.3).opacity(0.3))
                            .cornerRadius(10)
                            .padding(.bottom, 5)
                        Text("Add Funds to Apple ID")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.3, green: 0.3, blue: 0.3).opacity(0.3))
                            .cornerRadius(10)
                    }
                    .padding(.bottom)
                    
                    VStack(alignment: .leading) {
                        Divider()
                        HStack {
                            Text("Terms & Conditions")
                            Image(systemName: "chevron.right")
                        }
                        .opacity(0.7)
                        .padding(.bottom)
                    }
                }
            }
            .padding(.horizontal)
            .navigationBarTitle("Games")
        }
    }
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
