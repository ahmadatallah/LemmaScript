import «jsMath.def»

set_option loom.semantics.termination "total"
set_option loom.semantics.choice "demonic"

prove_correct clampDays by
  loom_solve <;> (simp only [Pure.clampDays, MathMin, MathMax, LO, HI]; omega)

prove_correct distance by
  loom_solve <;> (simp only [Pure.distance, MathAbs]; split_ifs <;> omega)
