# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# biomarker discovery using Bayesian models implemented in Stan Use hsstan With (In) R Software
install.packages("hsstan")
library("hsstan")
hsstan = read.csv("https://raw.githubusercontent.com/timbulwidodostp/hsstan/main/hsstan/hsstan.csv",sep = ";")
# Estimation biomarker discovery using Bayesian models implemented in Stan Use hsstan With (In) R Software
## baseline model with only clinical covariates
hsstan_1 <- hsstan(hsstan, Y ~ age + sex)
print(hsstan_1)
## model with additional predictors
hsstan_2 <- hsstan(hsstan, Y ~ age + sex, penalized=colnames(hsstan)[3:10])
print(hsstan_2)
## behaviour of the sampler
sampler.stats(hsstan_1)
sampler.stats(hsstan_2)
## approximate leave-one-out cross-validation with Pareto smoothed
## importance sampling
loo(hsstan_1)
loo(hsstan_2)
# biomarker discovery using Bayesian models implemented in Stan Use hsstan With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished