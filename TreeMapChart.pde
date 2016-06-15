int HORIZONTAL = 1;
int VERTICAL = 2;
class TreeMapChart extends Group 
{
  float _x,_y,_w,_h,_gap;
  TreeNode _tree;
  TreeMapChart(float a,float b,float c,float d) 
  {
    _x=a; _y=b; _w=c; _h=d;
  }
  TreeMapChart gap(float a) 
  {
    _gap=a;
    return this;
  }
  TreeMapChart tree(TreeNode a)
  {
    _tree=a;
    return this;
  }
  TreeMapChart update() 
  {
    empty(); 
    makeBars(_tree,_x,_y,_w,_h,HORIZONTAL);
    return this;
  }
  void makeBars(TreeNode node,float x,float y,float w,float h,int dir)
  {
    int n = node.childCount();
    float xoffset = ((w -_gap)/n);
    float yoffset = ((h-12)/n);
    float rand = random(0,1);
    add(newText(node.name(),x+5,y+5));
    print(node.name());
    for (int i=0; i<n; i++)
    {
      if (dir==HORIZONTAL)
        {
          if((x-(xoffset*i+_gap)>= (x-xoffset*_gap))&(x-(xoffset*i+_gap)<= (x)))
          {
            makeBars(node.get(i),x+(2*xoffset*i+_gap),y+30,xoffset-_gap,h-12-_gap,HORIZONTAL);
            print("Horizontal");
          }
          else
          {
            makeBars(node.get(i),x-(xoffset*i+_gap),y+30,xoffset-_gap,h-12-_gap,HORIZONTAL);
            print("Horizontal");
          }
        }
      else
        {
          makeBars(node.get(i),x+_gap,y+40+yoffset*i,w-_gap*2,yoffset-_gap,VERTICAL);
          print("Vertical");
        }
    }
 }
}