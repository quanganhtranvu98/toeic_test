class LinkImage{
  String checkScore(int Score)
  {
     Score ??=-1;

    if(Score>700)
      {
        return 'lib/Assets/image/circleG.png';
      }
    else if(Score>300 )
      {
        return 'lib/Assets/image/circularBlue.png';
      }
    else if(Score>=1)
      {
        return 'lib/Assets/image/circleR.png';
      }
    else if(Score==-1)
    {
      return 'lib/Assets/image/circleW.png';
    }


  }
}
