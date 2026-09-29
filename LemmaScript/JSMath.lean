/-
  JSMath — Lean definitions for the `Math.*` helpers LemmaScript lowers to
  (`MathAbs`, `MathMin`, `MathMax`). They match the Dafny preamble functions of
  the same name. Marked `@[simp]` so `simp`/`loom_solve` unfold them to
  `min`/`max`/`if`, which `omega` handles.
-/

/-- JS `Math.abs(a)`. -/
@[simp] def MathAbs (a : Int) : Int := if a < 0 then -a else a

/-- JS `Math.min(a, b)`. -/
@[simp] def MathMin {α : Type} [Min α] (a b : α) : α := min a b

/-- JS `Math.max(a, b)`. -/
@[simp] def MathMax {α : Type} [Max α] (a b : α) : α := max a b
