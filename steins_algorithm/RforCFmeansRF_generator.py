causal_map = dict(a_10=['a_6', 'a_8'], a_1=['a_2'], b_2=['b_0', 'b_1'], a_3=['a_0', 'a_1'], a_2=['a_0', 'a_1'], b_1=['b_2'], a_5=['a_3', 'a_4'], b_4=['b_5'], b_3=['b_0', 'b_1'], a_4=['a_5'], b_6=['b_10', 'b_4'], a_7=['b_6'], a_6=['a_3', 'a_4'], b_5=['b_10', 'b_4'], a_9=[
                  'a_6', 'a_8'], b_8=['b_7', 'b_6'], b_7=['temp_0'], a_8=['a_7', 'a_9'], k_1=['k_2'], k_0=[], b_9=['b_8', 'a_8'], k_3=['k_0', 'k_1'], k_2=['k_0', 'k_1'], b_11=['b_3', 'b_9'], b_10=['b_3', 'b_9'], temp_0=['a_9'], temp_1=['temp_0', 'temp_2'], temp_2=['None', 'temp_1'], temp_3=['temp_1'],)


filename = "steins_algorithm"

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
