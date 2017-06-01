###get tabulation for the new mods

###first aggregate galnac_s_t glnac_s_t methy_r_k together 

###so now I have acety sumoy methy galnac glcnac five mods this is actually easier to do

####with different der/pder threshold 0.01 0.05 0.1 0.2



###how do I merge?


methy_k_rf=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_k_test/site_annotation.tsv")
methy_k_rf_train=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_k_train/site_annotation_rf_train.tsv")

methy_k_svm=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_k_test/site_annotation_svm.tsv")
methy_k_svm_train=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_k_train/site_annotation_svm_train.tsv")


methy_r_rf=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_r_test/site_annotation.tsv")
methy_r_rf_train=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_r_train/site_annotation_rf_train.tsv")

methy_r_svm=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_r_test/site_annotation_svm.tsv")
methy_r_svm_train=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_r_train/site_annotation_svm_train.tsv")



methy_rf=rbind(methy_r_rf,methy_k_rf)
methy_rf_train=rbind(methy_r_rf_train,methy_k_rf_train)
methy_svm=rbind(methy_r_svm,methy_k_svm)
methy_svm_train=rbind(methy_r_svm_train,methy_k_svm_train)

write.table(methy_rf,"/Users/ginny/PTMtopographer_DEC/bin/methy_test/site_annotation.tsv",
            quote=F, row.names = F,sep="\t")

write.table(methy_rf_train,"/Users/ginny/PTMtopographer_DEC/bin/methy_train/site_annotation_rf_train.tsv",
            quote=F, row.names = F,sep="\t")

write.table(methy_svm,"/Users/ginny/PTMtopographer_DEC/bin/methy_test/site_annotation_svm.tsv",
            quote=F, row.names = F,sep="\t")

write.table(methy_svm_train,"/Users/ginny/PTMtopographer_DEC/bin/methy_train/site_annotation_svm_train.tsv",
            quote=F, row.names = F,sep="\t")



#######galnac
galnac_s_rf=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_s_test/site_annotation.tsv")
galnac_s_rf_train=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_s_train/site_annotation_rf_train.tsv")

galnac_s_svm=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_s_test/site_annotation_svm.tsv")
galnac_s_svm_train=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_s_train/site_annotation_svm_train.tsv")


galnac_t_rf=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_t_test/site_annotation.tsv")
galnac_t_rf_train=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_t_train/site_annotation_rf_train.tsv")

galnac_t_svm=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_t_test/site_annotation_svm.tsv")
galnac_t_svm_train=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_t_train/site_annotation_svm_train.tsv")


galnac_rf=rbind(galnac_s_rf,galnac_t_rf)
galnac_rf_train=rbind(galnac_s_rf_train,galnac_t_rf_train)
galnac_svm=rbind(galnac_s_svm,galnac_t_svm)
galnac_svm_train=rbind(galnac_s_svm_train,galnac_t_svm_train)


write.table(galnac_rf,"/Users/ginny/PTMtopographer_DEC/bin/galnac_test/site_annotation.tsv",
            quote=F, row.names = F,sep="\t")

write.table(galnac_rf_train,"/Users/ginny/PTMtopographer_DEC/bin/galnac_train/site_annotation_rf_train.tsv",
            quote=F, row.names = F,sep="\t")

write.table(galnac_svm,"/Users/ginny/PTMtopographer_DEC/bin/galnac_test/site_annotation_svm.tsv",
            quote=F, row.names = F,sep="\t")

write.table(galnac_svm_train,"/Users/ginny/PTMtopographer_DEC/bin/galnac_train/site_annotation_svm_train.tsv",
            quote=F, row.names = F,sep="\t")



##########glcnac
glcnac_s_rf=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_s_test/site_annotation.tsv")
glcnac_s_rf_train=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_s_train/site_annotation_rf_train.tsv")

glcnac_s_svm=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_s_test/site_annotation_svm.tsv")
glcnac_s_svm_train=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_s_train/site_annotation_svm_train.tsv")


glcnac_t_rf=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_t_test/site_annotation.tsv")
glcnac_t_rf_train=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_t_train/site_annotation_rf_train.tsv")

glcnac_t_svm=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_t_test/site_annotation_svm.tsv")
glcnac_t_svm_train=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_t_train/site_annotation_svm_train.tsv")


glcnac_rf=rbind(glcnac_s_rf,glcnac_t_rf)
glcnac_rf_train=rbind(glcnac_s_rf_train,glcnac_t_rf_train)
glcnac_svm=rbind(glcnac_s_svm,glcnac_t_svm)
glcnac_svm_train=rbind(glcnac_s_svm_train,glcnac_t_svm_train)


write.table(glcnac_rf,"/Users/ginny/PTMtopographer_DEC/bin/glcnac_test/site_annotation.tsv",
            quote=F, row.names = F,sep="\t")

write.table(glcnac_rf_train,"/Users/ginny/PTMtopographer_DEC/bin/glcnac_train/site_annotation_rf_train.tsv",
            quote=F, row.names = F,sep="\t")

write.table(glcnac_svm,"/Users/ginny/PTMtopographer_DEC/bin/glcnac_test/site_annotation_svm.tsv",
            quote=F, row.names = F,sep="\t")

write.table(glcnac_svm_train,"/Users/ginny/PTMtopographer_DEC/bin/glcnac_train/site_annotation_svm_train.tsv",
            quote=F, row.names = F,sep="\t")


#####after merging I get the table












