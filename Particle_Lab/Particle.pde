class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0, 0.1);
    velocity = new PVector(random(-1, 4), random(-1, 4));
    position = l.copy();
    lifespan = 255.0;
  }

  void run() {
    update();
    display();
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 3.0;
  }

  void display() {
    stroke(800, lifespan);
    fill(255, lifespan);
    ellipse(position.x, position.y, 15, 15);
  }

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
