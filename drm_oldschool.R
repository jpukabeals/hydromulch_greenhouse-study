```{r}
# ?drm
# getMeanFunctions()
getMeanFunctions(3) #want 3 parameter with lower limit at 0

plot(drm(cum.emerg ~ rate.L,
         curveid=species,
         data = dat.emerg, fct = LL.3()))

# plot(drm(cum.emerg ~ rate.L,
#          curveid=species,
#          data = dat.emerg, fct = W1.3()))

plot(drm(cum.emerg ~ rate.L,
         curveid=species,
         data = dat.emerg, fct = W2.3()))  #good

# plot(drm(cum.emerg ~ rate.L,
#          curveid=species,
#          data = dat.emerg, fct = LL2.3()))

# plot(drm(cum.emerg ~ rate.L,
#          curveid=species,
#          data = dat.emerg, fct = AR.3()))

# plot(drm(cum.emerg ~ rate.L,
#          curveid=species,
#          data = dat.emerg, fct = MM.3()))


# W2.3 and LL.3 are best
w2.3nl <- drm(cum.emerg ~ rate.L,
              curveid=species,
              data = dat.emerg, fct = W2.3())

anova(emerg.nl,w2.3nl)
AIC(emerg.nl,w2.3nl)
# unclear which is better
plot(emerg.nl)
plot(w2.3nl)
```