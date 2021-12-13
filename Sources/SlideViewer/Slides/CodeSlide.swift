import SwiftUI
import SlideStyler

struct CodeSlide {
  let code: Code
  private(set) var spacing: Double = 5
}

extension CodeSlide: View {
  var body: some View {
    VStack(alignment: .leading,
    spacing: spacing) {
      ForEach(code.lines){line in
      Line(styledLine: line)
      }
    }
  }
}

extension CodeSlide {
  init(spacing: Double = 5,
       code: () -> Code) {
    self.init( code: code(),
    spacing: spacing)
  }
  
  init(spacing: Double = 5,
       code: () -> String) {
    self.init(code: Code(listing: code()),
    spacing: spacing)
  }
}

struct CodeSlide_Previews: PreviewProvider {
  static var previews: some View {
      CodeSlide(code :  Code {
      "Test <del>eliminated</del> this\n   right now\nok"
      })
  }
}

