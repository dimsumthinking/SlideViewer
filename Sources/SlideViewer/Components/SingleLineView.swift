import SwiftUI
import SlideStyler

struct SingleLineView {
  let line: SingleLine
}

extension SingleLineView: View {
  var body: some View {
    HStack(spacing: 0) {
      ForEach(line.segments){segment in
        StyledSegmentView(segment: segment)
      }
    }
  }
}



struct SingleLineView_Previews: PreviewProvider {
  static var previews: some View {
      SingleLineView(line: SingleLine(contents:
"Hello, <del>Dolly</del>World<strong>!</strong>"
                                     ))
        .previewLayout(.sizeThatFits)
  }
}

