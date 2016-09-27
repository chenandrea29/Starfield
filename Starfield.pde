//your code here
Particle[] particles;

void setup()
{
	//your code here
	size(500, 500);
	particles = new Particle[500];
	for (int i = 0; i < particles.length; i++) {
		particles[i] = new NormalParticle();
	}
	particles[0] = new OddballParticle();
}
void draw()
{
	//your code here
	background(0);
	for (int i = 0; i < particles.length; i++) {
		particles[i].show();
		particles[i].move();
	}
}
class NormalParticle implements Particle
{
	//your code here
	double myX, myY, myAngle, mySpeed;
	int myColor;
	NormalParticle() {
		myX = (int)(Math.random()*51)+225;
		myY = (int)(Math.random()*51)+225;
		myAngle = Math.PI*2*Math.random();
		mySpeed = (Math.random()*3)+0.1;
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	public void move() {
		myX += mySpeed*Math.cos(myAngle);
		myY += mySpeed*Math.sin(myAngle);
	}
	public void show() {
		fill(myColor);
		noStroke();
		ellipse((int)myX, (int)myY, 10, 10);
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
	int myColor;
	OddballParticle() {
		myX = (int)(Math.random()*51)+225;
		myY = (int)(Math.random()*51)+225;
		myAngle = Math.PI*2*Math.random();
		mySpeed = Math.random()+0.1;
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	public void move() {
		myX += mySpeed*Math.cos(myAngle);
		myY += mySpeed*Math.sin(myAngle);
	}
	public void show() {
		fill(myColor);
		noStroke();
		rect((int)myX, (int)myY, 15, 15);
	}

}
class JumboParticle //uses inheritance
{
	//your code here
}

