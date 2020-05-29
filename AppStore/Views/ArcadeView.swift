import SwiftUI

struct ArcadeView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                ForEach(0..<100) { a in
                    Text("A")
                        .frame(maxWidth: .infinity)
                }
            }
            .padding(.horizontal)
            .navigationBarTitle("Arcade")
        }
    }
}

struct ArcadeView_Previews: PreviewProvider {
    static var previews: some View {
        ArcadeView()
    }
}