get_prediction=function(acety_site,outname1,outname2,outname3,outname4)
{
  #acety_site=methy_r_site_rf_train
  
  acety_site_gder=acety_site$global_dfdr
  acety_site_pder=acety_site$pspc_dfdr
  
  minus=which(acety_site_pder>=0)
  
  
  vali_site=acety_site[minus,]
  
  der_score=cbind(acety_site_gder[minus],acety_site_pder[minus])
  
  acety_der=apply(der_score,1,min)
  rf_prediction_1=which(acety_der<=0.01)
  rf_prediction_2=which(acety_der<=0.05)
  rf_prediction_3=which(acety_der<=0.1)
  rf_prediction_4=which(acety_der<=0.2)
  
  write.table(vali_site[rf_prediction_1,],outname1,row.names = F,quote = F,sep="\t")
  write.table(vali_site[rf_prediction_2,],outname2,row.names = F,quote = F,sep="\t")
  write.table(vali_site[rf_prediction_3,],outname3,row.names = F,quote = F,sep="\t")
  write.table(vali_site[rf_prediction_4,],outname4,row.names = F,quote = F,sep="\t")
  
}



get_combine=function(train_rf,pred_rf,train_svm,pred_svm,output_name)
{
  library(data.table)
  #train_rf=sumoy_train_rf
  #pred_rf=sumoy_pred_rf
  #train_svm=sumoy_train_svm
  #pred_svm=sumoy_pred_svm
  
  sumoy_train_rf=fread(train_rf)
  sumoy_pred_rf=fread(pred_rf)
  sumoy_train_svm=fread(train_svm)
  sumoy_pred_svm=fread(pred_svm)
  
  ind_train_rf=rep("train",nrow(sumoy_train_rf))
  ind_train_svm=rep("train",nrow(sumoy_train_svm))
  ind_pred_rf=rep("pred",nrow(sumoy_pred_rf))
  ind_pred_svm=rep("pred",nrow(sumoy_pred_svm))
  
  train_rf=cbind(ind_train_rf,sumoy_train_rf)
  train_svm=cbind(ind_train_svm,sumoy_train_svm)
  pred_rf=cbind(ind_pred_rf,sumoy_pred_rf)
  pred_svm=cbind(ind_pred_svm,sumoy_pred_svm)
  
  colnames(train_rf)[1]="prot_ind"
  colnames(train_svm)[1]="prot_ind"
  colnames(pred_rf)[1]="prot_ind"
  colnames(pred_svm)[1]="prot_ind"
  
  
  
  sumoy_rf=as.data.frame(rbind(train_rf,pred_rf))
  srf=sumoy_rf[,-2]
  sumoy_svm=as.data.frame(rbind(train_svm,pred_svm))
  ssvm=sumoy_svm[,-2]
  
  thestring=colnames(srf)[c(c(1:32),c(36,37))]
  
  sm=merge(srf,ssvm,by.x=thestring,by.y=thestring,all=TRUE)
  
  oriname=colnames(sm)
  colnames(sm)=c(oriname[1:34],"rf_score","rf_der","rf_pder","svm_score","svm_der","svm_pder")
  
  write.table(sm,output_name,quote=F,row.names = F,sep="\t")
  
}




setwd("/Users/ginny/PTMtopographer_DEC/bin")

acety_rf_test=fread("acety_test/site_annotation.tsv")
acety_rf_train=fread("acety_train/site_annotation_rf_train.tsv")
acety_svm_test=fread("acety_test/site_annotation_svm.tsv")
acety_svm_train=fread("acety_train/site_annotation_svm_train.tsv")

outname1="acety_pred/acety_5_rf_test.tsv"
outname2="acety_pred/acety_10_rf_test.tsv"
outname3="acety_pred/acety_20_rf_test.tsv"



get_prediction(acety_rf_test, outname1,outname2,outname3)

outname="acety_pred/acety_1_rf_test.tsv"
get_prediction(acety_rf_test, outname)



outname1="acety_pred/acety_5_rf_train.tsv"
outname2="acety_pred/acety_10_rf_train.tsv"
outname3="acety_pred/acety_20_rf_train.tsv"

get_prediction(acety_rf_train, outname1,outname2,outname3)

outname="acety_pred/acety_1_rf_train.tsv"
get_prediction(acety_rf_train, outname)




outname1="acety_pred/acety_5_svm_test.tsv"
outname2="acety_pred/acety_10_svm_test.tsv"
outname3="acety_pred/acety_20_svm_test.tsv"

get_prediction(acety_svm_test, outname1,outname2,outname3)

outname="acety_pred/acety_1_svm_test.tsv"
get_prediction(acety_svm_test, outname)




outname1="acety_pred/acety_5_svm_train.tsv"
outname2="acety_pred/acety_10_svm_train.tsv"
outname3="acety_pred/acety_20_svm_train.tsv"

get_prediction(acety_svm_train, outname1,outname2,outname3)

outname="acety_pred/acety_1_svm_train.tsv"
get_prediction(acety_svm_train, outname)




get_combine("acety_pred/acety_5_rf_train.tsv","acety_pred/acety_5_rf_test.tsv",
            "acety_pred/acety_5_svm_train.tsv","acety_pred/acety_5_svm_test.tsv",
            "acety_pred/acety_5_combine.tsv")

get_combine("acety_pred/acety_10_rf_train.tsv","acety_pred/acety_10_rf_test.tsv",
            "acety_pred/acety_10_svm_train.tsv","acety_pred/acety_10_svm_test.tsv",
            "acety_pred/acety_10_combine.tsv")

get_combine("acety_pred/acety_20_rf_train.tsv","acety_pred/acety_20_rf_test.tsv",
            "acety_pred/acety_20_svm_train.tsv","acety_pred/acety_20_svm_test.tsv",
            "acety_pred/acety_20_combine.tsv")

