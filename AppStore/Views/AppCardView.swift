import SwiftUI

struct AppCardView: View {
    let app: AppInfo
    
    var body: some View {
        NavigationLink (destination: AppView(appInfo: app)) {
            VStack (alignment: .leading, spacing: 0) {
                Divider()
                Text(app.feature!.uppercased())
                    .font(.system(size: 10))
                        .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .padding(.top, 10)
                Text(app.title)
                    .font(.system(size: 20))
                Text(app.subTitle)
                    .font(.system(size: 18))
                    .opacity(0.5)
                Image(app.banner)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.top, 15)
            }
        }
        .buttonStyle(NoHighlightButtonStyle())
    }
}

//struct AppCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppCardView(feature: "Major Update", title: "PUBG MOBILE - Mad Miramar", subTitle: "Season 13 adds cool new toys", image: "pubg", appInfo: AppInfo(name: "PUBG"))
//    }
//}
