library(dplyr)
library(readr)
library(tidyverse)
library(ggplot2)
library(factoextra)
options(scipen = 999)

# Offensive plays
offense_p_and_r <- read_csv("SBAC_DATA_FINAL/Players/Offense/P&ROffense.csv")
offense_trans <- read_csv("SBAC_DATA_FINAL/Players/Offense/TransOffense.csv")
offense_short_roll <- read_csv("SBAC_DATA_FINAL/Players/Offense/ShrtRollOffense.csv")
offense_post <- read_csv("SBAC_DATA_FINAL/Players/Offense/PostOffense.csv")
offense_off_move <- read_csv("SBAC_DATA_FINAL/Players/Offense/OffMoveOffense.csv")
offense_off_cut <- read_csv("SBAC_DATA_FINAL/Players/Offense/OffCutOffense.csv")
offense_iso <- read_csv("SBAC_DATA_FINAL/Players/Offense/IsoOffense.csv")
offense_initation <- read_csv("SBAC_DATA_FINAL/Players/Offense/InitiationOffense.csv")
offense_gather <- read_csv("SBAC_DATA_FINAL/Players/Offense/GatherOffense.csv")
offense_fake_dho <- read_csv("SBAC_DATA_FINAL/Players/Offense/FakeDHOOffense.csv")
offense_downhill <- read_csv("SBAC_DATA_FINAL/Players/Offense/DownhillOffense.csv")
offense_dho <- read_csv("SBAC_DATA_FINAL/Players/Offense/DHOOffense.csv")
offense_closeout <- read_csv("SBAC_DATA_FINAL/Players/Offense/CloseoutOffense.csv")

offense_list <- list(offense_closeout, offense_dho, offense_downhill, offense_fake_dho,
                     offense_gather, offense_initation, offense_iso, offense_off_cut,
                     offense_off_move, offense_p_and_r, offense_post, offense_short_roll,
                     offense_trans)

# Defensive plays
defensive_p_and_r <- read_csv("SBAC_DATA_FINAL/Players/Defense/P&RDefense.csv")
defensive_trans <- read_csv("SBAC_DATA_FINAL/Players/Defense/TransDefense.csv")
defensive_short_roll <- read_csv("SBAC_DATA_FINAL/Players/Defense/ShrtRollDefense.csv")
defensive_post <- read_csv("SBAC_DATA_FINAL/Players/Defense/PostDefense.csv")
defensive_off_move <- read_csv("SBAC_DATA_FINAL/Players/Defense/OffMoveDefense.csv")
defensive_off_cut <- read_csv("SBAC_DATA_FINAL/Players/Defense/OffCutDefense.csv")
defensive_iso <- read_csv("SBAC_DATA_FINAL/Players/Defense/IsoDefense.csv")
defensive_initation <- read_csv("SBAC_DATA_FINAL/Players/Defense/InitiationDefense.csv")
defensive_gather <- read_csv("SBAC_DATA_FINAL/Players/Defense/GatherDefense.csv")
defensive_fake_dho <- read_csv("SBAC_DATA_FINAL/Players/Defense/FakeDHODefense.csv")
defensive_downhill <- read_csv("SBAC_DATA_FINAL/Players/Defense/DownhillDefense.csv")
defensive_dho <- read_csv("SBAC_DATA_FINAL/Players/Defense/DHODefense.csv")
defensive_closeout <- read_csv("SBAC_DATA_FINAL/Players/Defense/CloseoutDefense.csv")

defense_list <- list(defensive_closeout, defensive_dho, defensive_downhill,
                     defensive_fake_dho, defensive_gather, defensive_initation, defensive_iso,
                     defensive_off_cut, defensive_off_move, defensive_p_and_r, defensive_post,
                     defensive_short_roll, defensive_trans)

# Advantages created
adv_cre_p_and_r <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/P&ROffAdv.csv")
adv_cre_trans <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/TransOffAdv.csv")
adv_cre_short_roll <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/ShrtRollOffAdv.csv")
adv_cre_post <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/PostOffAdv.csv")
adv_cre_off_move <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/OffMoveOffAdv.csv")
adv_cre_off_cut <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/OffCutOffAdv.csv")
adv_cre_iso <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/IsoOffAdv.csv")
adv_cre_initation <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/InitiationOffAdv.csv")
adv_cre_gather <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/GatherOffAdv.csv")
adv_cre_fake_dho <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/FakeDHOOffAdv.csv")
adv_cre_downhill <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/DownhillOffAdv.csv")
adv_cre_dho <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/DHOOffAdv.csv")
adv_cre_closeout <- read_csv("SBAC_DATA_FINAL/Players/Advantages Created/CloseoutOffAdv.csv")

