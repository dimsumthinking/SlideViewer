import SwiftUI
import SlideStyler

struct StyledSegmentView {
  let segment: StyledSegment
}

extension StyledSegmentView: View {
  var body: some View {
    Text(segment.contents)
      .strikethrough(segment.style == .deleted)
  }
}

struct StyledSegmentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      StyledSegmentView(segment: StyledSegment(contents: "Hello",
                                               style: .deleted))
        .previewLayout(.sizeThatFits)
      StyledSegmentView(segment: StyledSegment(contents: "Hello",
                                               style: .standard))
        .previewLayout(.sizeThatFits)
    }
  }
}

