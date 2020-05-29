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
                    .padding(.vertical, -60)
                }
                
                // coming soon
                
                
                // from the ground up
                
                
                // top categroies
                
                
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
