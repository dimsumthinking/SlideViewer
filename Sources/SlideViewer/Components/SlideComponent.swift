import SwiftUI
import SlideStyler

typealias SingleBullet = SlideComponent
typealias TitleView = SlideComponent
typealias SubtitleView = SlideComponent

struct SlideComponent {
  private(set) var alignment = HorizontalAlignment.center
  let component: StyledComponent
}

extension SlideComponent: View {
  var body: some View {
    VStack(alignment: alignment) {
      ForEach(component.singleLines){line in
        Line(styledLine: line)
      }
    }
  }
}

extension SlideComponent {
  init(component: () -> StyledComponent) {
    self.init(component: component())
  }
  init(contents: () -> String) {
    self.init(component: StyledComponent(contents: contents()))
  }
}


struct SlideComponentView_Previews: PreviewProvider {
  static var previews: some View {
    SlideComponent(alignment: .leading,
                   component: StyledComponent {
"""
import SwiftUI
import SlideStyler
<em>// This is a comment</em>
struct SlideComponentView {
  <del>let component: SlideComponent</del>
  <strong>private(set)</strong> var alignment = .center
}
"""
    })
      .previewLayout(.sizeThatFits)
  }
}

