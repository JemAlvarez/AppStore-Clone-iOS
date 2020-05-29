import SwiftUI

struct TodayView: View {
    var body: some View {
        ScrollView (showsIndicators: false) {
            HStack {
                VStack(alignment: .leading) {
                    Text(String("sunday, may 24").uppercased())
                        .font(.caption)
                        .fontWeight(.semibold)
                    Text("Today")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                Spacer()
            }
            .padding(.top, 40)
            
            ForEach(0..<100) { a in
                Text("A")
                    .frame(maxWidth: .infinity)
            }
        }
        .padding(.horizontal)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
