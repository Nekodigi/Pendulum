class Pendulum{
  float l;
  float maxTheta;
  
  Pendulum(float l, float maxTheta){
    this.l = l;
    this.maxTheta = maxTheta;
  }
  
  void show(float t){
    float theta = maxTheta*sin(sqrt(g/l)*t);
    float x = sin(theta)*l;
    float y = cos(theta)*l;
    line(0, 0, x, y);
    ellipse(x, y, 50, 50);
  }
}