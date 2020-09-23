# par(mfrow=c(1,3))
# hist(pilot_data$vote16[pilot_data$vote20jb==1],ylim=c(0,1200))
# hist(pilot_data$vote16[pilot_data$vote20jb==2&pilot_data$vote16<=4],ylim=c(0,1200))
# hist(pilot_data$vote16[pilot_data$vote16<=4],ylim=c(0,1200))


# num_case=dim(pilot_data)[1]


# red=sum(pilot_data$vote16==1)
# blue=sum(pilot_data$vote16==2)
# other=sum(pilot_data$vote16!=2 & pilot_data$vote16!=1)
# red2red=sum(pilot_data$vote16==1 & pilot_data$vote20jb==1)/red
# blue2blue=sum(pilot_data$vote16==2 & pilot_data$vote20jb==2)/blue
# blue2red=sum(pilot_data$vote16==2 & pilot_data$vote20jb==1)/blue
# red2blue=sum(pilot_data$vote16==1 & pilot_data$vote20jb==2)/red
# other2red=sum(pilot_data$vote16!=2 & pilot_data$vote16!=1 & pilot_data$vote20jb==1)/other
# other2blue=sum(pilot_data$vote16!=2 & pilot_data$vote16!=1 & pilot_data$vote20jb==2)/other
# slice=c(red2red,blue2blue,blue2red,red2blue,other2red,other2blue)


# par(mfrow=c(1,2))
# substr(pilot_data$StartDate,1,9)
# hist(pilot_data$votemail1b[pilot_data$votemail1b!=77])
# hist(pilot_data$fttrump1[pilot_data$vote16==1])
# hist(pilot_data$ftobama1[pilot_data$ftobama1<=100 ])#& pilot_data$vote16==4])
# barplot(votemail1b)
# library(ggplot2)
# ggplot(pilot_data,aes(fill=))

heatmap.2(t(as.matrix(vote_heat)),dendrogram='none',Rowv = FALSE,Colv= FALSE,trace = 'none',col=colorRampPalette(c("#BBFFFF","#00868B")))

```{r}
par(mfrow=c(2,2))
hist(trump20$taxecon[trump20$taxecon<=7])
hist(biden20$taxecon[biden20$taxecon<=7])

hist(ifelse(trump20$billtax1==88,trump20$billtax2,trump20$billtax1))
hist(ifelse(biden20$billtax1==88,biden20$billtax2,biden20$billtax1))

hist(ifelse(trump20$guarinc1==88,trump20$guarinc2,trump20$guarinc1))
hist(ifelse(biden20$guarinc1==88,biden20$guarinc2,biden20$guarinc1))




par(mfrow=c(2,2))
hist(trump20$govsize1a[trump20$govsize1a<=2],breaks=2)
hist(biden20$govsize1a[biden20$govsize1a<=2],breaks=2)

hist( ifelse(trump20$govsize2==66,trump20$govsize3,trump20$govsize2)[trump20$govsize1a==8],xlim=c(1,7),breaks=100)
hist( ifelse(biden20$govsize2==66,biden20$govsize3,biden20$govsize2)[biden20$govsize1a==8],xlim=c(1,7),breaks=7)

par(mfrow=c(3,2))
hist(trump20$regulate1[trump20$regulate1<=5])
hist(biden20$regulate1[biden20$regulate1<=5])

hist(trump20$regulate2[trump20$regulate2<=7])
hist(biden20$regulate2[biden20$regulate2<=7])