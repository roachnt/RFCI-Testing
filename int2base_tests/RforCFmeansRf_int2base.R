genCFmeansRF_int2base <- function(int2base) {

results <- data.frame(row.names=seq(1, 10))

int2base_n_2_treat_df <- data.frame(Y=int2base$Y, n_2=int2base$n_2, n_0=int2base$n_0)
int2base_n_2_treat_nocnfd_df <- data.frame(Y=int2base$Y, n_2=int2base$n_2)
results[["n_2"]] <- CFmeansForDecileBinsRF(int2base_n_2_treat_df, "Y", "n_2")
results[["n_2_NC"]] <- CFmeansForDecileBinsRF(int2base_n_2_treat_nocnfd_df, "Y", "n_2")

int2base_n_4_treat_df <- data.frame(Y=int2base$Y, n_4=int2base$n_4, n_2=int2base$n_2, n_3=int2base$n_3)
int2base_n_4_treat_nocnfd_df <- data.frame(Y=int2base$Y, n_4=int2base$n_4)
results[["n_4"]] <- CFmeansForDecileBinsRF(int2base_n_4_treat_df, "Y", "n_4")
results[["n_4_NC"]] <- CFmeansForDecileBinsRF(int2base_n_4_treat_nocnfd_df, "Y", "n_4")

int2base_is_negative_2_treat_df <- data.frame(Y=int2base$Y, is_negative_2=int2base$is_negative_2, is_negative_0=int2base$is_negative_0)
int2base_is_negative_2_treat_nocnfd_df <- data.frame(Y=int2base$Y, is_negative_2=int2base$is_negative_2)
results[["is_negative_2"]] <- CFmeansForDecileBinsRF(int2base_is_negative_2_treat_df, "Y", "is_negative_2")
results[["is_negative_2_NC"]] <- CFmeansForDecileBinsRF(int2base_is_negative_2_treat_nocnfd_df, "Y", "is_negative_2")

int2base_n_3_treat_df <- data.frame(Y=int2base$Y, n_3=int2base$n_3, n_4=int2base$n_4, base_0=int2base$base_0)
int2base_n_3_treat_nocnfd_df <- data.frame(Y=int2base$Y, n_3=int2base$n_3)
results[["n_3"]] <- CFmeansForDecileBinsRF(int2base_n_3_treat_df, "Y", "n_3")
results[["n_3_NC"]] <- CFmeansForDecileBinsRF(int2base_n_3_treat_nocnfd_df, "Y", "n_3")

int2base_is_negative_0_treat_df <- data.frame(Y=int2base$Y, is_negative_0=int2base$is_negative_0)
int2base_is_negative_0_treat_nocnfd_df <- data.frame(Y=int2base$Y, is_negative_0=int2base$is_negative_0)
results[["is_negative_0"]] <- CFmeansForDecileBinsRF(int2base_is_negative_0_treat_df, "Y", "is_negative_0")
results[["is_negative_0_NC"]] <- CFmeansForDecileBinsRF(int2base_is_negative_0_treat_nocnfd_df, "Y", "is_negative_0")

int2base_n_5_treat_df <- data.frame(Y=int2base$Y, n_5=int2base$n_5, n_2=int2base$n_2, n_3=int2base$n_3)
int2base_n_5_treat_nocnfd_df <- data.frame(Y=int2base$Y, n_5=int2base$n_5)
results[["n_5"]] <- CFmeansForDecileBinsRF(int2base_n_5_treat_df, "Y", "n_5")
results[["n_5_NC"]] <- CFmeansForDecileBinsRF(int2base_n_5_treat_nocnfd_df, "Y", "n_5")



return(results)

}