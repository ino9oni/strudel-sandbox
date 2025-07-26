/* prompt

Use : ChatGPT o3-pro
Prompt : 

# 目的
16小節作曲します

# ルールと制約
- Strudelの表記ルールに基づく
https://strudel.cc/workshop/getting-started/
- 8bit music, RPG field音楽

# 出力
- Strudelで再生可能なコード
*/

//////////////////////////////////////////////////////
// 16‑bar RPG field music – 8‑bit style (Strudel)   //
// copy‑paste into https://strudel.cc and press ⌃⏎ //
//////////////////////////////////////////////////////

// tempo: 120 BPM (30 cpm → 1 bar = 1 cycle)
setcpm(50)

// === Bass ==================================================
$:note("<[c2,g2] [c2,g2] [c2,g2] [c2,g2]  [g1,d2] [g1,d2] [g1,d2] [g1,d2]  [a1,e2] [a1,e2] [a1,e2] [a1,e2]  [f1,c2] [f1,c2] [f1,c2] [f1,c2]>")
  .s("square")
  .gain(0.7)

// === Melody ================================================
$:note("<c5 e5 g5 b5  a5 g5 e5 g5  g5 b5 d6 b5  a5 g5 e5 d5  a5 c6 e6 c6  b5 a5 g5 e5  f5 a5 c6 a5  g5 f5 e5 d5>")
  .s("sin")
  .dur(0.25)
  .gain(0.6)
  .room(0.7)

// === Arpeggio (fills the texture) ===========================
$:note("<c4e4g4 e4g4c5 g4c5e5 c5e5g5  g3b3d4 b3d4g4 d4g4b4 g4b4d5  a3c4e4 c4e4a4 e4a4c5 a4c5e5  f3a3c4 a3c4f4 c4f4a4 f4a4c5>/8")
  .s("triangle")
  .gain(0.4)

// === Percussion (808 kit) ==================================
$:sound("<hh hh hh sd  hh hh hh sd>*2")
  .bank("RolandTR808")
  .gain(0.5)
