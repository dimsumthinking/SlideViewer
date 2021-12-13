import SwiftUI
import SlideStyler

struct EmptySlide {
  let emptySlide = IntentionallyLeftBlank()
}

extension EmptySlide: View {
  var body: some View {
    EmptyView()
  }
}



struct EmptySlideView_Previews: PreviewProvider {
  static var previews: some View {
    EmptySlide()
  }
}

