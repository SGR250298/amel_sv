library(data.table)

np_scores <- fread("output/025_pychopper/scores.txt")

np_scores[, p1_fwd_len := abs(`cDNA|1_start_fwd` - `cDNA|1_end_fwd`)]
np_scores[, p2_fwd_len := abs(`cDNA|2_start_fwd` - `cDNA|2_end_fwd`)]
np_scores[, p1_rev_len := abs(`cDNA|1_start_rev` - `cDNA|1_end_rev`)]
np_scores[, p2_rev_len := abs(`cDNA|2_start_rev` - `cDNA|2_end_rev`)]

scores <- melt(np_scores,
     id.vars = c("Read", "Classification"),
     measure.vars = c("p1_fwd_len",
                      "p2_fwd_len",
                      "p1_rev_len",
                      "p2_rev_len"))

fwrite (scores, "output/025_pychopper/primer_match")
