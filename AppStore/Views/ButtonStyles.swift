import SwiftUI

struct NoHighlightButtonStyle: ButtonStyle {
    public func makeBody(configuration: NoHighlightButtonStyle.Configuration) -> some View {
        configuration.label
            .opacity(1.0)
    }
}
