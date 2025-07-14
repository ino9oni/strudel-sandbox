//////////////////////////////////////////////////////////////////////
// strudel-practice-01
//////////////////////////////////////////////////////////////////////
//--- how to play
// 1. open url https://strudel.cc/ with browser
// 2. copy and past below code 

//--- sample melody
setcps(0.5)
$:stack(
 note("<[c2 c3]*4 [bb1 bb2]*4 [f2 f3]*4 [eb2 eb3]*4>").color("white")._punchcard()  .color("cyan")
  .sound("sawtooth").lpf("200 1000 200 1000")
 ,sound("<[bd bd]*2>").bank("RolandTR909") 
 ,s("RolandTR808_bd RolandTR808_sd,RolandTR808_hh*8")
 ,note("[e#4]*4 [g#4]*4").sound(" gm_electric_guitar_muted").color("pink")._punchcard().color("cyan"))
$:stack(
  note("<a#6@2 e#6@2 g#6@2>*2").sound("piano").color("white")._punchcard().color("cyan")
  )
$:n(`<
[~ 0] 2 [0 1] [~ 2]
[~ 0] 1 [0 2] [~ 3]
[~ 0] 3 [0 1] [~ 2]
[~ 0] 2 [0 3] [~ 4]
[~ 0] 1 [0 1] [~ 3]
[~ 0] 2 [0 2] [~ 3]
[~ 0] 4 [0 4] [~ 2]
[~ 0] 2 [0 3] [~ 1]
>*4`)
//.scale("C5:minor")
.scale("C5:dorian")
//.sound("gm_synth_strings_1")
.sound("sawtooth")
._spectrum()
$:n(`<
[~/2 0] 6 [~ 0] 3 5 4 [~/2 0] 3 [6 ~] [6 ~]
[~ ]*8
[~/2 5] 4 [~ 3] [~] [~ 3] [~] [~/2 3] [7/4]
[~ ]*8
>*4`)
.scale("C5:minor")
//.scale("C5:dorian")
//.sound("gm_synth_strings_1")
.sound("gm_voice_oohs")._punchcard().color("cyan")
//.sound("piano")
