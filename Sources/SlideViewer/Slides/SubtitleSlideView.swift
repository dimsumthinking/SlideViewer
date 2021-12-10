import SwiftUI
import SlideStyler

struct SubtitleSlideView {
  let subtitleSlide: SubtitleSlide
}

extension SubtitleSlideView: View {
  var body: some View {
    VStack(spacing: 10) {
      TitleView(component: subtitleSlide.title)
        .font(.largeTitle)
      SubtitleView(component: subtitleSlide.subtitle)
        .font(.title)
    }
  }
}

extension SubtitleSlideView {
  init(_ subtitleSlide: () -> SubtitleSlide) {
    self.subtitleSlide = subtitleSlide()
  }
}

struct SubtitleSlideView_Previews: PreviewProvider {
  static var previews: some View {
    SubtitleSlideView {
      SubtitleSlide{
        "New Presentation"
      } subtitle: {
        "With subtitle"
      }
    }
  }
}
