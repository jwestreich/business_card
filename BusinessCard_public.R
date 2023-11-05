library(ggplot2)
seqnum <- seq(-150, 150, by = 1)
data <- data.frame(seqnum, prob1 = dnorm(seqnum, 0, 15), prob2 = dnorm(seqnum, 0, 20), prob3 = dnorm(seqnum, 0, 30), prob4 = dnorm(seqnum, 0, 40), prob5 = dnorm(seqnum, 0, 50))
ggplot(data, aes(x = seqnum)) + 
  geom_line(aes(y = prob1), color = "red") +  geom_line(aes(y = prob2), color = "green") +  geom_line(aes(y = prob3), color = "blue") +  geom_line(aes(y = prob4), color = "purple") +  geom_line(aes(y = prob5), color = "orange") +
  xlim(-150, 0)+
  theme_void() +
  theme(panel.background = element_rect(fill = "white")) +
  annotate("text", x = -150, y = .025, label = "Jay R. Westreich", size = 12, hjust = 0)+
  annotate("text", x = -150, y = .021, label = "Data Analyst", size = 11, hjust = 0)+
  annotate("text", x = -150, y = .017, label = "Telling Stories with Data", size = 7, hjust = 0, fontface = "italic")+
  annotate("text", x = -150, y = .007, label = "Washington, D.C.\nEmail: jwestreich1@gmail.com\nGitHub: github.com/jwestreich\nWebsite: jaywestreich.com\nLinkedIn: thisisjayslinkedin.com", size = 5, hjust = 0)
