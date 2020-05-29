import SwiftUI
import SwiftUIPager

// GEOMETRY READER / DYNAMIC
// change .start for pagers
// change offset for vstacks

// tap tab bar to scroll up

struct GamesView: View {
    let featuredApps = AppCards.appCards
    let thisWeekApps = AppCards.threeAppCards
    @State var featuredSection = 0
    @State var weekSection = 0
    @State var arcadeSection = 0
    @State var popularSection = 0
    @State var allNewSection = 0
    @State var moreGamesSection = 0
    @State var limitedEventsSection = 0
    @State var comingSoonSection = 0
    @State var groundUpSection = 0
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                // featured
                Pager(page: $featuredSection,
                     data: featuredApps,
                     id: \.title,
                     content: { app in
                          AppCardView(feature: app.feature, title: app.title, subTitle: app.subTitle, image: app.image, appInfo: app.appInfo)
                })
                .itemSpacing(10)
                .alignment(featuredSection == 0 ? .start : .center)
                .itemAspectRatio(0.9)
                .frame(height: 400)
                .padding(.vertical, -45)
                
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
                             id: \.[0].title,
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
                             id: \.[0].title,
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
                             id: \.[0].title,
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
                             id: \.[0].title,
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
                             id: \.[0].title,
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
                             data: featuredApps,
                             id: \.title,
                             content: { app in
                                  AppCardViewAlt(feature: app.feature, title: app.title, subTitle: app.subTitle, image: "pubg_v", appInfo: app.appInfo)
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
                             data: thisWeekApps,
                             id: \.[0].title,
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
                             data: thisWeekApps,
                             id: \.[0].title,
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
                    }
                }
                
                // quick links + buttons + terms and conditions
                
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
