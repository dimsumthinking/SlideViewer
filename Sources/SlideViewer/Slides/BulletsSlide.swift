import SwiftUI
import SlideStyler

struct BulletsSlide {
  let bullets: Bullets
  private(set) var spacing: Double = 10
}

extension BulletsSlide: View {
  var body: some View {
    VStack(alignment: .leading,
    spacing: spacing) {
      ForEach(bullets.list){bullet in
        HStack(alignment: .top) {
          Text("•")
        SingleBullet(alignment: .leading,
                   component: bullet)
            .font(.title)
        }
      }
    }
  }
}

extension BulletsSlide {
  init(spacing: Double = 5,
       bulletedList: () -> Bullets) {
    self.init( bullets: bulletedList(),
    spacing: spacing)
  }
  
  init(spacing: Double = 5,
       bulletedList: () -> [String]) {
    self.init( bullets: Bullets(bullets: bulletedList()),
    spacing: spacing)
  }
}

struct BulletedListView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
    BulletsSlide(bullets: Bullets{[
      "Bullet one of two\nwith more to come",
      "Bullet two"
    ]})
      BulletsSlide {[
        "One more"
      ]}
          .previewLayout(.sizeThatFits)
    }
  }
}

