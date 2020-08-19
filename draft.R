#y_test_result=NULL
#y=NULL
#id=0
#for(j in 1:5)
#{
#  set.seed(seed)
#  e =NULL
#  e[1] = ifelse(j==1,3.3,ifelse(j==2,2.3,ifelse(j==3,3,ifelse(j==4,2.6,ifelse(j==5,2,NULL)))))
#  error_y = rnorm(num[j],0,sqrt(var_y))
#  for(i in 2:num[j])
#  {
#    e[i] = zeta[j]+alpha[id:(id+num[j])][i]*x[id:(id+num[j])][i]+phi[j]*e[i-1]+
#      eta[id:(id+num[j])][i]*u[id:(id+num[j])][i]+error_y[i]
#  }
#  adf = adf.test(e)
#  y_test_result[j] = adf$p.value
#  y = c(y,e)
#  error_y =NULL
#  id=id+num[j]
#  
#}
#plot(as.ts(y))
#plot(cpt.mean(y,penalty='Manual',pen.value = 10,method='PELT')) 







# simulate alpha
#alpha = NULL
#var_alpha = 0.07
#alpha0 = c(2.5,2,2.5,2.2,1.6)/2
#rho3 = c(0.22,0.13,0.2,0.16,0.1)/2
#
#
#for(j in 1:5)
#{
#  set.seed(seed)
#  b=NULL
#  b = rnorm(num[j],alpha0[j],sqrt(var_alpha/(1-rho3[j]^2)))
#  error_alpha = rnorm(num[j],0,sqrt(var_alpha))
#  for(i in 2:num[j])
#  {
#    b[i] = alpha0[j] + rho3*(b[i-1]-alpha0[j])+error_alpha[i]
#  }
#  alpha = c(alpha,b)
#  error_alpha = NULL
#}
#
#plot(cpt.mean(alpha,penalty='Manual',pen.value = 2,method='PELT')) 
#