# Advantages prevented
adv_prev_p_and_r <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/P&RDefAdv.csv")
adv_prev_trans <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/TransDefAdv.csv")
adv_prev_short_roll <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/ShrtRollDefAdv.csv")
adv_prev_post <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/PostDefAdv.csv")
adv_prev_off_move <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/OffMoveDefAdv.csv")
adv_prev_off_cut <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/OffCutDefAdv.csv")
adv_prev_iso <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/IsoDefAdv.csv")
adv_prev_initation <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/InitiationDefAdv.csv")
adv_prev_gather <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/GatherDefAdv.csv")
adv_prev_fake_dho <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/FakeDHODefAdv.csv")
adv_prev_downhill <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/DownhillDefAdv.csv")
adv_prev_dho <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/DHODefAdv.csv")
adv_prev_closeout <- read_csv("SBAC_DATA_FINAL/Players/Advantages Prevented/CloseoutDefAdv.csv")

# Lineups
offensive_plays <- read_csv("SBAC_DATA_FINAL/Lineups/offensive_plays.csv")
creating_advantages <- read_csv("SBAC_DATA_FINAL/Lineups/creating_advantages.csv")
defensive_plays <- read_csv("SBAC_DATA_FINAL/Lineups/defensive_plays.csv")
preventing_advantages <- read_csv("SBAC_DATA_FINAL/Lineups/preventing_advantages.csv")


adv_cre_iso <- adv_cre_iso %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_closeout <- adv_cre_closeout %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_dho <- adv_cre_dho %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_fake_dho <- adv_cre_fake_dho %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_downhill <- adv_cre_downhill %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_initation <- adv_cre_initation %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_off_cut <- adv_cre_off_cut %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_off_move <- adv_cre_off_move %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_p_and_r <- adv_cre_p_and_r %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_post <- adv_cre_post %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_short_roll <- adv_cre_short_roll %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_trans <- adv_cre_trans %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))

adv_cre_gather <- adv_cre_gather %>%
  mutate(`Adv Mtn+` = round(`Adv Mtn` / pmax(`Adv Inh`, 1), 2))


names(offense_list) <- c("offense_closeout", "offense_dho", "offense_downhill", "offense_fake_dho",
                         "offense_gather", "offense_initation", "offense_iso", "offense_off_cut",
                         "offense_off_move", "offense_p_and_r", "offense_post", "offense_short_roll",
                         "offense_trans")

off_combined_data <- bind_rows(offense_list, .id = "play_type") %>%
  group_by(PLAYER, play_type) %>%
  summarise(total_opps = sum(Opps, na.rm = TRUE), .groups = "drop") %>%
  pivot_wider(
    names_from = play_type,
    values_from = total_opps,
    values_fill = 0
  )

cluster_data <- off_combined_data %>%
  column_to_rownames("PLAYER") %>%
  scale()

set.seed(123)
km_results <- kmeans(cluster_data, centers = 4, nstart = 25)

final_clusters <- off_combined_data %>%
  mutate(cluster_group = as.factor(km_results$cluster))

player_clusters <- final_clusters %>%
  select(
    PLAYER,
    cluster = cluster_group
  )


