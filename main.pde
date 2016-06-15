ClassicTreeChart chart;

void setup() {
  size(640,320);
  String[][] countries = new String[][] {
    {"america","canada","quebec"},
    {"america","canada","montreal"},
    {"america","mexico","monterrey"},
    {"america","brazil","sao paulo"},
    {"europe","portugal","lisboa"},
    {"europe","portugal","porto"},
    {"europe","germany","munich"},
    {"europe","germany","berlin"},
    {"asia","india","bombay"},
    {"asia","china","shangai"},
    {"asia","china","pekin"}
  };
  
  float[][] values = new float[][]{{10},{20},{30},{20},{10},{20},{30},{40},{20},{10},{5}};
  
  TreeNode t = new TreeNode("world").makeTree(countries,values).update();
  chart = new ClassicTreeChart(100,10,400,300).tree(t).gap(2).update(); 
}

void draw() {
  background(255);
  chart.draw();
}