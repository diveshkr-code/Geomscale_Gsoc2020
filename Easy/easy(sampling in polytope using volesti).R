library(volesti)
library(ggplot2)

for(walk_type in c("BW", "CDHR", "RDHR") ){
  for(step_len in c(1,50,100,500)){
    P = GenCube(3, 'H')
    point_h = sample_points(P, N = 1000, WalkType = walk_type, walk_step = step_len)
    
    g = ggplot( data.frame( x=point_h[1,], y=point_h[2,] ) ) + geom_point( aes(x=x, y=y, color=walk_type) ) + 
        ggtitle( sprintf("Step Size=%s", step_len), sprintf("Walk Type=%s", walk_type) )
    plot(g)
  }
}
