library('tidyverse')
library('readr')
library('gganimate')
library('gifski')


evfile="TEMPST.csv"

df <-read.csv(evfile, header = TRUE, sep=",")

pdf('Tem.pdf')


df %>% 
	group_by(MES, AÑO) %>%
	summarize(mean_value = mean(TEMP)) %>%	
	ggplot( aes(x = MES, y = mean_value, color=factor(AÑO)) )+
    geom_line(size = 2)+
	geom_point(size = 4)+
	labs(title = 'Temperatura en {frame_along}',
		 x = 'Mes', y = 'Temp-Media')

dev.off()

p <- df %>% 
	group_by(MES, AÑO) %>%
	summarize(mean_value = mean(TEMP)) %>%	
	ggplot( aes(x = MES, y = mean_value, color=factor(AÑO)) )+
	geom_line(size = 2)+
	geom_point(size = 4)+
	labs(title = 'Temperatura en {frame_along}',
		 x = 'Mes', y = 'Temp-Media')+
	theme_minimal()+
	transition_reveal(MES)

anim <- animate(p)
anim_save('Temperatura.gif', anim)