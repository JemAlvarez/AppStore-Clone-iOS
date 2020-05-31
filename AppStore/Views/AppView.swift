import SwiftUI

struct AppView: View {
    let appInfo: AppInfo
    
    var body: some View {
        Text(appInfo.title)
    }
}

//struct AppView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppView(appInfo: AppInfo(title: "Hello"))
//    }
//}
