/* THINGS LEFT:
1. get if statement for when y goes completely down
2.attach minim sounds to each key
3. attack makey makey to hard made piano
*/

Keys rectangle[] = new Keys[5];

void setup()
{
  size(700, 700);
  background(0, 0, 0);
  textAlign(CENTER);

  

  for (int i=0; i<5; i++)
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
    
    rectangle[i] = new Keys(noteChoice);
  }
}


void draw()
{
  background(0, 0, 0);

  for (int i=0; i<5; i++)
  {
    rectangle[i].draw();
  }
}