get_combine("acety_pred/acety_1_rf_train.tsv","acety_pred/acety_1_rf_test.tsv",
            "acety_pred/acety_1_svm_train.tsv","acety_pred/acety_1_svm_test.tsv",
            "acety_pred/acety_1_combine.tsv")





###get the counts for the table

acety_5_combine=fread("acety_pred/acety_5_combine.tsv")

spseqs=which(substr(acety_5_combine$protein_ID,1,2)=="sp")

table(acety_5_combine[spseqs,]$psp_state)


acety_10_combine=fread("acety_pred/acety_10_combine.tsv")
spseqs=which(substr(acety_10_combine$protein_ID,1,2)=="sp")
table(acety_10_combine[spseqs,]$psp_state)

acety_20_combine=fread("acety_pred/acety_20_combine.tsv")
spseqs=which(substr(acety_20_combine$protein_ID,1,2)=="sp")
table(acety_20_combine[spseqs,]$psp_state)



acety_1_combine=fread("acety_pred/acety_1_combine.tsv")
spseqs=which(substr(acety_1_combine$protein_ID,1,2)=="sp")
table(acety_1_combine[spseqs,]$psp_state)



##############for sumoy


sumoy_rf_test=fread("sumoy_test/site_annotation.tsv")
sumoy_rf_train=fread("sumoy_train/site_annotation_rf_train.tsv")
sumoy_svm_test=fread("sumoy_test/site_annotation_svm.tsv")
sumoy_svm_train=fread("sumoy_train/site_annotation_svm_train.tsv")

outname1="sumoy_pred/sumoy_5_rf_test.tsv"
outname2="sumoy_pred/sumoy_10_rf_test.tsv"
outname3="sumoy_pred/sumoy_20_rf_test.tsv"

get_prediction(sumoy_rf_test, outname1,outname2,outname3)


outname="sumoy_pred/sumoy_1_rf_test.tsv"
get_prediction(sumoy_rf_test, outname)




outname1="sumoy_pred/sumoy_5_rf_train.tsv"
outname2="sumoy_pred/sumoy_10_rf_train.tsv"
outname3="sumoy_pred/sumoy_20_rf_train.tsv"

get_prediction(sumoy_rf_train, outname1,outname2,outname3)

outname="sumoy_pred/sumoy_1_rf_train.tsv"
get_prediction(sumoy_rf_train, outname)


outname1="sumoy_pred/sumoy_5_svm_test.tsv"
outname2="sumoy_pred/sumoy_10_svm_test.tsv"
outname3="sumoy_pred/sumoy_20_svm_test.tsv"

get_prediction(sumoy_svm_test, outname1,outname2,outname3)

outname="sumoy_pred/sumoy_1_svm_test.tsv"
get_prediction(sumoy_svm_test, outname)





outname1="sumoy_pred/sumoy_5_svm_train.tsv"
outname2="sumoy_pred/sumoy_10_svm_train.tsv"
outname3="sumoy_pred/sumoy_20_svm_train.tsv"

get_prediction(sumoy_svm_train, outname1,outname2,outname3)

outname="sumoy_pred/sumoy_1_svm_train.tsv"
get_prediction(sumoy_svm_train, outname)




get_combine("sumoy_pred/sumoy_5_rf_train.tsv","sumoy_pred/sumoy_5_rf_test.tsv",
            "sumoy_pred/sumoy_5_svm_train.tsv","sumoy_pred/sumoy_5_svm_test.tsv",
            "sumoy_pred/sumoy_5_combine.tsv")

get_combine("sumoy_pred/sumoy_10_rf_train.tsv","sumoy_pred/sumoy_10_rf_test.tsv",
            "sumoy_pred/sumoy_10_svm_train.tsv","sumoy_pred/sumoy_10_svm_test.tsv",
            "sumoy_pred/sumoy_10_combine.tsv")

get_combine("sumoy_pred/sumoy_20_rf_train.tsv","sumoy_pred/sumoy_20_rf_test.tsv",
            "sumoy_pred/sumoy_20_svm_train.tsv","sumoy_pred/sumoy_20_svm_test.tsv",
            "sumoy_pred/sumoy_20_combine.tsv")



get_combine("sumoy_pred/sumoy_1_rf_train.tsv","sumoy_pred/sumoy_1_rf_test.tsv",
            "sumoy_pred/sumoy_1_svm_train.tsv","sumoy_pred/sumoy_1_svm_test.tsv",
            "sumoy_pred/sumoy_1_combine.tsv")


sumoy_5_combine=fread("sumoy_pred/sumoy_5_combine.tsv")
spseqs=which(substr(sumoy_5_combine$protein_ID,1,2)=="sp")
table(sumoy_5_combine[spseqs,]$psp_state)


sumoy_10_combine=fread("sumoy_pred/sumoy_10_combine.tsv")
spseqs=which(substr(sumoy_10_combine$protein_ID,1,2)=="sp")
table(sumoy_10_combine[spseqs,]$psp_state)

sumoy_20_combine=fread("sumoy_pred/sumoy_20_combine.tsv")
spseqs=which(substr(sumoy_20_combine$protein_ID,1,2)=="sp")
table(sumoy_20_combine[spseqs,]$psp_state)

sumoy_1_combine=fread("sumoy_pred/sumoy_1_combine.tsv")
spseqs=which(substr(sumoy_1_combine$protein_ID,1,2)=="sp")
table(sumoy_1_combine[spseqs,]$psp_state)



############################methylation



methy_rf_test=fread("methy_test/site_annotation.tsv")
methy_rf_train=fread("methy_train/site_annotation_rf_train.tsv")
methy_svm_test=fread("methy_test/site_annotation_svm.tsv")
methy_svm_train=fread("methy_train/site_annotation_svm_train.tsv")

