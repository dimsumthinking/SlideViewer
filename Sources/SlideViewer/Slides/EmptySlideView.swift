import SwiftUI
import SlideStyler

struct EmptySlideView {
  let emptySlide = EmptySlide()
}

extension EmptySlideView: View {
  var body: some View {
    EmptyView()
  }
}



struct EmptySlideView_Previews: PreviewProvider {
  static var previews: some View {
    EmptySlideView()
  }
}

