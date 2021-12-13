import SlideStyler

public enum Slide {
}

// TitleSlide
extension Slide {
  public static func view(_ statement: Statement) -> TitleSlide {
   TitleSlide(statement: statement)
  }
  public static func view(_ titleSlide: () -> Statement) -> TitleSlide {
    view(titleSlide())
  }
}

extension Slide {
  public static func view(_ titleAndSubtitle: TitleAndSubtitle) -> SubtitleSlide {
    SubtitleSlide(titleAndSubtitle: titleAndSubtitle)
  }
  public static func view(_ titleAndSubtitle: () -> TitleAndSubtitle) -> SubtitleSlide {
    view(titleAndSubtitle())
  }
}
