import SwiftUI
import SlideStyler

struct TitleSlideView {
  let titleSlide: TitleSlide
}

extension TitleSlideView: View {
  var body: some View {
    TitleView(component: titleSlide.title)
      .font(.largeTitle)
  }
}

extension TitleSlideView {
  init(_ titleSlide: () -> TitleSlide) {
    self.titleSlide = titleSlide()
  }
}

struct TitleSlideView_Previews: PreviewProvider {
  static var previews: some View {
    TitleSlideView {
      TitleSlide{"New Presentation"}
    }
  }
}

