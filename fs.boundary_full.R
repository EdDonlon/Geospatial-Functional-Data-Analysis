fs.boundary_full<- function (r0 = 0.1, r = 0.5, l = 3, n.theta = 20) 
{
  rr <- r + (r - r0)
  theta <- seq(pi, pi/2, length = n.theta)
  x <- rr * cos(theta)
  y <- rr * sin(theta)
  theta <- seq(pi/2, -pi/2, length = 2 * n.theta)
  x <- c(x, (r - r0) * cos(theta) + l)
  y <- c(y, (r - r0) * sin(theta) + r)
  theta <- seq(pi/2, pi, length = n.theta)
  x <- c(x, r0 * cos(theta))
  y <- c(y, r0 * sin(theta))
  n <- length(x)
  x <- c(x, x[n:1])
  y <- c(y, -y[n:1])
  
  x_m = x;
  y_m = y;
  
  x_tmp = x_m[1:(n.theta-1)]; y_tmp = y_m[1:(n.theta-1)]
  
  x_tmp1 = seq(x_m[n.theta],x_m[n.theta+1],length=n.theta) 
  y_tmp1 = rep(y_m[n.theta],n.theta);
 
  x_tmp2 = x_m[(n.theta+2):(3.*n.theta-1)] 
  y_tmp2 = y_m[(n.theta+2):(3.*n.theta-1)]
  x_tmp2 = x_tmp2[seq(2,length(x_tmp2),by=5)]
  y_tmp2 = y_tmp2[seq(2,length(y_tmp2),by=5)]
  
  x_tmp3 = seq(x_m[3.*n.theta],x_m[3.*n.theta+1],length=n.theta) 
  y_tmp3 = rep(y_m[3.*n.theta],n.theta)
 
  x_tmp4 = x_m[(3.*n.theta+2):(5.*n.theta-1)] 
  y_tmp4 = y_m[(3.*n.theta+2):(5.*n.theta-1)]
  x_tmp4 = x_tmp4[seq(2,length(x_tmp4),by=10)]
  y_tmp4 = y_tmp4[seq(2,length(y_tmp4),by=10)]
  
  x_tmp5 = seq(x_m[5.*n.theta],x_m[5.*n.theta+1],length=n.theta);
  y_tmp5 = rep(y_m[5.*n.theta],n.theta)
  
  x_tmp6 = x_m[(5.*n.theta+2):(7.*n.theta-1)] 
  y_tmp6 = y_m[(5.*n.theta+2):(7.*n.theta-1)]
  x_tmp6 = x_tmp6[seq(2,length(x_tmp6),by=5)]
  y_tmp6 = y_tmp6[seq(2,length(y_tmp6),by=5)]
  
  x_tmp7 = seq(x_m[7.*n.theta],x_m[7.*n.theta+1],length=n.theta) 
  y_tmp7 = rep(y_m[7.*n.theta],n.theta)
  
  x_tmp8 = x_m[(7.*n.theta+2):(8.*n.theta-1)] 
  y_tmp8 = y_m[(7.*n.theta+2):(8.*n.theta-1)]

  x_m = c(x_tmp,x_tmp1,x_tmp2,x_tmp3,x_tmp4,x_tmp5,x_tmp6,x_tmp7,x_tmp8)
  y_m = c(y_tmp,y_tmp1,y_tmp2,y_tmp3,y_tmp4,y_tmp5,y_tmp6,y_tmp7,y_tmp8)
  
  return(list(x = x_m, y = y_m))
}