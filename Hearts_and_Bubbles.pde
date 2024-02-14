void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  int numHearts = 35;
  int maxHeartSize = 90;
  int numBubbles = 30;

  // Use a loop to draw multiple hearts
  for (int i = 0; i < numHearts; i++) {
    // Create random coordinates for each heart
    float x = random(width);
    float y = random(height);

    // Create random size for each heart
    float size = random(10, maxHeartSize);

    // Draw hearts
    drawHeart(x, y, size);
    fill(255, 130, 255);
  }

  // Use a loop to draw multiple bubbles
  for (int i = 0; i < numBubbles; i++) {
    // Create random coordinates for each bubble
    float bubbleX = random(width);
    float bubbleY = random(height);

    // Create random size for each bubble
    float bubbleSize = random(5, 20);

    // Draw bubbles
    drawBubble(bubbleX, bubbleY, bubbleSize);
  }

  // Stop loop
  noLoop();
}

void drawHeart(float x, float y, float size) {
  beginShape();
  vertex(x, y + size / 3);
  bezierVertex(x, y - size / 2, x + size / 2, y - size / 6, x, y + size / 2);
  bezierVertex(x - size / 2, y - size / 6, x, y - size / 2, x, y + size / 6);
  endShape(CLOSE);
}

void drawBubble(float x, float y, float size) {
  fill(100, 149, 237);
  stroke(0);
  ellipse(x, y, size, size);
}
