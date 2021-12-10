import SwiftUI
import SlideStyler

typealias BulletView = SlideComponentView
typealias TitleView = SlideComponentView
typealias SubtitleView = SlideComponentView

struct SlideComponentView {
  private(set) var alignment = HorizontalAlignment.center
  let component: SlideComponent
}

extension SlideComponentView: View {
  var body: some View {
    VStack(alignment: alignment) {
      ForEach(component.singleLines){line in
        SingleLineView(line: line)
      }
    }
  }
}

extension SlideComponentView {
  init(component: () -> SlideComponent) {
    self.init(component: component())
  }
  init(contents:() -> String) {
    self.init(component: SlideComponent(contents: contents()))
  }
}


struct SlideComponentView_Previews: PreviewProvider {
  static var previews: some View {
    SlideComponentView(alignment: .leading,
                       component: SlideComponent {
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

