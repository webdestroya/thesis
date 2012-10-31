class Scrap {
  long uuid
  long parentUUID
  long canvasUUID
  Polygon points
  
  LongArraySet childScraps
  LongArraySet childStrokes
  LongArraySet childArrows
}