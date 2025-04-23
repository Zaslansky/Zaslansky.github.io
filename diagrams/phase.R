library(ggplot2)

ylim = c(-2,2)
x = {}
y = {}
lab = {}
toprange=pi*4
time=seq(-pi,toprange,0.0005)

newy=sin(time)
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("base",length(time)))

newy=sin(time-pi)
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("phase_opposite",length(time)))

newy=sin(time-pi)+sin(time)
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("sum",length(time)))

df = data.frame(x=x,y=y,lab=lab)

dfs = subset(df,lab=="base")
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1.25)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_base.jpg",width=7,height=4,unit="in")
 
dfs = subset(df,lab=="phase_opposite")
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1.25)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_anti.jpg",width=7,height=4,unit="in")

dfs = subset(df,lab=="sum")
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1.25)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_sum.jpg",width=7,height=4,unit="in")

dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1.25)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_combined.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_combined_separate.jpg",width=7,height=5,unit="in")


x = {}
y = {}
lab = {}
toprange=pi*4

y1=sin(time)
x = c(x,time)
y = c(y,y1)
lab = c(lab,rep("base",length(time)))

y2=sin(time-pi)*1.5
x = c(x,time)
y = c(y,y2)
lab = c(lab,rep("antiphase_amplified",length(time)))

newy=y1+y2
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("sum",length(time)))

df = data.frame(x=x,y=y,lab=lab)

dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1.25)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_amplified.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_amplified_separate.jpg",width=7,height=5,unit="in")


x = {}
y = {}
lab = {}
toprange=pi*4

y1=sin(time)
x = c(x,time)
y = c(y,y1)
lab = c(lab,rep("base",length(time)))

y2=sin(time-(0.4*pi))
x = c(x,time)
y = c(y,y2)
lab = c(lab,rep("phase_off",length(time)))

newy=y1+y2
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("sum",length(time)))

df = data.frame(x=x,y=y,lab=lab)

dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1.25)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_off.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_off_separate.jpg",width=7,height=5,unit="in")


x = {}
y = {}
lab = {}
toprange=pi*4

y1=sin(time)
x = c(x,time)
y = c(y,y1)
lab = c(lab,rep("base",length(time)))

y2=sin(time-(0.8*pi))
x = c(x,time)
y = c(y,y2)
lab = c(lab,rep("phase_off",length(time)))

newy=y1+y2
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("sum",length(time)))

df = data.frame(x=x,y=y,lab=lab)

dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1.25)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_offbad.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_offbad_separate.jpg",width=7,height=5,unit="in")

x = {}
y = {}
lab = {}
toprange=pi*4

y1=sin(time)
x = c(x,time)
y = c(y,y1)
lab = c(lab,rep("base",length(time)))

y2=sin(2*time)
x = c(x,time)
y = c(y,y2)
lab = c(lab,rep("freq_2x",length(time)))

newy=y1+y2
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("sum",length(time)))

df = data.frame(x=x,y=y,lab=lab)

dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_2x.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_2x_separate.jpg",width=7,height=5,unit="in")

x = {}
y = {}
lab = {}
toprange=pi*4

y1=sin(time)
x = c(x,time)
y = c(y,y1)
lab = c(lab,rep("base",length(time)))

y2=sin(3*time)
x = c(x,time)
y = c(y,y2)
lab = c(lab,rep("freq_3x",length(time)))

newy=y1+y2
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("sum",length(time)))

df = data.frame(x=x,y=y,lab=lab)

dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_3x.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_3x_separate.jpg",width=7,height=5,unit="in")

x = {}
y = {}
lab = {}
toprange=pi*4

y1=sin(time)
x = c(x,time)
y = c(y,y1)
lab = c(lab,rep("base",length(time)))

y2=sin(3*(time-(1.5*pi)))
x = c(x,time)
y = c(y,y2)
lab = c(lab,rep("freq_3x",length(time)))

newy=y1+y2
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("sum",length(time)))

df = data.frame(x=x,y=y,lab=lab)

dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_3x_90.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_3x_90_separate.jpg",width=7,height=5,unit="in")


x = {}
y = {}
lab = {}
toprange=pi*4

y1=sin(time)
x = c(x,time)
y = c(y,y1)
lab = c(lab,rep("base",length(time)))

y2=sin(12*time)
x = c(x,time)
y = c(y,y2)
lab = c(lab,rep("freq_12x",length(time)))

newy=y1+y2
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("sum",length(time)))

df = data.frame(x=x,y=y,lab=lab)

dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_12x.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_12x_separate.jpg",width=7,height=5,unit="in")


x = {}
y = {}
lab = {}

y1=sin(time)
x = c(x,time)
y = c(y,y1)
lab = c(lab,rep("base",length(time)))

y2=sin(time)*1.25
x = c(x,time)
y = c(y,y2)
lab = c(lab,rep("base_amplified",length(time)))

newy=y1+y2
x = c(x,time)
y = c(y,newy)
lab = c(lab,rep("sum",length(time)))

df = data.frame(x=x,y=y,lab=lab)
ylim = c(-3,3)

dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_ampbase.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Wave")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_ampbase_separate.jpg",width=7,height=5,unit="in")

x = {}
y = {}
lab = {}

y1=sin(time)
x = c(x,time)
y = c(y,y1)
lab = c(lab,rep("0º",length(time)))

y2=sin(time-(1.5*pi))
x = c(x,time)
y = c(y,y2)
lab = c(lab,rep("90º",length(time)))

y3=sin(time-(1*pi))
x = c(x,time)
y = c(y,y3)
lab = c(lab,rep("180º",length(time)))

y4=sin(time-(0.5*pi))
x = c(x,time)
y = c(y,y4)
lab = c(lab,rep("270º",length(time)))

df = data.frame(x=x,y=y,lab=lab)
ylim = c(-1.5,1.5)
df$lab = factor(df$lab,levels(df$lab)[c(1,4,2,3)])
dfs = df
ggplot(dfs,aes(x,y,color=lab,group=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_vline(xintercept=0,color="gray")+
  geom_vline(xintercept=(2*pi),color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Phase")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)

ggsave("~/Documents/talks/diagrams/phase_phases.jpg",width=7,height=4,unit="in")

ggplot(dfs,aes(x,y,color=lab))+
  geom_hline(yintercept=0,color="gray")+
  geom_vline(xintercept=0,color="gray")+
  geom_vline(xintercept=(2*pi),color="gray")+
  geom_line(size=1)+
  xlab("Time (Arbitrary)")+
  ylab("Amplitude (Arbitrary)")+scale_color_discrete(name = "Phase")+
  coord_cartesian(xlim=c(0,3*pi),ylim=ylim)+
  facet_grid(lab~.)

ggsave("~/Documents/talks/diagrams/phase_phases_separate.jpg",width=7,height=7,unit="in")


