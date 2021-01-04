float rotx, roty;

void setup() {
  size (700, 700, P3D); 
  //rotx = radians(90);
  //roty = radians(45);
}

void draw() {
  background(255);
  
  noFill();
  ball(width/2, height/2, 0, #FF0000, 200);
  lights();
  cube(width/3, height/3, 0, #FF0000, 150);
  cube(0, 0, 0, #0000FF, 300);
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  fill(c);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ(rotx);
  stroke(0);
  strokeWeight(3);
  box(size); //size length
  popMatrix();
}

void ball(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  fill(c);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  noStroke();
  lights();
  strokeWeight(3);
  sphere(size); //size length
  popMatrix();
}

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
  //rotz = rotz + (pmouseZ = mouseZ)*0.01;
}
