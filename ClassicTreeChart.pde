class ClassicTreeChart extends Group {
  float _x,_y,_w,_h,_gap;
  float yoffset;
  TreeNode _tree;
  ClassicTreeChart(float a,float b,float c,float d) {
    _x=a; _y=b; _w=c; _h=d;
  }
  ClassicTreeChart gap(float a) {_gap=a;return this;}
  ClassicTreeChart tree(TreeNode a) {_tree=a;return this;}
  ClassicTreeChart update() {
    empty();
    yoffset = (_h-60)/_tree.height();
    makeLevel(_tree,_x,_y,_w);
    return this;
  }
  void makeLevel(TreeNode node,float x,float y,float w) {
    int n = node.childCount();
    float section = w/node.leaves();
    float xoffset = x;
    //add(newMark(x+w/2,y,10,10));
    add(newText(node.name(),0,0).translate(x+(w/2+10)-20,y+10));
    for (int i=0; i<n; i++) {
      TreeNode child = node.get(i);
      int leaves = child.leaves();
      if (leaves==0) leaves=1;
      float w2 = section*leaves;
      add(newLine(x+w/2,y,xoffset+w2/2,y+yoffset));
      makeLevel(child,xoffset,y+yoffset,w2);
      xoffset += section*leaves;
    }
  }
}