import SwiftUI

struct AppCardView: View {
    let feature: String
    let title: String
    let subTitle: String
    let image: String
    let appInfo: AppInfo
    
    var body: some View {
        NavigationLink (destination: AppView(appInfo: appInfo)) {
            VStack (alignment: .leading, spacing: 0) {
                Divider()
                Text(feature.uppercased())
                    .font(.system(size: 10))
                        .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .padding(.top, 10)
                Text(title)
                    .font(.system(size: 20))
                Text(subTitle)
                    .font(.system(size: 18))
                    .opacity(0.5)
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.top, 15)
            }
        }
        .buttonStyle(NoHighlightButtonStyle())
    }
}

struct AppCardView_Previews: PreviewProvider {
    static var previews: some View {
        AppCardView(feature: "Major Update", title: "PUBG MOBILE - Mad Miramar", subTitle: "Season 13 adds cool new toys", image: "pubg", appInfo: AppInfo(name: "PUBG"))
    }
}
