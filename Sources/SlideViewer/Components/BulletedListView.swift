import SwiftUI
import SlideStyler

struct BulletedListView {
  let bulletedList: BulletedList
  private(set) var spacing: Double = 5
}

extension BulletedListView: View {
  var body: some View {
    VStack(alignment: .leading,
    spacing: spacing) {
      ForEach(bulletedList.bullets){bullet in
        HStack(alignment: .top) {
          Text("•")
        BulletView(alignment: .leading,
                   component: bullet)
        }
      }
    }
  }
}

extension BulletedListView {
  init(spacing: Double = 5,
       bulletedList: () -> BulletedList) {
    self.init( bulletedList: bulletedList(),
    spacing: spacing)
  }
  
  init(spacing: Double = 5,
       bulletedList: () -> [String]) {
    self.init( bulletedList: BulletedList(bullets: bulletedList()),
    spacing: spacing)
  }
}

struct BulletedListView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
    BulletedListView(bulletedList: BulletedList{[
      "Bullet one\nwith more \nto come",
      "Bullet two"
    ]})
        .previewLayout(.sizeThatFits)
      BulletedListView {[
        "One more"
      ]}
          .previewLayout(.sizeThatFits)
    }
  }
}

