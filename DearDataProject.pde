ArrayList<Interactions> interactions;

void setup() {
  size(1200, 800);
  smooth();
  interactions = new ArrayList<Interactions();
  
  loadData();
}

void draw() {
  background(18, 22, 32);
  
  fill(240, 240, 245);
  textSize(24);
  text("Interactions: A Constellation of My Days (Dear Data)", 80, 60);
  textSize(14);
  fill(160, 170, 190);
  text("Visualising duration (with petals), emotion (with colours), and flow of time across the week.", 80, 85);
  
  noFill();
  stroke(50, 65, 90, 120);
  strokeWeight(1.5);
  beginShape();
  for (Interaction inter : interactions) {
    vertex(inter.x, inter.y);
  }
  endShape();
  
  chechHover();
}

class Interaction {
  int id;
  String day;
  String dataStr;
  String timeStr;
  String type;
  float duration;
  String impact;
  String feeling;
  String initiator;
  String setting;
  float x, y;
  
  Interaction(int id, String day, String dateStr, String timeStr, String type, float duration, 
              String impact, String feeling, String initiator, String setting, float x, float y) {
    this.id = id;
    this.day = day;
    this.dateStr = dateStr;
    this.timeStr = timeStr;
    this.type = type;
    this.duration = duration;
    this.impact = impact;
    this.feeling = feeling;
    this.initiator = initiator;
    this.setting = setting;
    this.x = x;
    this.y = y;
   }
   
   void display() {
     pushStyle();
     pushMatrix();
     translate(x, y);
     
     int col = getFeelingColour(feeling);
     
     noFill();
     strokeWeight(1.5);
     if (setting.toLowerCase().contains("home")) {
       stroke(110, 180, 240, 180);
     } else if (setting.toLowerCase().contains("lecture") || setting.toLowerCase().contains("school")) {
       stroke(240, 190, 110, 180);
     } else {
       stroke(180, 140, 220, 180);
     }
     ellipse(0, 0, 34, 34);
       
  
