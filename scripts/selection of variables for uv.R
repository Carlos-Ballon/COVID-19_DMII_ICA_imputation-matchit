var_selec_uv <- function(data, valor_filtro) {
  data |>
    dplyr::filter(t2dm == valor_filtro) |>
    dplyr::select(
      # Demographic characteristics and clinical history
      edad,
      edad.c,
      sex,
      hta,
      obesity,
      
      # Signs and symptoms
      fever,
      tos,
      taquipnea,
      disnea,
      
      # Vital signs
      frecuencia_respiratoria,
      frecuencia_respiratoria.c,
      frecuencia_cardiaca,
      frecuencia_cardiaca.c,
      p_a_sistolica.c,
      p_a_diastolica.c,
      
      # Laboratory findings
      wbc,
      wbc.c,
      neutrofilos,
      neutrofilos.c,
      linfocitos,
      linfocitos.c,
      nlr,
      nlr.c,
      platelets,
      platelets.c,
      creatinine,
      urea,
      glucose,
      glucose.c,
      saturacion_de_oxigeno,
      saturacion_de_oxigeno.c,
      fio2,
      fio2.c,
      pafi,
      pafi.c,
      pao2,
      pao2.c,
      
      # Treatment
      corticoides,
      anticoagulantes,
      antipaludicos,
      pronacion,
      
      # outcomes
      outcome,
      outcome_ph,
      len_hosp_stay
    ) |>
    
    na.omit()
}
