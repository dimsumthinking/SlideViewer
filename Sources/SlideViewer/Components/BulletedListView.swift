import SwiftUI
import SlideStyler

struct BulletedListView {
  let bulletedList: BulletedList
}

extension BulletedListView: View {
  var body: some View {
    VStack(alignment: .leading) {
      ForEach(bulletedList.bullets){bullet in
        HStack {
          Text("•")
        BulletView(alignment: .leading,
                   component: bullet)
        }
      }
    }
  }
}

struct BulletedListView_Previews: PreviewProvider {
  static var previews: some View {
    BulletedListView(bulletedList: BulletedList{[
      "Bullet one",
      "Bullet two"
    ]})
        .previewLayout(.sizeThatFits)
  }
}

