float g = 9.8;//accelaration of gravity
ArrayList<Pendulum> pendulums = new ArrayList<Pendulum>();
float Tmax = 2000;
float k = 20;

void setup(){
  //fullScreen();
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100);
  strokeWeight(1);
  for(float n = 1; n < 50; n++){
    pendulums.add(new Pendulum(g*pow(Tmax/TWO_PI/(k + n + 1), 2), HALF_PI/2));
  }
}

void draw(){
  background(360);
  translate(width/2, 0);
  float t = float(frameCount);
  float n = pendulums.size();
  fill(0);
  for(float i = 0; i < n; i++){
    Pendulum pendulum = pendulums.get((int)i);
    pendulum.show(t);
  }
}