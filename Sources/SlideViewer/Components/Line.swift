import SwiftUI
import SlideStyler

struct Line {
  let styledLine: StyledLine
}

extension Line: View {
  var body: some View {
    HStack(spacing: 0) {
      ForEach(styledLine.segments){segment in
        Segment(segment: segment)
      }
    }
  }
}



struct SingleLineView_Previews: PreviewProvider {
  static var previews: some View {
      Line(styledLine: StyledLine(contents:
"Hello, <del>Dolly</del>World<strong>!</strong>"
                                     ))
        .previewLayout(.sizeThatFits)
  }
}

