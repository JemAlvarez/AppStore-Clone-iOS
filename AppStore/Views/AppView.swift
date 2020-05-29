import SwiftUI

struct AppView: View {
    let appInfo: AppInfo
    
    var body: some View {
        Text(appInfo.name)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(appInfo: AppInfo(name: "Hello"))
    }
}
