sac = function(df) {
  df %>% mutate(sacc_dir = 
                  case_when(
                    SACCADE_DIR >= 67.5 & SACCADE_DIR <= 112.4999 ~ "Vertical",
                    SACCADE_DIR >= 247.5 & SACCADE_DIR <= 292.4999 ~ "Vertical",
                    SACCADE_DIR >= 0 & SACCADE_DIR <= 22.4999 ~ "Horizontal",
                    SACCADE_DIR >= 157.7 & SACCADE_DIR <= 202.4999 ~ "Horizontal",
                    SACCADE_DIR >= 337.5 & SACCADE_DIR <= 360 ~ "Horizontal",
                    SACCADE_DIR >= 22.5 & SACCADE_DIR <= 67.4999 ~ "Diagonal",
                    SACCADE_DIR >= 112.5 & SACCADE_DIR <= 157.4999 ~ "Diagonal",
                    SACCADE_DIR >= 202.5 & SACCADE_DIR <= 247.4999 ~ "Diagonal",
                    SACCADE_DIR >= 292.5 & SACCADE_DIR <= 337.4999 ~ "Diagonal",
                  )  
  )
}