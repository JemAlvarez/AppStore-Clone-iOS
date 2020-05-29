import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            TodayView()
                .tabItem {
                    Image(systemName: "doc.plaintext")
                        .padding(.top)
                    Text("Today")
            }.tag(0)
            
            GamesView()
                .tabItem {
                    Image(systemName: "paperplane.fill")
                    Text("Games")
            }.tag(1)
            
            AppsView()
                .tabItem {
                    Image(systemName: "square.stack.3d.up.fill")
                    Text("Apps")
            }.tag(2)
            
            ArcadeView()
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Arcade")
            }.tag(3)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Seach")
            }.tag(4)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