process_play_type <- function(adv_df, off_df, play_type_name, player_clusters) {
  combined <- adv_df %>%
    select(PLAYER, TEAM, Opps, `Adv Crt+`, `Adv Mtn+`) %>%
    inner_join(
      off_df %>% select(PLAYER, TEAM, PPC, `Exp PPC`, EPI),
      by = c("PLAYER", "TEAM")
    ) %>%
    left_join(player_clusters, by = "PLAYER") %>%
    mutate(play_type = play_type_name)
  
  shrunk <- combined %>%
    group_by(cluster) %>%
    mutate(
      k = median(Opps, na.rm = TRUE),
      cluster_mean_adv_crt = mean(`Adv Crt+`, na.rm = TRUE),
      cluster_mean_adv_mtn = mean(`Adv Mtn+`, na.rm = TRUE),
      cluster_mean_ppc = mean(PPC, na.rm = TRUE),
      cluster_mean_exp_ppc = mean(`Exp PPC`, na.rm = TRUE)
    ) %>%
    ungroup() %>%
    mutate(
      shrunk_adv_crt = (Opps / (Opps + k)) * `Adv Crt+` + (k / (Opps + k)) * cluster_mean_adv_crt,
      shrunk_adv_mtn = (Opps / (Opps + k)) * `Adv Mtn+` + (k / (Opps + k)) * cluster_mean_adv_mtn,
      shrunk_ppc = (Opps / (Opps + k)) * PPC + (k / (Opps + k)) * cluster_mean_ppc,
      shrunk_exp_ppc = (Opps / (Opps + k)) * `Exp PPC` + (k / (Opps + k)) * cluster_mean_exp_ppc
    )
  
  scaled <- shrunk %>%
    mutate(
      scaled_adv_crt = percent_rank(shrunk_adv_crt),
      scaled_adv_mtn = percent_rank(shrunk_adv_mtn),
      scaled_ppc = percent_rank(shrunk_ppc),
      scaled_exp_ppc = percent_rank(shrunk_exp_ppc),
      scaled_epi = percent_rank(EPI),
      adv_crt_volume = `Adv Crt+` * Opps,
      scaled_adv_crt_volume = percent_rank(adv_crt_volume),
      model1_score = (scaled_epi + scaled_adv_crt_volume) / 2,
      model2_score = (scaled_adv_crt + scaled_adv_mtn + scaled_exp_ppc) / 3
    )
  
  return(scaled)
}

all_play_types <- bind_rows(
  process_play_type(adv_cre_iso, offense_iso, "iso", player_clusters),
  process_play_type(adv_cre_closeout, offense_closeout, "closeout", player_clusters),
  process_play_type(adv_cre_dho, offense_dho, "dho", player_clusters),
  process_play_type(adv_cre_fake_dho, offense_fake_dho, "fake_dho", player_clusters),
  process_play_type(adv_cre_downhill, offense_downhill, "downhill", player_clusters),
  process_play_type(adv_cre_initation, offense_initation, "initiation", player_clusters),
  process_play_type(adv_cre_off_cut, offense_off_cut, "off_cut", player_clusters),
  process_play_type(adv_cre_off_move, offense_off_move, "off_move", player_clusters),
  process_play_type(adv_cre_p_and_r, offense_p_and_r, "p_and_r", player_clusters),
  process_play_type(adv_cre_post, offense_post, "post", player_clusters),
  process_play_type(adv_cre_short_roll, offense_short_roll, "short_roll", player_clusters),
  process_play_type(adv_cre_trans, offense_trans, "transition", player_clusters)
)

cluster_weights <- final_clusters %>%
  select(cluster_group, offense_closeout, offense_dho, offense_downhill, offense_fake_dho,
         offense_initation, offense_iso, offense_off_cut, offense_off_move,
         offense_p_and_r, offense_post, offense_short_roll, offense_trans) %>%
  group_by(cluster_group) %>%
  summarise(across(everything(), \(x) sum(x, na.rm = TRUE))) %>%
  mutate(total = rowSums(across(-cluster_group))) %>%
  mutate(across(-c(cluster_group, total), ~ . / total)) %>%
  select(-total) %>%
  pivot_longer(-cluster_group, names_to = "play_type_raw", values_to = "weight") %>%
  mutate(play_type = str_remove(play_type_raw, "offense_")) %>%
  select(cluster_group, play_type, weight)

player_scores <- all_play_types %>%
  mutate(cluster_group = as.factor(cluster)) %>%
  left_join(cluster_weights, by = c("cluster_group", "play_type")) %>%
  group_by(PLAYER, TEAM, cluster) %>%
  summarise(
    n_play_types = n(),
    final_model1 = sum(model1_score * weight, na.rm = TRUE),
    final_model2 = sum(model2_score * weight, na.rm = TRUE)
  ) %>%
  ungroup() %>%
  arrange(desc(final_model1))


