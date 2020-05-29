import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                ForEach(0..<100) { a in
                    Text("A")
                        .frame(maxWidth: .infinity)
                }
            }
            .padding(.horizontal)
            .navigationBarTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
