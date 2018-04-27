causal_map = dict(n_2=['n_0', 'n_1'], k_5=['k_7', 'k_4'], n_1=['n_2'], k_4=['k_5'], k_7=['k_3', 'k_6'], n_4=['n_5', 'i_2'], n_3=['n_0', 'n_1'], k_6=['k_7', 'k_4'], n_6=['n_7', 'n_4'], n_5=[
                  'n_7', 'n_4'], k_8=['k_3', 'k_6'], n_8=['n_3', 'n_6'], n_7=['n_3', 'n_6'], i_1=['i_2'], i_0=[], k_1=['k_2'], i_3=['i_0', 'i_1'], i_2=['i_0', 'i_1'], k_3=['k_0', 'k_1'], k_2=['k_0', 'k_1'],)


filename = "kthPrime"

with open("RforCFmeansRF_" + filename + ".R", "w") as f:
    f.write("genCFmeansRF_" + filename +
            " <- function(" + filename + ") {\n\n")
    f.write("results <- data.frame(row.names=seq(1, 10))\n\n")
    for variable in causal_map.keys():
        line = filename + "_" + variable + "_treat_df <- data.frame(Y=" + filename + "$Y, " + \
            variable + "=" + filename + "$" + variable
        if causal_map[variable]:
            for confounder in causal_map[variable]:
                line += (", " + confounder + "=" + filename + "$" + confounder)
        line += (")\n")
        f.write(line)
        # No confounding treatment
        f.write(filename + "_" + variable + "_treat_nocnfd_df <- data.frame(Y=" + filename + "$Y, " +
                variable + "=" + filename + "$" + variable + ")\n")
        f.write(
            "results[[\"" + variable + "\"]] <- CFmeansForDecileBinsRF(" + filename + "_" + variable + "_treat_df, \"Y\", \"" + variable + "\")\n")
        f.write(
            "results[[\"" + variable + "_NC\"]] <- CFmeansForDecileBinsRF(" + filename + "_" + variable + "_treat_nocnfd_df, \"Y\", \"" + variable + "\")\n")
        f.write("\n")
    f.write("return(results)\n\n}")