outname1="methy_pred/methy_5_rf_test.tsv"
outname2="methy_pred/methy_10_rf_test.tsv"
outname3="methy_pred/methy_20_rf_test.tsv"

get_prediction(methy_rf_test, outname1,outname2,outname3)


outname="methy_pred/methy_1_rf_test.tsv"
get_prediction(methy_rf_test, outname)




outname1="methy_pred/methy_5_rf_train.tsv"
outname2="methy_pred/methy_10_rf_train.tsv"
outname3="methy_pred/methy_20_rf_train.tsv"

get_prediction(methy_rf_train, outname1,outname2,outname3)

outname="methy_pred/methy_1_rf_train.tsv"
get_prediction(methy_rf_train, outname)





outname1="methy_pred/methy_5_svm_test.tsv"
outname2="methy_pred/methy_10_svm_test.tsv"
outname3="methy_pred/methy_20_svm_test.tsv"

get_prediction(methy_svm_test, outname1,outname2,outname3)

outname="methy_pred/methy_1_svm_test.tsv"
get_prediction(methy_svm_test, outname)





outname1="methy_pred/methy_5_svm_train.tsv"
outname2="methy_pred/methy_10_svm_train.tsv"
outname3="methy_pred/methy_20_svm_train.tsv"

get_prediction(methy_svm_train, outname1,outname2,outname3)

outname="methy_pred/methy_1_svm_train.tsv"
get_prediction(methy_svm_train, outname)




get_combine("methy_pred/methy_5_rf_train.tsv","methy_pred/methy_5_rf_test.tsv",
            "methy_pred/methy_5_svm_train.tsv","methy_pred/methy_5_svm_test.tsv",
            "methy_pred/methy_5_combine.tsv")

get_combine("methy_pred/methy_10_rf_train.tsv","methy_pred/methy_10_rf_test.tsv",
            "methy_pred/methy_10_svm_train.tsv","methy_pred/methy_10_svm_test.tsv",
            "methy_pred/methy_10_combine.tsv")

get_combine("methy_pred/methy_20_rf_train.tsv","methy_pred/methy_20_rf_test.tsv",
            "methy_pred/methy_20_svm_train.tsv","methy_pred/methy_20_svm_test.tsv",
            "methy_pred/methy_20_combine.tsv")

get_combine("methy_pred/methy_1_rf_train.tsv","methy_pred/methy_1_rf_test.tsv",
            "methy_pred/methy_1_svm_train.tsv","methy_pred/methy_1_svm_test.tsv",
            "methy_pred/methy_1_combine.tsv")




methy_5_combine=fread("methy_pred/methy_5_combine.tsv")
spseqs=which(substr(methy_5_combine$protein_ID,1,2)=="sp")
table(methy_5_combine[spseqs,]$psp_state)


methy_10_combine=fread("methy_pred/methy_10_combine.tsv")
spseqs=which(substr(methy_10_combine$protein_ID,1,2)=="sp")

table(methy_10_combine[spseqs,]$psp_state)


methy_20_combine=fread("methy_pred/methy_20_combine.tsv")
spseqs=which(substr(methy_20_combine$protein_ID,1,2)=="sp")
table(methy_20_combine[spseqs,]$psp_state)

methy_1_combine=fread("methy_pred/methy_1_combine.tsv")
spseqs=which(substr(methy_1_combine$protein_ID,1,2)=="sp")
table(methy_1_combine[spseqs,]$psp_state)





############################methylation_k



methy_k_rf_test=fread("methy_k_test/site_annotation.tsv")
methy_k_rf_train=fread("methy_k_train/site_annotation_rf_train.tsv")
methy_k_svm_test=fread("methy_k_test/site_annotation_svm.tsv")
methy_k_svm_train=fread("methy_k_train/site_annotation_svm_train.tsv")

outname1="methy_k_pred/methy_k_1_rf_test.tsv"
outname2="methy_k_pred/methy_k_5_rf_test.tsv"
outname3="methy_k_pred/methy_k_10_rf_test.tsv"
outname4="methy_k_pred/methy_k_20_rf_test.tsv"

get_prediction(methy_k_rf_test, outname1,outname2,outname3,outname4)


#get_prediction(methy_rf_test, outname)




outname1="methy_k_pred/methy_k_1_rf_train.tsv"
outname2="methy_k_pred/methy_k_5_rf_train.tsv"
outname3="methy_k_pred/methy_k_10_rf_train.tsv"
outname4="methy_k_pred/methy_k_20_rf_train.tsv"

get_prediction(methy_k_rf_train, outname1,outname2,outname3,outname4)

#get_prediction(methy_rf_train, outname)





outname1="methy_k_pred/methy_k_1_svm_test.tsv"
outname2="methy_k_pred/methy_k_5_svm_test.tsv"
outname3="methy_k_pred/methy_k_10_svm_test.tsv"
outname4="methy_k_pred/methy_k_20_svm_test.tsv"

get_prediction(methy_k_svm_test, outname1,outname2,outname3,outname4)

#get_prediction(methy_svm_test, outname)





outname1="methy_k_pred/methy_k_1_svm_train.tsv"
outname2="methy_k_pred/methy_k_5_svm_train.tsv"
outname3="methy_k_pred/methy_k_10_svm_train.tsv"
outname4="methy_k_pred/methy_k_20_svm_train.tsv"

get_prediction(methy_k_svm_train, outname1,outname2,outname3,outname4)


####so get combine next



#get_prediction(methy_svm_train, outname)


get_combine("methy_k_pred/methy_k_1_rf_train.tsv","methy_k_pred/methy_k_1_rf_test.tsv",
            "methy_k_pred/methy_k_1_svm_train.tsv","methy_k_pred/methy_k_1_svm_test.tsv",
            "methy_k_pred/methy_k_1_combine.tsv")


