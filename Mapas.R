# Librerías requeridas

library(UnalR)
library(UnalData)
library(dplyr)
library(ggplot2)

# SíNo Municipios ----

Aspira20201 <- Aspirantes %>% filter(YEAR == 2020, SEMESTRE == 1) %>% 
  select(Code_Dept = COD_DEP_NAC, Code_Mun = COD_CIU_NAC) %>% 
  Plot.Mapa(tipo = "SiNoMpios",
            titulo = "Aspirantes 2020-1",
            colores = c("#E69F00", "#999999"),
            # colores = c("green", "blue"),
            #colores = palette("Pastel 2")[c(1,2)],
            # colores = palette(hcl.colors(2, "Purples 2")),
            baldosas = c("CartoDB.Positron", "Esri.WorldStreetMap", "Esri.NatGeoWorldMap"),
            compacto = FALSE,
            opacidad = 0.8,
            textSize = 10,
            limpio = FALSE)
Aspira20201

# Departamentos (Deptos) ----

matri20202 <- Matriculados %>% filter(YEAR == 2020, SEMESTRE == 2) %>% 
  select(Code_Dept = COD_DEP_NAC, Code_Mun = COD_CIU_NAC) %>% 
  Plot.Mapa(tipo = "Deptos",
            titulo = "Matriculados 2020-2",
            cortes = c(0, 500, 2000, 10000, Inf),
            colores = c("#bdc9e1", "#67a9cf", "#1c9099", "#016c59"),
            # colores = palette(hcl.colors(4, "Temps")),
            baldosas = c("CartoDB.Positron", "Esri.WorldStreetMap", "Esri.NatGeoWorldMap"),
            compacto = FALSE,
            opacidad = 0.8,
            textSize = 10,
            limpio = TRUE)
matri20202

# Municipios ----


Graduados20201 <- Graduados %>% filter(YEAR == 2020, SEMESTRE == 1) %>% 
  select(Code_Dept = COD_DEP_NAC, Code_Mun = COD_CIU_NAC) %>% 
  Plot.Mapa(tipo = "Mpios",
            titulo = "Graduados 2020-2",
            cortes = c(0, 1, 5, 10, Inf),
            colores = c("#bdc9e1", "#67a9cf", "#1c9099", "#016c59"),
            baldosas = c("CartoDB.Positron", "Esri.WorldStreetMap", "Esri.NatGeoWorldMap"),
            compacto = FALSE,
            opacidad = 0.8,
            textSize = 10,
            limpio = FALSE)
Graduados20201

# Departamentos y municipios ----


Aspirantes20191 <- Aspirantes %>% filter(YEAR == 2019, SEMESTRE == 1) %>% 
  select(Code_Dept = COD_DEP_NAC, Code_Mun = COD_CIU_NAC) %>% 
  Plot.Mapa(tipo = "DeptoMpio",
            titulo = "Aspirantes 2019-1",
            cortes  = list(Deptos = c(0, 200, 500, 2000, 5000, Inf),
                           Mpios  = c(0, 10, 50, 100, 1000, Inf)),
            colores = list(Deptos = c('#fbb4b9', '#67a9cf','#2ca25f', '#756bb1', '#de2d26'),
                           Mpios  = c('#c2e699','#bdd7e7','#6baed6','#3182bd','#08519c')),
            # baldosas = c("CartoDB.Positron", "Esri.WorldStreetMap", "Esri.NatGeoWorldMap"),
            compacto = TRUE,
            opacidad = 0.8,
            textSize = 10,
            limpio = FALSE)

Aspirantes20191

