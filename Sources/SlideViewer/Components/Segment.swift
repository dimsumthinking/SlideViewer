import SwiftUI
import SlideStyler

struct Segment {
  let segment: StyledSegment
}

extension Segment: View {
  var body: some View {
    Text(segment.contents)
      .strikethrough(segment.style == .deleted)
  }
}

struct StyledSegmentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      Segment(segment: StyledSegment(contents: "Hello",
                                               style: .deleted))
        .previewLayout(.sizeThatFits)
      Segment(segment: StyledSegment(contents: "Hello",
                                               style: .standard))
        .previewLayout(.sizeThatFits)
    }
  }
}