get_combine("methy_k_pred/methy_k_5_rf_train.tsv","methy_k_pred/methy_k_5_rf_test.tsv",
            "methy_k_pred/methy_k_5_svm_train.tsv","methy_k_pred/methy_k_5_svm_test.tsv",
            "methy_k_pred/methy_k_5_combine.tsv")

get_combine("methy_k_pred/methy_k_10_rf_train.tsv","methy_k_pred/methy_k_10_rf_test.tsv",
            "methy_k_pred/methy_k_10_svm_train.tsv","methy_k_pred/methy_k_10_svm_test.tsv",
            "methy_k_pred/methy_k_10_combine.tsv")

get_combine("methy_k_pred/methy_k_20_rf_train.tsv","methy_k_pred/methy_k_20_rf_test.tsv",
            "methy_k_pred/methy_k_20_svm_train.tsv","methy_k_pred/methy_k_20_svm_test.tsv",
            "methy_k_pred/methy_k_20_combine.tsv")



methy_k_5_combine=fread("methy_k_pred/methy_k_5_combine.tsv")
spseqs=which(substr(methy_k_5_combine$protein_ID,1,2)=="sp")
table(methy_k_5_combine[spseqs,]$psp_state)


methy_k_10_combine=fread("methy_k_pred/methy_k_10_combine.tsv")
spseqs=which(substr(methy_k_10_combine$protein_ID,1,2)=="sp")

table(methy_k_10_combine[spseqs,]$psp_state)


methy_k_20_combine=fread("methy_k_pred/methy_k_20_combine.tsv")
spseqs=which(substr(methy_k_20_combine$protein_ID,1,2)=="sp")
table(methy_k_20_combine[spseqs,]$psp_state)

methy_k_1_combine=fread("methy_k_pred/methy_k_1_combine.tsv")
spseqs=which(substr(methy_k_1_combine$protein_ID,1,2)=="sp")
table(methy_k_1_combine[spseqs,]$psp_state)





############################methylation_r



methy_r_rf_test=fread("methy_r_test/site_annotation.tsv")
methy_r_rf_train=fread("methy_r_train/site_annotation_rf_train.tsv")
methy_r_svm_test=fread("methy_r_test/site_annotation_svm.tsv")
methy_r_svm_train=fread("methy_r_train/site_annotation_svm_train.tsv")

outname1="methy_r_pred/methy_r_1_rf_test.tsv"
outname2="methy_r_pred/methy_r_5_rf_test.tsv"
outname3="methy_r_pred/methy_r_10_rf_test.tsv"
outname4="methy_r_pred/methy_r_20_rf_test.tsv"

get_prediction(methy_r_rf_test, outname1,outname2,outname3,outname4)


#get_prediction(methy_rf_test, outname)




outname1="methy_r_pred/methy_r_1_rf_train.tsv"
outname2="methy_r_pred/methy_r_5_rf_train.tsv"
outname3="methy_r_pred/methy_r_10_rf_train.tsv"
outname4="methy_r_pred/methy_r_20_rf_train.tsv"

get_prediction(methy_r_rf_train, outname1,outname2,outname3,outname4)

#get_prediction(methy_rf_train, outname)





outname1="methy_r_pred/methy_r_1_svm_test.tsv"
outname2="methy_r_pred/methy_r_5_svm_test.tsv"
outname3="methy_r_pred/methy_r_10_svm_test.tsv"
outname4="methy_r_pred/methy_r_20_svm_test.tsv"

get_prediction(methy_r_svm_test, outname1,outname2,outname3,outname4)

#get_prediction(methy_svm_test, outname)





outname1="methy_r_pred/methy_r_1_svm_train.tsv"
outname2="methy_r_pred/methy_r_5_svm_train.tsv"
outname3="methy_r_pred/methy_r_10_svm_train.tsv"
outname4="methy_r_pred/methy_r_20_svm_train.tsv"

get_prediction(methy_r_svm_train, outname1,outname2,outname3,outname4)


####so get combine next



#get_prediction(methy_svm_train, outname)


get_combine("methy_r_pred/methy_r_1_rf_train.tsv","methy_r_pred/methy_r_1_rf_test.tsv",
            "methy_r_pred/methy_r_1_svm_train.tsv","methy_r_pred/methy_r_1_svm_test.tsv",
            "methy_r_pred/methy_r_1_combine.tsv")


get_combine("methy_r_pred/methy_r_5_rf_train.tsv","methy_r_pred/methy_r_5_rf_test.tsv",
            "methy_r_pred/methy_r_5_svm_train.tsv","methy_r_pred/methy_r_5_svm_test.tsv",
            "methy_r_pred/methy_r_5_combine.tsv")

get_combine("methy_r_pred/methy_r_10_rf_train.tsv","methy_r_pred/methy_r_10_rf_test.tsv",
            "methy_r_pred/methy_r_10_svm_train.tsv","methy_r_pred/methy_r_10_svm_test.tsv",
            "methy_r_pred/methy_r_10_combine.tsv")

get_combine("methy_r_pred/methy_r_20_rf_train.tsv","methy_r_pred/methy_r_20_rf_test.tsv",
            "methy_r_pred/methy_r_20_svm_train.tsv","methy_r_pred/methy_r_20_svm_test.tsv",
            "methy_r_pred/methy_r_20_combine.tsv")



methy_r_5_combine=fread("methy_r_pred/methy_r_5_combine.tsv")
spseqs=which(substr(methy_r_5_combine$protein_ID,1,2)=="sp")
table(methy_r_5_combine[spseqs,]$psp_state)


