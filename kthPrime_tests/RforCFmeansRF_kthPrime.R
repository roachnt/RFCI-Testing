genCFmeansRF_kthPrime <- function(kthPrime) {

results <- data.frame(row.names=seq(1, 10))

kthPrime_n_2_treat_df <- data.frame(Y=kthPrime$Y, n_2=kthPrime$n_2, n_0=kthPrime$n_0, n_1=kthPrime$n_1)
kthPrime_n_2_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, n_2=kthPrime$n_2)
results[["n_2"]] <- CFmeansForDecileBinsRF(kthPrime_n_2_treat_df, "Y", "n_2")
results[["n_2_NC"]] <- CFmeansForDecileBinsRF(kthPrime_n_2_treat_nocnfd_df, "Y", "n_2")

kthPrime_k_5_treat_df <- data.frame(Y=kthPrime$Y, k_5=kthPrime$k_5, k_7=kthPrime$k_7, k_4=kthPrime$k_4)
kthPrime_k_5_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, k_5=kthPrime$k_5)
results[["k_5"]] <- CFmeansForDecileBinsRF(kthPrime_k_5_treat_df, "Y", "k_5")
results[["k_5_NC"]] <- CFmeansForDecileBinsRF(kthPrime_k_5_treat_nocnfd_df, "Y", "k_5")

kthPrime_n_1_treat_df <- data.frame(Y=kthPrime$Y, n_1=kthPrime$n_1, n_2=kthPrime$n_2)
kthPrime_n_1_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, n_1=kthPrime$n_1)
results[["n_1"]] <- CFmeansForDecileBinsRF(kthPrime_n_1_treat_df, "Y", "n_1")
results[["n_1_NC"]] <- CFmeansForDecileBinsRF(kthPrime_n_1_treat_nocnfd_df, "Y", "n_1")

kthPrime_k_4_treat_df <- data.frame(Y=kthPrime$Y, k_4=kthPrime$k_4, k_5=kthPrime$k_5)
kthPrime_k_4_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, k_4=kthPrime$k_4)
results[["k_4"]] <- CFmeansForDecileBinsRF(kthPrime_k_4_treat_df, "Y", "k_4")
results[["k_4_NC"]] <- CFmeansForDecileBinsRF(kthPrime_k_4_treat_nocnfd_df, "Y", "k_4")

kthPrime_k_7_treat_df <- data.frame(Y=kthPrime$Y, k_7=kthPrime$k_7, k_3=kthPrime$k_3, k_6=kthPrime$k_6)
kthPrime_k_7_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, k_7=kthPrime$k_7)
results[["k_7"]] <- CFmeansForDecileBinsRF(kthPrime_k_7_treat_df, "Y", "k_7")
results[["k_7_NC"]] <- CFmeansForDecileBinsRF(kthPrime_k_7_treat_nocnfd_df, "Y", "k_7")

kthPrime_n_4_treat_df <- data.frame(Y=kthPrime$Y, n_4=kthPrime$n_4, n_5=kthPrime$n_5, i_2=kthPrime$i_2)
kthPrime_n_4_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, n_4=kthPrime$n_4)
results[["n_4"]] <- CFmeansForDecileBinsRF(kthPrime_n_4_treat_df, "Y", "n_4")
results[["n_4_NC"]] <- CFmeansForDecileBinsRF(kthPrime_n_4_treat_nocnfd_df, "Y", "n_4")

kthPrime_n_3_treat_df <- data.frame(Y=kthPrime$Y, n_3=kthPrime$n_3, n_0=kthPrime$n_0, n_1=kthPrime$n_1)
kthPrime_n_3_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, n_3=kthPrime$n_3)
results[["n_3"]] <- CFmeansForDecileBinsRF(kthPrime_n_3_treat_df, "Y", "n_3")
results[["n_3_NC"]] <- CFmeansForDecileBinsRF(kthPrime_n_3_treat_nocnfd_df, "Y", "n_3")

kthPrime_k_6_treat_df <- data.frame(Y=kthPrime$Y, k_6=kthPrime$k_6, k_7=kthPrime$k_7, k_4=kthPrime$k_4)
kthPrime_k_6_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, k_6=kthPrime$k_6)
results[["k_6"]] <- CFmeansForDecileBinsRF(kthPrime_k_6_treat_df, "Y", "k_6")
results[["k_6_NC"]] <- CFmeansForDecileBinsRF(kthPrime_k_6_treat_nocnfd_df, "Y", "k_6")

kthPrime_n_6_treat_df <- data.frame(Y=kthPrime$Y, n_6=kthPrime$n_6, n_7=kthPrime$n_7, n_4=kthPrime$n_4)
kthPrime_n_6_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, n_6=kthPrime$n_6)
results[["n_6"]] <- CFmeansForDecileBinsRF(kthPrime_n_6_treat_df, "Y", "n_6")
results[["n_6_NC"]] <- CFmeansForDecileBinsRF(kthPrime_n_6_treat_nocnfd_df, "Y", "n_6")

kthPrime_n_5_treat_df <- data.frame(Y=kthPrime$Y, n_5=kthPrime$n_5, n_7=kthPrime$n_7, n_4=kthPrime$n_4)
kthPrime_n_5_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, n_5=kthPrime$n_5)
results[["n_5"]] <- CFmeansForDecileBinsRF(kthPrime_n_5_treat_df, "Y", "n_5")
results[["n_5_NC"]] <- CFmeansForDecileBinsRF(kthPrime_n_5_treat_nocnfd_df, "Y", "n_5")

