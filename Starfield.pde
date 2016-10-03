//your code here
Particle[] particles;

void setup()
{
	//your code here
	size(800, 800);
	particles = new Particle[500];
	for (int i = 0; i < particles.length; i++) {
		particles[i] = new NormalParticle();
	}
	for (int j = 0; j < 50; j++) {
		particles[j] = new OddballParticle();
	}
	for (int k = 50; k <= 51; k++) {
		particles[k] = new JumboParticle();
	}
}
void draw()
{
	//your code here
	for (int i = 0; i < particles.length; i++) {
		particles[i].show();
		particles[i].move();
	}
	fill(0, 0, 0, 20);
	rect(0, 0, 800, 800);
}
class NormalParticle implements Particle
{
	//your code here
	double myX, myY, myAngle, mySpeed;
	int myColor;
	NormalParticle() {
		myX = (int)(Math.random()*51)+375;
		myY = (int)(Math.random()*51)+375;
		myAngle = Math.PI*2*Math.random();
		mySpeed = (Math.random()*2)+0.1;
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	public void move() {
		myX += mySpeed*Math.cos(myAngle);
		myY += mySpeed*Math.sin(myAngle);
		if (myX > 800 || myX < 0 || myY > 800 || myY < 0) {
			myX = mouseX;
			myY = mouseY;
			myAngle = Math.PI*2*Math.random();
			mySpeed = (Math.random()*3)+0.1;
			myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		}
	}
	public void show() {
		fill(myColor);
		noStroke();
		ellipse((int)myX, (int)myY, 5, 5);
	}
}
interface Particle
{
	//your code here
	public void move();
	public void show();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	double myX, myY, myAngle, mySpeed;
	OddballParticle() {
		myX = (int)(Math.random()*51)+375;
		myY = (int)(Math.random()*51)+375;
		myAngle = Math.PI*2*Math.random();
		mySpeed = Math.random()*2+2;
	}
	public void move() {
		myX += mySpeed*Math.cos(myAngle);
		myY += mySpeed*Math.sin(myAngle);
		myAngle += 0.025;
	}
	public void show() {
		fill(255);
		noStroke();
		ellipse((int)myX, (int)myY, 15, 15);
	}
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
	void show() {
		fill(myColor);
		noStroke();
		ellipse((int)myX, (int)myY, 100, 100);
	}
}

