library(neonUtilities)

#stack already downloaded data (from neon site)
stackByTable("~/Desktop/NEON_par-quantum-line-2/NEON.D11.CLBJ.DP1.00066.001.2019-01.basic.20190423T181117Z.zip")

#OR download directly via R
zipsByProduct(dpID="DP1.10026.001", site="all", package="expanded", savepath="~/Desktop/")
stackByTable("~/Desktop/filesToStack10026/", folder=T)

#OR download directly into R
cfc = loadByProduct(dpID="DP1.10026.001", site="all", package="expanded", check.size=F)
