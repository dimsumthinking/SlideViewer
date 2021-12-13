import SwiftUI
import SlideStyler

public struct SubtitleSlide {
  let titleAndSubtitle: TitleAndSubtitle
}

extension SubtitleSlide: View {
  public var body: some View {
    VStack(spacing: 10) {
      TitleView(component: titleAndSubtitle.title)
        .font(.largeTitle)
      SubtitleView(component: titleAndSubtitle.subtitle)
        .font(.title)
    }
  }
}

extension SubtitleSlide {
  init(_ titleAndSubtitle: () -> TitleAndSubtitle) {
    self.titleAndSubtitle = titleAndSubtitle()
  }
}

struct SubtitleSlide_Previews: PreviewProvider {
  static var previews: some View {
//    SubtitleSlidew {
//      SubtitleSlide{
//        "New Presentation"
//      } subtitle: {
//        "With subtitle"
//      }
//    }
    Slide.view {
      TitleAndSubtitle {(
        "This is the title",
        "Accompanied by a subtitle"
      )}
    }
  }
}
