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