kthPrime_k_8_treat_df <- data.frame(Y=kthPrime$Y, k_8=kthPrime$k_8, k_3=kthPrime$k_3, k_6=kthPrime$k_6)
kthPrime_k_8_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, k_8=kthPrime$k_8)
results[["k_8"]] <- CFmeansForDecileBinsRF(kthPrime_k_8_treat_df, "Y", "k_8")
results[["k_8_NC"]] <- CFmeansForDecileBinsRF(kthPrime_k_8_treat_nocnfd_df, "Y", "k_8")

kthPrime_n_8_treat_df <- data.frame(Y=kthPrime$Y, n_8=kthPrime$n_8, n_3=kthPrime$n_3, n_6=kthPrime$n_6)
kthPrime_n_8_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, n_8=kthPrime$n_8)
results[["n_8"]] <- CFmeansForDecileBinsRF(kthPrime_n_8_treat_df, "Y", "n_8")
results[["n_8_NC"]] <- CFmeansForDecileBinsRF(kthPrime_n_8_treat_nocnfd_df, "Y", "n_8")

kthPrime_n_7_treat_df <- data.frame(Y=kthPrime$Y, n_7=kthPrime$n_7, n_3=kthPrime$n_3, n_6=kthPrime$n_6)
kthPrime_n_7_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, n_7=kthPrime$n_7)
results[["n_7"]] <- CFmeansForDecileBinsRF(kthPrime_n_7_treat_df, "Y", "n_7")
results[["n_7_NC"]] <- CFmeansForDecileBinsRF(kthPrime_n_7_treat_nocnfd_df, "Y", "n_7")

kthPrime_i_1_treat_df <- data.frame(Y=kthPrime$Y, i_1=kthPrime$i_1, i_2=kthPrime$i_2)
kthPrime_i_1_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, i_1=kthPrime$i_1)
results[["i_1"]] <- CFmeansForDecileBinsRF(kthPrime_i_1_treat_df, "Y", "i_1")
results[["i_1_NC"]] <- CFmeansForDecileBinsRF(kthPrime_i_1_treat_nocnfd_df, "Y", "i_1")

kthPrime_i_0_treat_df <- data.frame(Y=kthPrime$Y, i_0=kthPrime$i_0)
kthPrime_i_0_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, i_0=kthPrime$i_0)
results[["i_0"]] <- CFmeansForDecileBinsRF(kthPrime_i_0_treat_df, "Y", "i_0")
results[["i_0_NC"]] <- CFmeansForDecileBinsRF(kthPrime_i_0_treat_nocnfd_df, "Y", "i_0")

kthPrime_k_1_treat_df <- data.frame(Y=kthPrime$Y, k_1=kthPrime$k_1, k_2=kthPrime$k_2)
kthPrime_k_1_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, k_1=kthPrime$k_1)
results[["k_1"]] <- CFmeansForDecileBinsRF(kthPrime_k_1_treat_df, "Y", "k_1")
results[["k_1_NC"]] <- CFmeansForDecileBinsRF(kthPrime_k_1_treat_nocnfd_df, "Y", "k_1")

kthPrime_i_3_treat_df <- data.frame(Y=kthPrime$Y, i_3=kthPrime$i_3, i_0=kthPrime$i_0, i_1=kthPrime$i_1)
kthPrime_i_3_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, i_3=kthPrime$i_3)
results[["i_3"]] <- CFmeansForDecileBinsRF(kthPrime_i_3_treat_df, "Y", "i_3")
results[["i_3_NC"]] <- CFmeansForDecileBinsRF(kthPrime_i_3_treat_nocnfd_df, "Y", "i_3")

kthPrime_i_2_treat_df <- data.frame(Y=kthPrime$Y, i_2=kthPrime$i_2, i_0=kthPrime$i_0, i_1=kthPrime$i_1)
kthPrime_i_2_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, i_2=kthPrime$i_2)
results[["i_2"]] <- CFmeansForDecileBinsRF(kthPrime_i_2_treat_df, "Y", "i_2")
results[["i_2_NC"]] <- CFmeansForDecileBinsRF(kthPrime_i_2_treat_nocnfd_df, "Y", "i_2")

kthPrime_k_3_treat_df <- data.frame(Y=kthPrime$Y, k_3=kthPrime$k_3, k_0=kthPrime$k_0, k_1=kthPrime$k_1)
kthPrime_k_3_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, k_3=kthPrime$k_3)
results[["k_3"]] <- CFmeansForDecileBinsRF(kthPrime_k_3_treat_df, "Y", "k_3")
results[["k_3_NC"]] <- CFmeansForDecileBinsRF(kthPrime_k_3_treat_nocnfd_df, "Y", "k_3")

kthPrime_k_2_treat_df <- data.frame(Y=kthPrime$Y, k_2=kthPrime$k_2, k_0=kthPrime$k_0, k_1=kthPrime$k_1)
kthPrime_k_2_treat_nocnfd_df <- data.frame(Y=kthPrime$Y, k_2=kthPrime$k_2)
results[["k_2"]] <- CFmeansForDecileBinsRF(kthPrime_k_2_treat_df, "Y", "k_2")
results[["k_2_NC"]] <- CFmeansForDecileBinsRF(kthPrime_k_2_treat_nocnfd_df, "Y", "k_2")

return(results)

}