adv_prev_list <- list(
  adv_prev_closeout, adv_prev_dho, adv_prev_downhill, adv_prev_fake_dho,
  adv_prev_initation, adv_prev_iso, adv_prev_off_cut, adv_prev_off_move,
  adv_prev_p_and_r, adv_prev_post, adv_prev_short_roll, adv_prev_trans
)

defensive_metric <- bind_rows(adv_prev_list) %>%
  group_by(PLAYER, TEAM) %>%
  summarise(
    total_def_opps = sum(`Opps Def`, na.rm = TRUE),
    total_adv_prev_plus = sum(`Adv Prev+` * `Opps Def`, na.rm = TRUE)
  ) %>%
  ungroup() %>%
  mutate(
    defensive_score = percent_rank(total_adv_prev_plus)
  ) %>%
  arrange(desc(defensive_score))

off_opps_total <- all_play_types %>%
  group_by(PLAYER, TEAM) %>%
  summarise(off_opps = sum(Opps, na.rm = TRUE), .groups = "drop")

player_scores <- player_scores %>%
  left_join(off_opps_total, by = c("PLAYER", "TEAM"))


unprotected_players <- read_csv("SBAC_DATA_FINAL/unprotected_players.csv")

unprotected_players <- unprotected_players %>%
  mutate(Available = case_when(
    Available == "Zach Lavine" ~ "Zach LaVine",
    Available == "Demar Derozan" ~ "DeMar DeRozan",
    Available == "Jakob Poetl" ~ "Jakob Poeltl",
    Available == "Wendell Carter Jr" ~ "Wendell Carter Jr.",
    Available == "Grant WIlliams" ~ "Grant Williams",
    Available == "TJ McConnell" ~ "T.J. McConnell",
    Available == "Kenrich WIlliams" ~ "Kenrich Williams",
    Available == "Walter Clayton Jr" ~ "Walter Clayton Jr.",
    Available == "Gary Trent Jr" ~ "Gary Trent Jr.",
    Available == "Sviatoslav Mykhailuk" ~ "Svi Mykhailiuk",
    Available == "Bryce MCGowens" ~ "Bryce McGowens",
    Available == "Olivier Maxence-Prosper" ~ "Olivier-Maxence Prosper",
    Available == "Nae'qwan Tomlin" ~ "Nae'Qwan Tomlin",
    Available == "Craig Porter Jr" ~ "Craig Porter",
    Available == "Andre Jackson Jr" ~ "Andre Jackson Jr.",
    Available == "RayJ Dennis" ~ "Rayj Dennis",
    Available == "EJ Liddell" ~ "E.J. Liddell",
    Available == "Yuki Kawamara" ~ "Yuki Kawamura",
    Available == "Tolu Smith III" ~ "Tolu Smith",
    Available == "Wendell Moore Jr" ~ "Wendell Moore Jr.",
    Available == "TyTy Washington Jr" ~ "TyTy Washington Jr.",
    Available == "Nick Smith Jr" ~ "Nick Smith Jr.",
    Available == "Braden Carlson" ~ "Branden Carlson",
    Available == "Patrick Baldwin Jr" ~ "Patrick Baldwin Jr.",
    Available == "David Jones-Garcia" ~ "David Jones Garcia",
    Available == "AJ Lawson" ~ "A.J. Lawson",
    Available == "Kevin McCullar Jr" ~ "Kevin McCullar Jr.",
    TRUE ~ Available
  ))


unprotected_player_offense <- player_scores %>%
  filter(PLAYER %in% unprotected_players$Available)

unprotected_player_defense <- defensive_metric %>%
  filter(PLAYER %in% unprotected_players$Available)


unprotected_combined <- unprotected_player_offense %>%
  select(PLAYER, TEAM, cluster, n_play_types, final_model1) %>%
  left_join(
    unprotected_player_defense %>% select(PLAYER, TEAM, total_def_opps, defensive_score),
    by = c("PLAYER", "TEAM")
  ) %>%
  mutate(
    off_score_ranked = percent_rank(final_model1),
    def_score_ranked = percent_rank(defensive_score),
    combined_score = (off_score_ranked + def_score_ranked) / 2
  ) %>%
  arrange(desc(combined_score))







