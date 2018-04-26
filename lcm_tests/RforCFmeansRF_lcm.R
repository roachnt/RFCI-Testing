genCFmeansRF_lcm <- function(lcm) {

results <- data.frame(row.names=seq(1, 10))

lcm_gcd_0_treat_df <- data.frame(Y=lcm$Y, gcd_0=lcm$gcd_0, den_5=lcm$den_5)
lcm_gcd_0_treat_nocnfd_df <- data.frame(Y=lcm$Y, gcd_0=lcm$gcd_0)
results[["gcd_0"]] <- CFmeansForDecileBinsRF(lcm_gcd_0_treat_df, "Y", "gcd_0")
results[["gcd_0_NC"]] <- CFmeansForDecileBinsRF(lcm_gcd_0_treat_nocnfd_df, "Y", "gcd_0")

lcm_lcm_0_treat_df <- data.frame(Y=lcm$Y, lcm_0=lcm$lcm_0, num1_0=lcm$num1_0, num2_0=lcm$num2_0, gcd_0=lcm$gcd_0)
lcm_lcm_0_treat_nocnfd_df <- data.frame(Y=lcm$Y, lcm_0=lcm$lcm_0)
results[["lcm_0"]] <- CFmeansForDecileBinsRF(lcm_lcm_0_treat_df, "Y", "lcm_0")
results[["lcm_0_NC"]] <- CFmeansForDecileBinsRF(lcm_lcm_0_treat_nocnfd_df, "Y", "lcm_0")

lcm_den_0_treat_df <- data.frame(Y=lcm$Y, den_0=lcm$den_0, num2_0=lcm$num2_0)
lcm_den_0_treat_nocnfd_df <- data.frame(Y=lcm$Y, den_0=lcm$den_0)
results[["den_0"]] <- CFmeansForDecileBinsRF(lcm_den_0_treat_df, "Y", "den_0")
results[["den_0_NC"]] <- CFmeansForDecileBinsRF(lcm_den_0_treat_nocnfd_df, "Y", "den_0")

lcm_den_1_treat_df <- data.frame(Y=lcm$Y, den_1=lcm$den_1, num1_0=lcm$num1_0)
lcm_den_1_treat_nocnfd_df <- data.frame(Y=lcm$Y, den_1=lcm$den_1)
results[["den_1"]] <- CFmeansForDecileBinsRF(lcm_den_1_treat_df, "Y", "den_1")
results[["den_1_NC"]] <- CFmeansForDecileBinsRF(lcm_den_1_treat_nocnfd_df, "Y", "den_1")

lcm_den_2_treat_df <- data.frame(Y=lcm$Y, den_2=lcm$den_2, den_0=lcm$den_0, den_1=lcm$den_1)
lcm_den_2_treat_nocnfd_df <- data.frame(Y=lcm$Y, den_2=lcm$den_2)
results[["den_2"]] <- CFmeansForDecileBinsRF(lcm_den_2_treat_df, "Y", "den_2")
results[["den_2_NC"]] <- CFmeansForDecileBinsRF(lcm_den_2_treat_nocnfd_df, "Y", "den_2")

lcm_den_3_treat_df <- data.frame(Y=lcm$Y, den_3=lcm$den_3, rem_2=lcm$rem_2)
lcm_den_3_treat_nocnfd_df <- data.frame(Y=lcm$Y, den_3=lcm$den_3)
results[["den_3"]] <- CFmeansForDecileBinsRF(lcm_den_3_treat_df, "Y", "den_3")
results[["den_3_NC"]] <- CFmeansForDecileBinsRF(lcm_den_3_treat_nocnfd_df, "Y", "den_3")

lcm_den_4_treat_df <- data.frame(Y=lcm$Y, den_4=lcm$den_4, den_2=lcm$den_2, den_3=lcm$den_3)
lcm_den_4_treat_nocnfd_df <- data.frame(Y=lcm$Y, den_4=lcm$den_4)
results[["den_4"]] <- CFmeansForDecileBinsRF(lcm_den_4_treat_df, "Y", "den_4")
results[["den_4_NC"]] <- CFmeansForDecileBinsRF(lcm_den_4_treat_nocnfd_df, "Y", "den_4")

lcm_num_0_treat_df <- data.frame(Y=lcm$Y, num_0=lcm$num_0, num1_0=lcm$num1_0)
lcm_num_0_treat_nocnfd_df <- data.frame(Y=lcm$Y, num_0=lcm$num_0)
results[["num_0"]] <- CFmeansForDecileBinsRF(lcm_num_0_treat_df, "Y", "num_0")
results[["num_0_NC"]] <- CFmeansForDecileBinsRF(lcm_num_0_treat_nocnfd_df, "Y", "num_0")

lcm_den_5_treat_df <- data.frame(Y=lcm$Y, den_5=lcm$den_5, den_2=lcm$den_2, den_3=lcm$den_3)
lcm_den_5_treat_nocnfd_df <- data.frame(Y=lcm$Y, den_5=lcm$den_5)
results[["den_5"]] <- CFmeansForDecileBinsRF(lcm_den_5_treat_df, "Y", "den_5")
results[["den_5_NC"]] <- CFmeansForDecileBinsRF(lcm_den_5_treat_nocnfd_df, "Y", "den_5")

lcm_num_5_treat_df <- data.frame(Y=lcm$Y, num_5=lcm$num_5, num_2=lcm$num_2, num_3=lcm$num_3)
lcm_num_5_treat_nocnfd_df <- data.frame(Y=lcm$Y, num_5=lcm$num_5)
results[["num_5"]] <- CFmeansForDecileBinsRF(lcm_num_5_treat_df, "Y", "num_5")
results[["num_5_NC"]] <- CFmeansForDecileBinsRF(lcm_num_5_treat_nocnfd_df, "Y", "num_5")

lcm_rem_3_treat_df <- data.frame(Y=lcm$Y, rem_3=lcm$rem_3, rem_0=lcm$rem_0, rem_1=lcm$rem_1)
lcm_rem_3_treat_nocnfd_df <- data.frame(Y=lcm$Y, rem_3=lcm$rem_3)
results[["rem_3"]] <- CFmeansForDecileBinsRF(lcm_rem_3_treat_df, "Y", "rem_3")
results[["rem_3_NC"]] <- CFmeansForDecileBinsRF(lcm_rem_3_treat_nocnfd_df, "Y", "rem_3")

lcm_rem_1_treat_df <- data.frame(Y=lcm$Y, rem_1=lcm$rem_1, num_3=lcm$num_3, den_3=lcm$den_3)
lcm_rem_1_treat_nocnfd_df <- data.frame(Y=lcm$Y, rem_1=lcm$rem_1)
results[["rem_1"]] <- CFmeansForDecileBinsRF(lcm_rem_1_treat_df, "Y", "rem_1")
results[["rem_1_NC"]] <- CFmeansForDecileBinsRF(lcm_rem_1_treat_nocnfd_df, "Y", "rem_1")

lcm_rem_2_treat_df <- data.frame(Y=lcm$Y, rem_2=lcm$rem_2, rem_0=lcm$rem_0, rem_1=lcm$rem_1)
lcm_rem_2_treat_nocnfd_df <- data.frame(Y=lcm$Y, rem_2=lcm$rem_2)
results[["rem_2"]] <- CFmeansForDecileBinsRF(lcm_rem_2_treat_df, "Y", "rem_2")
results[["rem_2_NC"]] <- CFmeansForDecileBinsRF(lcm_rem_2_treat_nocnfd_df, "Y", "rem_2")

lcm_num_1_treat_df <- data.frame(Y=lcm$Y, num_1=lcm$num_1, num2_0=lcm$num2_0)
lcm_num_1_treat_nocnfd_df <- data.frame(Y=lcm$Y, num_1=lcm$num_1)
results[["num_1"]] <- CFmeansForDecileBinsRF(lcm_num_1_treat_df, "Y", "num_1")
results[["num_1_NC"]] <- CFmeansForDecileBinsRF(lcm_num_1_treat_nocnfd_df, "Y", "num_1")

lcm_num_2_treat_df <- data.frame(Y=lcm$Y, num_2=lcm$num_2, num_0=lcm$num_0, num_1=lcm$num_1)
lcm_num_2_treat_nocnfd_df <- data.frame(Y=lcm$Y, num_2=lcm$num_2)
results[["num_2"]] <- CFmeansForDecileBinsRF(lcm_num_2_treat_df, "Y", "num_2")
results[["num_2_NC"]] <- CFmeansForDecileBinsRF(lcm_num_2_treat_nocnfd_df, "Y", "num_2")

lcm_rem_0_treat_df <- data.frame(Y=lcm$Y, rem_0=lcm$rem_0, num_2=lcm$num_2, den_2=lcm$den_2)
lcm_rem_0_treat_nocnfd_df <- data.frame(Y=lcm$Y, rem_0=lcm$rem_0)
results[["rem_0"]] <- CFmeansForDecileBinsRF(lcm_rem_0_treat_df, "Y", "rem_0")
results[["rem_0_NC"]] <- CFmeansForDecileBinsRF(lcm_rem_0_treat_nocnfd_df, "Y", "rem_0")

lcm_num_3_treat_df <- data.frame(Y=lcm$Y, num_3=lcm$num_3, den_4=lcm$den_4)
lcm_num_3_treat_nocnfd_df <- data.frame(Y=lcm$Y, num_3=lcm$num_3)
results[["num_3"]] <- CFmeansForDecileBinsRF(lcm_num_3_treat_df, "Y", "num_3")
results[["num_3_NC"]] <- CFmeansForDecileBinsRF(lcm_num_3_treat_nocnfd_df, "Y", "num_3")

lcm_num_4_treat_df <- data.frame(Y=lcm$Y, num_4=lcm$num_4, num_2=lcm$num_2, num_3=lcm$num_3)
lcm_num_4_treat_nocnfd_df <- data.frame(Y=lcm$Y, num_4=lcm$num_4)
results[["num_4"]] <- CFmeansForDecileBinsRF(lcm_num_4_treat_df, "Y", "num_4")
results[["num_4_NC"]] <- CFmeansForDecileBinsRF(lcm_num_4_treat_nocnfd_df, "Y", "num_4")

return(results)

}