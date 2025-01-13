X0419 <- read_excel("***")
#BCT变换
gammodel=gamlss(feature1~cs(age,df=3),family = BCT,data = X0419) 

plot(gammodel) 

summary(gammodel)

# 分位数曲线
centiles(gammodel, X0419$age, cent = c(25,50,75), ylab = "  ", xlab = " ", lty.centiles = c(2,1,2), 
         col.centiles = c("#5FA9D1"), lwd.cent = c(3,3.5,3), las = 1, bty = 'l', 
         main = "offset",ylim = c(0.2, 1.2),
         points = FALSE, legend = FALSE, xaxt = "n")
axis(side = 1, at = seq(1.5, 4.5, by = 0.5), labels = c("5yr", " ", " ", "18yr", "35yr", "60yr", ""), tcl = 0, padj = -1)
abline(v =3, lty = 2,col = "gray")