methy_r_10_combine=fread("methy_r_pred/methy_r_10_combine.tsv")
spseqs=which(substr(methy_r_10_combine$protein_ID,1,2)=="sp")

table(methy_r_10_combine[spseqs,]$psp_state)


methy_r_20_combine=fread("methy_r_pred/methy_r_20_combine.tsv")
spseqs=which(substr(methy_r_20_combine$protein_ID,1,2)=="sp")
table(methy_r_20_combine[spseqs,]$psp_state)

methy_r_1_combine=fread("methy_r_pred/methy_r_1_combine.tsv")
spseqs=which(substr(methy_r_1_combine$protein_ID,1,2)=="sp")
table(methy_r_1_combine[spseqs,]$psp_state)





############galnac


galnac_rf_test=fread("galnac_test/site_annotation.tsv")
galnac_rf_train=fread("galnac_train/site_annotation_rf_train.tsv")
galnac_svm_test=fread("galnac_test/site_annotation_svm.tsv")
galnac_svm_train=fread("galnac_train/site_annotation_svm_train.tsv")

outname1="galnac_pred/galnac_5_rf_test.tsv"
outname2="galnac_pred/galnac_10_rf_test.tsv"
outname3="galnac_pred/galnac_20_rf_test.tsv"

get_prediction(galnac_rf_test, outname1,outname2,outname3)

outname="galnac_pred/galnac_1_rf_test.tsv"
get_prediction(galnac_rf_test, outname)




outname1="galnac_pred/galnac_5_rf_train.tsv"
outname2="galnac_pred/galnac_10_rf_train.tsv"
outname3="galnac_pred/galnac_20_rf_train.tsv"

get_prediction(galnac_rf_train, outname1,outname2,outname3)

outname="galnac_pred/galnac_1_rf_train.tsv"
get_prediction(galnac_rf_train, outname)





outname1="galnac_pred/galnac_5_svm_test.tsv"
outname2="galnac_pred/galnac_10_svm_test.tsv"
outname3="galnac_pred/galnac_20_svm_test.tsv"

get_prediction(galnac_svm_test, outname1,outname2,outname3)

outname="galnac_pred/galnac_1_svm_test.tsv"
get_prediction(galnac_svm_test, outname)



outname1="galnac_pred/galnac_5_svm_train.tsv"
outname2="galnac_pred/galnac_10_svm_train.tsv"
outname3="galnac_pred/galnac_20_svm_train.tsv"

get_prediction(galnac_svm_train, outname1,outname2,outname3)

outname="galnac_pred/galnac_1_svm_train.tsv"
get_prediction(galnac_svm_train, outname)




get_combine("galnac_pred/galnac_5_rf_train.tsv","galnac_pred/galnac_5_rf_test.tsv",
            "galnac_pred/galnac_5_svm_train.tsv","galnac_pred/galnac_5_svm_test.tsv",
            "galnac_pred/galnac_5_combine.tsv")


get_combine("galnac_pred/galnac_10_rf_train.tsv","galnac_pred/galnac_10_rf_test.tsv",
            "galnac_pred/galnac_10_svm_train.tsv","galnac_pred/galnac_10_svm_test.tsv",
            "galnac_pred/galnac_10_combine.tsv")

get_combine("galnac_pred/galnac_20_rf_train.tsv","galnac_pred/galnac_20_rf_test.tsv",
            "galnac_pred/galnac_20_svm_train.tsv","galnac_pred/galnac_20_svm_test.tsv",
            "galnac_pred/galnac_20_combine.tsv")


get_combine("galnac_pred/galnac_1_rf_train.tsv","galnac_pred/galnac_1_rf_test.tsv",
            "galnac_pred/galnac_1_svm_train.tsv","galnac_pred/galnac_1_svm_test.tsv",
            "galnac_pred/galnac_1_combine.tsv")



galnac_5_combine=fread("galnac_pred/galnac_5_combine.tsv")
spseqs=which(substr(galnac_5_combine$protein_ID,1,2)=="sp")
table(galnac_5_combine[spseqs,]$psp_state)

galnac_10_combine=fread("galnac_pred/galnac_10_combine.tsv")
spseqs=which(substr(galnac_10_combine$protein_ID,1,2)=="sp")
table(galnac_10_combine[spseqs,]$psp_state)

galnac_20_combine=fread("galnac_pred/galnac_20_combine.tsv")
spseqs=which(substr(galnac_20_combine$protein_ID,1,2)=="sp")
table(galnac_20_combine[spseqs,]$psp_state)



galnac_1_combine=fread("galnac_pred/galnac_1_combine.tsv")
spseqs=which(substr(galnac_1_combine$protein_ID,1,2)=="sp")
table(galnac_1_combine[spseqs,]$psp_state)


###############glcnac

glcnac_rf_test=fread("glcnac_test/site_annotation.tsv")
glcnac_rf_train=fread("glcnac_train/site_annotation_rf_train.tsv")
glcnac_svm_test=fread("glcnac_test/site_annotation_svm.tsv")
glcnac_svm_train=fread("glcnac_train/site_annotation_svm_train.tsv")

outname1="glcnac_pred/glcnac_5_rf_test.tsv"
outname2="glcnac_pred/glcnac_10_rf_test.tsv"
outname3="glcnac_pred/glcnac_20_rf_test.tsv"

get_prediction(glcnac_rf_test, outname1,outname2,outname3)

outname="glcnac_pred/glcnac_1_rf_test.tsv"
get_prediction(glcnac_rf_test, outname)



outname1="glcnac_pred/glcnac_5_rf_train.tsv"
outname2="glcnac_pred/glcnac_10_rf_train.tsv"
outname3="glcnac_pred/glcnac_20_rf_train.tsv"

