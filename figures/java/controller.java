class StrokeController {
  public static void start(long uuid, long cuid, long puid, Color color);
  public static void append(long uuid, int x, int y);
  public static void finish(long uuid);
  public static void delete(long uuid);
  public static void move(long uuid, int deltaX, int deltaY);
}