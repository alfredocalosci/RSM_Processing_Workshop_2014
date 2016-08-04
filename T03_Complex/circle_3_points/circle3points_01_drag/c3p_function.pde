float[] circle3points(float ax, float ay, float bx, float by, float cx, float cy) {
  float[] CyR = new float[3];
  float centerX, centerY, radius;

  //check if points are in the same place
  if (dist(ax, ay, bx, by)!=0&&
    dist(bx, by, cx, cy)!=0&&
    dist(cx, cy, ax, ay)!=0)
  {
    //two slopes from points
    float slope1 = (ay-by)/(ax-bx);
    float slope2 = (by-cy)/(bx-cx);
    
    // bug fix > do not divide by 0
    if(slope1 == 0){
      slope1 = 0.0001;
    }
    
    if(slope2 == 0){
      slope2 = 0.0001;
    }

    //make sure that the points aren't in a line
    if (slope1!=slope2) {
      //equation mumbo-jumbo; take from http://regentsprep.org/Regents/math/geometry/GCG6/RCir.htm
      centerX = (slope1*slope2*(cy-ay) + slope1*(bx+cx) - slope2*(ax+bx))/(2*(slope1-slope2));
      centerY = -1/slope1*(centerX-(ax+bx)/2)+(ay+by)/2;
      radius = dist(centerX, centerY, bx, by);

      CyR[0] = centerX;
      CyR[1] = centerY;
      CyR[2] = radius;
    }
  } 
  else {
    CyR[0] = 0;
    CyR[1] = 0;
    CyR[2] = 0;
  }

  return CyR;
}