get_prediction(glcnac_rf_train, outname1,outname2,outname3)

outname="glcnac_pred/glcnac_1_rf_train.tsv"
get_prediction(glcnac_rf_train, outname)



outname1="glcnac_pred/glcnac_5_svm_test.tsv"
outname2="glcnac_pred/glcnac_10_svm_test.tsv"
outname3="glcnac_pred/glcnac_20_svm_test.tsv"

get_prediction(glcnac_svm_test, outname1,outname2,outname3)

outname="glcnac_pred/glcnac_1_svm_test.tsv"
get_prediction(glcnac_svm_test, outname)




outname1="glcnac_pred/glcnac_5_svm_train.tsv"
outname2="glcnac_pred/glcnac_10_svm_train.tsv"
outname3="glcnac_pred/glcnac_20_svm_train.tsv"

get_prediction(glcnac_svm_train, outname1,outname2,outname3)


outname="glcnac_pred/glcnac_1_svm_train.tsv"
get_prediction(glcnac_svm_train, outname)



get_combine("glcnac_pred/glcnac_5_rf_train.tsv","glcnac_pred/glcnac_5_rf_test.tsv",
            "glcnac_pred/glcnac_5_svm_train.tsv","glcnac_pred/glcnac_5_svm_test.tsv",
            "glcnac_pred/glcnac_5_combine.tsv")


get_combine("glcnac_pred/glcnac_10_rf_train.tsv","glcnac_pred/glcnac_10_rf_test.tsv",
            "glcnac_pred/glcnac_10_svm_train.tsv","glcnac_pred/glcnac_10_svm_test.tsv",
            "glcnac_pred/glcnac_10_combine.tsv")

get_combine("glcnac_pred/glcnac_20_rf_train.tsv","glcnac_pred/glcnac_20_rf_test.tsv",
            "glcnac_pred/glcnac_20_svm_train.tsv","glcnac_pred/glcnac_20_svm_test.tsv",
            "glcnac_pred/glcnac_20_combine.tsv")



get_combine("glcnac_pred/glcnac_1_rf_train.tsv","glcnac_pred/glcnac_1_rf_test.tsv",
            "glcnac_pred/glcnac_1_svm_train.tsv","glcnac_pred/glcnac_1_svm_test.tsv",
            "glcnac_pred/glcnac_1_combine.tsv")


glcnac_5_combine=fread("glcnac_pred/glcnac_5_combine.tsv")
spseqs=which(substr(glcnac_5_combine$protein_ID,1,2)=="sp")
table(glcnac_5_combine[spseqs,]$psp_state)


glcnac_10_combine=fread("glcnac_pred/glcnac_10_combine.tsv")
spseqs=which(substr(glcnac_10_combine$protein_ID,1,2)=="sp")
table(glcnac_10_combine[spseqs,]$psp_state)


glcnac_20_combine=fread("glcnac_pred/glcnac_20_combine.tsv")
spseqs=which(substr(glcnac_20_combine$protein_ID,1,2)=="sp")
table(glcnac_20_combine[spseqs,]$psp_state)


glcnac_1_combine=fread("glcnac_pred/glcnac_1_combine.tsv")
spseqs=which(substr(glcnac_1_combine$protein_ID,1,2)=="sp")
table(glcnac_1_combine[spseqs,]$psp_state)



##########add length

library(data.table)

add_length_col=function(uniprot_s,galnac_s_combine,new_file_name)
{
  
  galnac_s_combine$protein_length=
    uniprot_s$protein_length[match(galnac_s_combine$protein_ID,uniprot_s$protein_ID)]
  
  
  old_df=as.data.frame(galnac_s_combine)
  
  new_df=old_df[,c(c(1,2,3,4,41),seq(5,40))]
  
  write.table(new_df,new_file_name,quote=F,row.names = F,sep="\t")
  
  
}


uniprot_s=fread("/Users/ginny/PTMtopographer_DEC/bin/protein_properties/protein_head_annotation_uniprot_s.tsv")
uniprot_t=fread("/Users/ginny/PTMtopographer_DEC/bin/protein_properties/protein_head_annotation_uniprot_t.tsv")
uniprot_k=fread("/Users/ginny/PTMtopographer_DEC/bin/protein_properties/protein_head_annotation_uniprot_k.tsv")
uniprot_r=fread("/Users/ginny/PTMtopographer_DEC/bin/protein_properties/protein_head_annotation_uniprot_r.tsv")

uni_s=data.frame(uniprot_s$protein_ID,uniprot_s$protein_length)
uni_t=data.frame(uniprot_t$protein_ID,uniprot_t$protein_length)
uni_k=data.frame(uniprot_k$protein_ID,uniprot_k$protein_length)
uni_r=data.frame(uniprot_r$protein_ID,uniprot_r$protein_length)

colnames(uni_s)=c("protein_ID","protein_length")
colnames(uni_t)=c("protein_ID","protein_length")
colnames(uni_k)=c("protein_ID","protein_length")
colnames(uni_r)=c("protein_ID","protein_length")

uni_st=unique(rbind(uni_s,uni_t))

uni_kr=unique(rbind(uni_k,uni_r))

acety_1_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/acety_pred/acety_1_combine.tsv")
add_length_col(uni_k, acety_1_combine, "acety_pred/acety_1_length_combine.tsv")


sumoy_1_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/sumoy_pred/sumoy_1_combine.tsv")
add_length_col(uni_k, sumoy_1_combine, "sumoy_pred/sumoy_1_length_combine.tsv")

methy_1_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_pred/methy_1_combine.tsv")
add_length_col(uni_kr,methy_1_combine, "methy_pred/methy_1_length_combine.tsv")

