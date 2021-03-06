/* from http://tex.stackexchange.com/questions/194361/producing-delaunay-triangulations
 asy -f svg eg_triangulation.asy
 svg2tikz --standalone eg_triangulation.svg > eg_triangulation.tex
*/
size(200);
int np=12;
pair[] points;
real r() {return 1.2*(rand()/randMax*2-1);}

srand(23439);
for(int i=0; i < np; ++i) points.push((r(),r()));

int[][] trn=triangulate(points);
for(int i=0; i < trn.length; ++i) {
  draw(points[trn[i][0]]--points[trn[i][1]]);
  draw(points[trn[i][2]]--points[trn[i][2]]);
  draw(points[trn[i][2]]--points[trn[i][0]]);
}
for(int i=0; i < np; ++i) dot(points[i],red);
