class formichiere{
  float x,y,w;
  color c, bgc;
  
  float v1, v2; // muso e zampe
  float v3; // angolo x occhio e orecchie
  float v4; //orecchie
  float v5; // occhio
  
  formichiere(float _x, float _y, float _w, color _c){
    x= _x;
    y= _y;
    w= _w;
    
    c = _c;
    bgc = color(255);
    
    v1 = 0.45;
    v2 = 0.5;
    
    v3 = PI/4; // 45 gradi
    v4 = 0.15;
    v5 = 0.05;
  }
  
  void display(){
    
    fill(c);
    noStroke();
    
    // corpo del formichiere
    // un arco > dipende da w
    arc(x,y+w/2, w,w,-PI, 0);
    
    // muso
    // una arco > dipende da v1
    fill(bgc);
    arc(x-w/4,y+w/2, w*v1,w*v1,-PI, 0);
    
    // zampe
    // un arco > dipende da v2 (e v1)
    // a metá strada tra il muso e la coda
    float zampe_max = w*3/4 - (v1*w/2);
    float zampe_x = x + w/2 - zampe_max/2;
    arc(zampe_x,y+w/2, zampe_max*v2,zampe_max*v2,-PI, 0);
    
    // orecchio
    // un cerchio > dipende da v3 (angolo) e v4 (dimensioni)
    fill(c);
    float raggio = w/2;
    float centro_y = y+w/2;
    float x_orecchia = x + (cos(PI+v3) * raggio);
    float y_orecchia = centro_y + (sin(PI+v3) * raggio);
    ellipse(x_orecchia,y_orecchia, w*v4, w*v4);
    
    // occhio
    fill(bgc);
    // circonferenza per calcolare il centro dell' occhio
    // a metá strada tra il centro del formichiere e y centro del muso
    float x_centro_occhio = x-w/8;
    float raggio_occhio = w*3/8 - (w/2-(w*v1))/4;
    float x_occhio = x_centro_occhio + (cos(PI+v3) * raggio_occhio);
    float y_occhio = y+w/2 + (sin(PI+v3) * raggio_occhio);
    ellipse(x_occhio,y_occhio, w*v5, w*v5);
  
   }
}
