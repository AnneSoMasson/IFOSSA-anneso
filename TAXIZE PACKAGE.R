# utiliser le package taxize pour homogénéiser la taxonomie
micro_arthropodes_2
#####
library(taxize)
 
?gnr_resolve
class_nema <- gnr_resolve( nematodes_1$name , best_match_only = TRUE)
calss_nema %>% arrange(score)


class_arth <- gnr_resolve( micro_arthropodes_2$best_ID , best_match_only = TRUE)
class_arth %>%  arrange(score)

# Interactive name selection " l'identifiant unique

############################################
nematodes_uid <- get_uid("Acrobeles")
classification_nematode <- classification(nematodes_uid)
print(classification_nematode)

###########################################
micro_arth_uid <- get_uid("Acari")
classification_micro_arth <- classification(micro_arth_uid)
print(classification_micro_arth)

##############################

tax_name("acari", get = "ordre", db = "ncbi")

#################################################




head(classification_nematode)
head(micro_arthropodes_2) 

