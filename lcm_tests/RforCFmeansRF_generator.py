causal_map = dict(gcd_0=['den_5'], lcm_0=['num1_0', 'num2_0', 'gcd_0'], den_0=['num2_0'], den_1=['num1_0'], den_2=['den_0', 'den_1'], den_3=['rem_2'], den_4=['den_2', 'den_3'], num_0=['num1_0'], den_5=['den_2', 'den_3'], num_5=[
                  'num_2', 'num_3'], rem_3=['rem_0', 'rem_1'], rem_1=['num_3', 'den_3'], rem_2=['rem_0', 'rem_1'], num_1=['num2_0'], num_2=['num_0', 'num_1'], rem_0=['num_2', 'den_2'], num_3=['den_4'], num_4=['num_2', 'num_3'],)


filename = "lcm"

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
