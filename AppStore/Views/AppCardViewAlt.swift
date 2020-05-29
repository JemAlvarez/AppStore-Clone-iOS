import SwiftUI

struct AppCardViewAlt: View {
    let feature: String
    let title: String
    let subTitle: String
    let image: String
    let appInfo: AppInfo
    
    var body: some View {
        NavigationLink (destination: AppView(appInfo: appInfo)) {
            VStack (alignment: .leading, spacing: 0) {
                HStack {
                    Image("icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 62)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.vertical, 5)
                        .padding(.trailing, 5)
                    
                    VStack (alignment: .leading) {
                        Text("PUBG MOBILE - Mad Miramar")
                            .font(.system(size: 15))
                        Text("Season 13 adds cool new toys")
                            .font(.system(size: 12))
                            .opacity(0.5)
                    }
                    
                    Spacer()
                    
                    Text("GET")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding(.horizontal, 23)
                        .padding(.vertical, 5)
                        .background(Color(red: 0.3, green: 0.3, blue: 0.3).opacity(0.3))
                        .cornerRadius(15)
                        .padding(.trailing, 2)
                }
                
                HStack {
                    Image(image)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .scaledToFill()
                        .frame(height: 250)
                    Image(image)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .scaledToFill()
                        .frame(height: 250)
                    Image(image)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .scaledToFill()
                        .frame(height: 250)
                }
                .padding(.horizontal, 30)
                
                Text("Be the last one standing from 100 players.")
                    .padding(.vertical)
            }
        }
        .buttonStyle(NoHighlightButtonStyle())
    }
}

struct AppCardViewAlt_Previews: PreviewProvider {
    static var previews: some View {
        AppCardViewAlt(feature: "Major Update", title: "PUBG MOBILE - Mad Miramar", subTitle: "Season 13 adds cool new toys", image: "pubg_v", appInfo: AppInfo(name: "PUBG"))
    }
}
