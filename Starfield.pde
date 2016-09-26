//your code here
NormalParticle bob;
void setup()
{
	//your code here
	size(500, 500);
	bob = new NormalParticle();
}
void draw()
{
	//your code here
	background(0);
	bob.show();
	bob.move();
}
class NormalParticle
{
	//your code here
	double myX, myY, myAngle, mySpeed;
	int myColor;
	NormalParticle() {
		myX = (int)(Math.random()*501);
		myY = (int)(Math.random()*501);
		myAngle = Math.PI*2*Math.random();
		mySpeed = Math.random()*10;
		myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	}
	void move() {
		myX += mySpeed*Math.cos(myAngle);
		myY += mySpeed*Math.sin(myAngle);
	}
	void show() {
		fill(myColor);
		ellipse((int)myX, (int)myY, 10, 10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

