
import ddf.minim.*;
Minim minim;
AudioPlayer[] notes = new AudioPlayer[4];

Keys rectangle[] = new Keys[6];

void setup()
{
  size(700, 700);
  background(0, 0, 0);
  textAlign(CENTER);

  for (int i=0; i<6; i++)
  {
    int drop = (int)random(1, 5);
    char noteChoice='C';

    if (drop == 1)
    {
      noteChoice = 'C';
    }

    if (drop == 2)
    {
      noteChoice = 'D';
    }

    if (drop == 3)
    {
      noteChoice = 'E';
    }

    if (drop == 4)
    {
      noteChoice = 'G';
    }

    rectangle[i] = new Keys(noteChoice, i);
  }

  minim = new Minim(this);
  notes[0] = minim.loadFile("cChord.wav");
  notes[1] = minim.loadFile("dChord.wav");
  notes[2] = minim.loadFile("eChord.wav");
  notes[3] = minim.loadFile("gChord.wav");
}


void draw()
{
  background(0, 0, 0);

  for (int i=0; i<6; i++)
  {
    rectangle[i].draw();
  }
}


void keyReleased()
{
    if (keyCode == LEFT)
    {
      notes[0].rewind();
      notes[0].play();
    }
    if (keyCode == UP)
    {
      notes[1].rewind();
      notes[1].play();
    }
    if (keyCode == DOWN)
    {
      notes[2].rewind();
      notes[2].play();
    }
    if (keyCode == RIGHT)
    {
      notes[3].rewind();
      notes[3].play();
    }
}
