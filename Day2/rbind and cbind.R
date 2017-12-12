new_hope<-c(460.998,314.4)
empire_strikes<-c(290.475, 247.900)
return_jedi<- c(309.306,165.8)

box_office<-c(new_hope,empire_strikes,return_jedi)
box_office

star_wars_matrix<-matrix(box_office, byrow=TRUE, nrow=3)
star_wars_matrix

region<-c("US", "NON-US")
titles<-c("A New Hope", "The Empire Strikes Back", "The Return of Jedi")
region
titles

rownames(star_wars_matrix)<-titles
colnames(star_wars_matrix)<-region

worldwide_vector<-rowSums(star_wars_matrix)
worldwide_vector

all_wars_matrix<-cbind(star_wars_matrix,worldwide_vector)
all_wars_matrix

The_Pahnatom_Menance<-c(474.5,552.5)
Attack_of_the_Clones<-c(310.7,318.7)
Revenge_of_the_Sith<-c(380.3,468.5)

box_office2<- c(The_Pahnatom_Menance,Attack_of_the_Clones,Revenge_of_the_Sith)

star_wars_matrix2<-matrix(box_office2, byrow=TRUE,nrow=3)
star_wars_matrix2


region2<-c("US", "NON-US")
titles2<-c("The Phantom Menance", "Attack of the Clones","The Revenge of the Sith")

colnames(star_wars_matrix2)<-region2
rownames(star_wars_matrix2)<-titles2


worldwide_vector2<-rowSums(star_wars_matrix2)
worldwide_vector2

all_wars_matrix2<-cbind(star_wars_matrix2,worldwide_vector2)
all_wars_matrix2

all_wars_matrix3<-rbind(all_wars_matrix,all_wars_matrix2)
all_wars_matrix3
