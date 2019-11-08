 class Keys
{
  float _x;
  float _y;
  char _colour;
  float _velocity;

  Keys(char note, int i)
  {
    _velocity = 2.5;
    _colour = note;
    _x = i*150;
    _y = random(-500, 0);
  }


  void draw()
  {
    _y = _y + _velocity;

    if (_colour == 'C')
    {
      fill(255, 255, 149);
    }

    if (_colour == 'D')
    {
      fill(196, 44, 171);
    }

    if (_colour == 'E')
    {
      fill(131, 245, 151);
    }

    if (_colour == 'G')
    {
      fill(101, 117, 193);
    }

    rect(_x, _y, 40, 100);

    if (_colour == 'C')
    {
      fill(0);
      textSize(20);
      text("C", _x+20, _y+50);
    }

    if (_colour == 'D')
    {
      fill(255);
      textSize(20);
      text("D", _x+20, _y+50);
    }

    if (_colour == 'E')
    {
      fill(0);
      textSize(20);
      text("E", _x+20, _y+50);
    }

    if (_colour == 'G')
    {
      fill(255);
      textSize(20);
      text("G", _x+20, _y+50);
    }
    
    if(_y > 700)
    {
     _y = -80; 
    }
  }
}
