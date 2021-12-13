import SwiftUI
import SlideStyler

public struct TitleSlide {
  let statement: Statement
}

extension TitleSlide: View {
  public var body: some View {
   TitleView(component: statement.text)
      .font(.largeTitle)
  }
}

extension TitleSlide {
  init(_ titleSlide: () -> Statement) {
    self.statement = titleSlide()
  }
}

struct TitleSlide_Previews: PreviewProvider {
  static var previews: some View {
    Slide.view {
      Statement {
        "New Presentation"
      }
    }
  }
}

