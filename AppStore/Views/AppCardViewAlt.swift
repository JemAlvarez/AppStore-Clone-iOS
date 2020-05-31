import SwiftUI

struct AppCardViewAlt: View {
    let app: AppInfo
    
    var body: some View {
        NavigationLink (destination: AppView(appInfo: app)) {
            VStack (alignment: .leading, spacing: 0) {
                HStack {
                    Image(app.icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 62)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.vertical, 5)
                        .padding(.trailing, 5)
                    
                    VStack (alignment: .leading) {
                        Text(app.title)
                            .font(.system(size: 15))
                        Text(app.subTitle)
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
                    Image(app.preview[0])
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    Image(app.preview[1])
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    Image(app.preview[2])
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding(.top, 10)
                .padding(.horizontal, 30)
                
                Text(app.feature!)
                    .font(.system(size: 15))
                    .padding(.vertical)
            }
        }
        .buttonStyle(NoHighlightButtonStyle())
    }
}

//struct AppCardViewAlt_Previews: PreviewProvider {
//    static var previews: some View {
//        AppCardViewAlt(feature: "Major Update", title: "PUBG MOBILE - Mad Miramar", subTitle: "Season 13 adds cool new toys", image: "pubg_v", appInfo: AppInfo(name: "PUBG"))
//    }
//}