methy_k_1_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_k_pred/methy_k_1_combine.tsv")
add_length_col(uni_k,methy_k_1_combine, "methy_k_pred/methy_k_1_length_combine.tsv")

methy_r_1_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_r_pred/methy_r_1_combine.tsv")
add_length_col(uni_r,methy_r_1_combine, "methy_r_pred/methy_r_1_length_combine.tsv")



galnac_1_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_pred/galnac_1_combine.tsv")
add_length_col(uni_st, galnac_1_combine, "galnac_pred/galnac_1_length_combine.tsv")

glcnac_1_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_pred/glcnac_1_combine.tsv")
add_length_col(uni_st, glcnac_1_combine, "glcnac_pred/glcnac_1_length_combine.tsv")



#####modify the add length function for the training files only
add_length_col_train=function(uniprot_s,galnac_s_combine,new_file_name)
{
  
  #uniprot_s=uni_k
  #galnac_s_combine=acety_train
  
  galnac_s_combine$protein_length=
    uniprot_s$protein_length[match(galnac_s_combine$protein_ID,uniprot_s$protein_ID)]
  
  
  old_df=as.data.frame(galnac_s_combine)
  
  new_df=old_df[,c(c(1,2,3,4,38),seq(5,37))]
  
  write.table(new_df,new_file_name,quote=F,row.names = F,sep="\t")
  
  
}

acety_train=fread("/Users/ginny/PTMtopographer_DEC/bin/acety_train/site_annotation_rf_train.tsv")
add_length_col_train(uni_k, acety_train, "/Users/ginny/PTMtopographer_DEC/bin/acety_train/acety_train_rf_length.tsv")

methy_k_train=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_k_train/site_annotation_rf_train.tsv")
add_length_col_train(uni_k, methy_k_train, "/Users/ginny/PTMtopographer_DEC/bin/methy_k_train/methy_k_train_rf_length.tsv")

methy_r_train=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_r_train/site_annotation_rf_train.tsv")
add_length_col_train(uni_r, methy_r_train, "/Users/ginny/PTMtopographer_DEC/bin/methy_r_train/methy_r_train_rf_length.tsv")




#####get the sp seqs only

acety_1_length_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/acety_pred/acety_1_length_combine.tsv")

sp_which=which(substr(acety_1_length_combine$protein_ID,1,2)=="sp")

write.table(acety_1_length_combine[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/acety_pred/acety_sp_prediction.tsv",
            quote=F,row.names=F,sep="\t")


sumoy_1_length_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/sumoy_pred/sumoy_1_length_combine.tsv")

sp_which=which(substr(sumoy_1_length_combine$protein_ID,1,2)=="sp")

write.table(sumoy_1_length_combine[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/sumoy_pred/sumoy_sp_prediction.tsv",
            quote=F,row.names=F,sep="\t")

methy_1_length_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_pred/methy_1_length_combine.tsv")

sp_which=which(substr(methy_1_length_combine$protein_ID,1,2)=="sp")

write.table(methy_1_length_combine[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/methy_pred/methy_sp_prediction.tsv",
            quote=F,row.names=F,sep="\t")

methy_k_1_length_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_k_pred/methy_k_1_length_combine.tsv")

sp_which=which(substr(methy_k_1_length_combine$protein_ID,1,2)=="sp")

write.table(methy_k_1_length_combine[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/methy_k_pred/methy_k_sp_prediction.tsv",
            quote=F,row.names=F,sep="\t")


methy_r_1_length_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_r_pred/methy_r_1_length_combine.tsv")

sp_which=which(substr(methy_r_1_length_combine$protein_ID,1,2)=="sp")

write.table(methy_r_1_length_combine[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/methy_r_pred/methy_r_sp_prediction.tsv",
            quote=F,row.names=F,sep="\t")





galnac_1_length_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/galnac_pred/galnac_1_length_combine.tsv")

sp_which=which(substr(galnac_1_length_combine$protein_ID,1,2)=="sp")

write.table(galnac_1_length_combine[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/galnac_pred/galnac_sp_prediction.tsv",
            quote=F,row.names=F,sep="\t")



glcnac_1_length_combine=fread("/Users/ginny/PTMtopographer_DEC/bin/glcnac_pred/glcnac_1_length_combine.tsv")

sp_which=which(substr(glcnac_1_length_combine$protein_ID,1,2)=="sp")

write.table(glcnac_1_length_combine[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/glcnac_pred/glcnac_sp_prediction.tsv",
            quote=F,row.names=F,sep="\t")


#####for the psp training sets


acety_train_length=fread("/Users/ginny/PTMtopographer_DEC/bin/acety_train/acety_train_rf_length.tsv")

sp_which=which(substr(acety_train_length$protein_ID,1,2)=="sp")

write.table(acety_train_length[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/acety_train/acety_train_sp.tsv",
            quote=F,row.names=F,sep="\t")

methy_k_train_length=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_k_train/methy_k_train_rf_length.tsv")

sp_which=which(substr(methy_k_train_length$protein_ID,1,2)=="sp")

write.table(methy_k_train_length[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/methy_k_train/methy_k_train_sp.tsv",
            quote=F,row.names=F,sep="\t")



methy_r_train_length=fread("/Users/ginny/PTMtopographer_DEC/bin/methy_r_train/methy_r_train_rf_length.tsv")

sp_which=which(substr(methy_r_train_length$protein_ID,1,2)=="sp")

write.table(methy_r_train_length[sp_which,],
            "/Users/ginny/PTMtopographer_DEC/bin/methy_r_train/methy_r_train_sp.tsv",
            quote=F,row.names=F,sep="\t")


#####ok now ready to proceed to get the logo windows and plots




