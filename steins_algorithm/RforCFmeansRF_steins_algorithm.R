genCFmeansRF_steins_algorithm <- function(steins_algorithm) {

results <- data.frame(row.names=seq(1, 10))

steins_algorithm_a_10_treat_df <- data.frame(Y=steins_algorithm$Y, a_10=steins_algorithm$a_10, a_6=steins_algorithm$a_6, a_8=steins_algorithm$a_8)
steins_algorithm_a_10_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_10=steins_algorithm$a_10)
results[["a_10"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_10_treat_df, "Y", "a_10")
results[["a_10_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_10_treat_nocnfd_df, "Y", "a_10")

steins_algorithm_a_1_treat_df <- data.frame(Y=steins_algorithm$Y, a_1=steins_algorithm$a_1, a_2=steins_algorithm$a_2)
steins_algorithm_a_1_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_1=steins_algorithm$a_1)
results[["a_1"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_1_treat_df, "Y", "a_1")
results[["a_1_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_1_treat_nocnfd_df, "Y", "a_1")

steins_algorithm_b_2_treat_df <- data.frame(Y=steins_algorithm$Y, b_2=steins_algorithm$b_2, b_0=steins_algorithm$b_0, b_1=steins_algorithm$b_1)
steins_algorithm_b_2_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_2=steins_algorithm$b_2)
results[["b_2"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_2_treat_df, "Y", "b_2")
results[["b_2_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_2_treat_nocnfd_df, "Y", "b_2")

steins_algorithm_a_3_treat_df <- data.frame(Y=steins_algorithm$Y, a_3=steins_algorithm$a_3, a_1=steins_algorithm$a_1)
steins_algorithm_a_3_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_3=steins_algorithm$a_3)
results[["a_3"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_3_treat_df, "Y", "a_3")
results[["a_3_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_3_treat_nocnfd_df, "Y", "a_3")

steins_algorithm_a_2_treat_df <- data.frame(Y=steins_algorithm$Y, a_2=steins_algorithm$a_2, a_1=steins_algorithm$a_1)
steins_algorithm_a_2_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_2=steins_algorithm$a_2)
results[["a_2"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_2_treat_df, "Y", "a_2")
results[["a_2_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_2_treat_nocnfd_df, "Y", "a_2")

steins_algorithm_b_1_treat_df <- data.frame(Y=steins_algorithm$Y, b_1=steins_algorithm$b_1, b_2=steins_algorithm$b_2)
steins_algorithm_b_1_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_1=steins_algorithm$b_1)
results[["b_1"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_1_treat_df, "Y", "b_1")
results[["b_1_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_1_treat_nocnfd_df, "Y", "b_1")

steins_algorithm_a_5_treat_df <- data.frame(Y=steins_algorithm$Y, a_5=steins_algorithm$a_5, a_3=steins_algorithm$a_3, a_4=steins_algorithm$a_4)
steins_algorithm_a_5_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_5=steins_algorithm$a_5)
results[["a_5"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_5_treat_df, "Y", "a_5")
results[["a_5_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_5_treat_nocnfd_df, "Y", "a_5")

steins_algorithm_b_4_treat_df <- data.frame(Y=steins_algorithm$Y, b_4=steins_algorithm$b_4, b_5=steins_algorithm$b_5)
steins_algorithm_b_4_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_4=steins_algorithm$b_4)
results[["b_4"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_4_treat_df, "Y", "b_4")
results[["b_4_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_4_treat_nocnfd_df, "Y", "b_4")

steins_algorithm_b_3_treat_df <- data.frame(Y=steins_algorithm$Y, b_3=steins_algorithm$b_3, b_0=steins_algorithm$b_0, b_1=steins_algorithm$b_1)
steins_algorithm_b_3_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_3=steins_algorithm$b_3)
results[["b_3"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_3_treat_df, "Y", "b_3")
results[["b_3_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_3_treat_nocnfd_df, "Y", "b_3")

steins_algorithm_a_4_treat_df <- data.frame(Y=steins_algorithm$Y, a_4=steins_algorithm$a_4, a_5=steins_algorithm$a_5)
steins_algorithm_a_4_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_4=steins_algorithm$a_4)
results[["a_4"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_4_treat_df, "Y", "a_4")
results[["a_4_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_4_treat_nocnfd_df, "Y", "a_4")

steins_algorithm_b_6_treat_df <- data.frame(Y=steins_algorithm$Y, b_6=steins_algorithm$b_6, b_10=steins_algorithm$b_10, b_4=steins_algorithm$b_4)
steins_algorithm_b_6_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_6=steins_algorithm$b_6)
results[["b_6"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_6_treat_df, "Y", "b_6")
results[["b_6_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_6_treat_nocnfd_df, "Y", "b_6")

steins_algorithm_a_7_treat_df <- data.frame(Y=steins_algorithm$Y, a_7=steins_algorithm$a_7, b_6=steins_algorithm$b_6)
steins_algorithm_a_7_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_7=steins_algorithm$a_7)
results[["a_7"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_7_treat_df, "Y", "a_7")
results[["a_7_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_7_treat_nocnfd_df, "Y", "a_7")

steins_algorithm_a_6_treat_df <- data.frame(Y=steins_algorithm$Y, a_6=steins_algorithm$a_6, a_3=steins_algorithm$a_3, a_4=steins_algorithm$a_4)
steins_algorithm_a_6_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_6=steins_algorithm$a_6)
results[["a_6"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_6_treat_df, "Y", "a_6")
results[["a_6_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_6_treat_nocnfd_df, "Y", "a_6")

steins_algorithm_b_5_treat_df <- data.frame(Y=steins_algorithm$Y, b_5=steins_algorithm$b_5, b_10=steins_algorithm$b_10, b_4=steins_algorithm$b_4)
steins_algorithm_b_5_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_5=steins_algorithm$b_5)
results[["b_5"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_5_treat_df, "Y", "b_5")
results[["b_5_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_5_treat_nocnfd_df, "Y", "b_5")

steins_algorithm_a_9_treat_df <- data.frame(Y=steins_algorithm$Y, a_9=steins_algorithm$a_9, a_6=steins_algorithm$a_6, a_8=steins_algorithm$a_8)
steins_algorithm_a_9_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_9=steins_algorithm$a_9)
results[["a_9"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_9_treat_df, "Y", "a_9")
results[["a_9_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_9_treat_nocnfd_df, "Y", "a_9")

steins_algorithm_b_8_treat_df <- data.frame(Y=steins_algorithm$Y, b_8=steins_algorithm$b_8, b_7=steins_algorithm$b_7, b_6=steins_algorithm$b_6)
steins_algorithm_b_8_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_8=steins_algorithm$b_8)
results[["b_8"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_8_treat_df, "Y", "b_8")
results[["b_8_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_8_treat_nocnfd_df, "Y", "b_8")

steins_algorithm_b_7_treat_df <- data.frame(Y=steins_algorithm$Y, b_7=steins_algorithm$b_7, temp_0=steins_algorithm$temp_0)
steins_algorithm_b_7_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_7=steins_algorithm$b_7)
results[["b_7"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_7_treat_df, "Y", "b_7")
results[["b_7_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_7_treat_nocnfd_df, "Y", "b_7")

steins_algorithm_a_8_treat_df <- data.frame(Y=steins_algorithm$Y, a_8=steins_algorithm$a_8, a_7=steins_algorithm$a_7, a_9=steins_algorithm$a_9)
steins_algorithm_a_8_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, a_8=steins_algorithm$a_8)
results[["a_8"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_8_treat_df, "Y", "a_8")
results[["a_8_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_a_8_treat_nocnfd_df, "Y", "a_8")

steins_algorithm_k_1_treat_df <- data.frame(Y=steins_algorithm$Y, k_1=steins_algorithm$k_1, k_2=steins_algorithm$k_2)
steins_algorithm_k_1_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, k_1=steins_algorithm$k_1)
results[["k_1"]] <- CFmeansForDecileBinsRF(steins_algorithm_k_1_treat_df, "Y", "k_1")
results[["k_1_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_k_1_treat_nocnfd_df, "Y", "k_1")

steins_algorithm_k_0_treat_df <- data.frame(Y=steins_algorithm$Y, k_0=steins_algorithm$k_0)
steins_algorithm_k_0_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, k_0=steins_algorithm$k_0)
results[["k_0"]] <- CFmeansForDecileBinsRF(steins_algorithm_k_0_treat_df, "Y", "k_0")
results[["k_0_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_k_0_treat_nocnfd_df, "Y", "k_0")

steins_algorithm_b_9_treat_df <- data.frame(Y=steins_algorithm$Y, b_9=steins_algorithm$b_9, b_8=steins_algorithm$b_8, a_8=steins_algorithm$a_8)
steins_algorithm_b_9_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_9=steins_algorithm$b_9)
results[["b_9"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_9_treat_df, "Y", "b_9")
results[["b_9_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_9_treat_nocnfd_df, "Y", "b_9")

steins_algorithm_k_3_treat_df <- data.frame(Y=steins_algorithm$Y, k_3=steins_algorithm$k_3, k_0=steins_algorithm$k_0, k_1=steins_algorithm$k_1)
steins_algorithm_k_3_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, k_3=steins_algorithm$k_3)
results[["k_3"]] <- CFmeansForDecileBinsRF(steins_algorithm_k_3_treat_df, "Y", "k_3")
results[["k_3_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_k_3_treat_nocnfd_df, "Y", "k_3")

steins_algorithm_k_2_treat_df <- data.frame(Y=steins_algorithm$Y, k_2=steins_algorithm$k_2, k_0=steins_algorithm$k_0, k_1=steins_algorithm$k_1)
steins_algorithm_k_2_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, k_2=steins_algorithm$k_2)
results[["k_2"]] <- CFmeansForDecileBinsRF(steins_algorithm_k_2_treat_df, "Y", "k_2")
results[["k_2_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_k_2_treat_nocnfd_df, "Y", "k_2")

steins_algorithm_b_11_treat_df <- data.frame(Y=steins_algorithm$Y, b_11=steins_algorithm$b_11, b_3=steins_algorithm$b_3, b_9=steins_algorithm$b_9)
steins_algorithm_b_11_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_11=steins_algorithm$b_11)
results[["b_11"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_11_treat_df, "Y", "b_11")
results[["b_11_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_11_treat_nocnfd_df, "Y", "b_11")

steins_algorithm_b_10_treat_df <- data.frame(Y=steins_algorithm$Y, b_10=steins_algorithm$b_10, b_3=steins_algorithm$b_3, b_9=steins_algorithm$b_9)
steins_algorithm_b_10_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, b_10=steins_algorithm$b_10)
results[["b_10"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_10_treat_df, "Y", "b_10")
results[["b_10_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_b_10_treat_nocnfd_df, "Y", "b_10")

steins_algorithm_temp_0_treat_df <- data.frame(Y=steins_algorithm$Y, temp_0=steins_algorithm$temp_0, a_9=steins_algorithm$a_9)
steins_algorithm_temp_0_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, temp_0=steins_algorithm$temp_0)
results[["temp_0"]] <- CFmeansForDecileBinsRF(steins_algorithm_temp_0_treat_df, "Y", "temp_0")
results[["temp_0_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_temp_0_treat_nocnfd_df, "Y", "temp_0")

steins_algorithm_temp_1_treat_df <- data.frame(Y=steins_algorithm$Y, temp_1=steins_algorithm$temp_1, temp_0=steins_algorithm$temp_0, temp_2=steins_algorithm$temp_2)
steins_algorithm_temp_1_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, temp_1=steins_algorithm$temp_1)
results[["temp_1"]] <- CFmeansForDecileBinsRF(steins_algorithm_temp_1_treat_df, "Y", "temp_1")
results[["temp_1_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_temp_1_treat_nocnfd_df, "Y", "temp_1")

steins_algorithm_temp_2_treat_df <- data.frame(Y=steins_algorithm$Y, temp_2=steins_algorithm$temp_2, temp_1=steins_algorithm$temp_1)
steins_algorithm_temp_2_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, temp_2=steins_algorithm$temp_2)
results[["temp_2"]] <- CFmeansForDecileBinsRF(steins_algorithm_temp_2_treat_df, "Y", "temp_2")
results[["temp_2_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_temp_2_treat_nocnfd_df, "Y", "temp_2")

steins_algorithm_temp_3_treat_df <- data.frame(Y=steins_algorithm$Y, temp_3=steins_algorithm$temp_3, temp_1=steins_algorithm$temp_1)
steins_algorithm_temp_3_treat_nocnfd_df <- data.frame(Y=steins_algorithm$Y, temp_3=steins_algorithm$temp_3)
results[["temp_3"]] <- CFmeansForDecileBinsRF(steins_algorithm_temp_3_treat_df, "Y", "temp_3")
results[["temp_3_NC"]] <- CFmeansForDecileBinsRF(steins_algorithm_temp_3_treat_nocnfd_df, "Y", "temp_3")

return(results)

}