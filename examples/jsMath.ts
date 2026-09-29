/**
 * Math.abs/min/max and module constants, supported by both backends.
 * Tests: Math helpers lower to MathAbs/MathMin/MathMax; module constants
 * referenced from pure functions (on Lean, defined before the pure mirrors).
 */

const LO = 1;
const HI = 256;

function clampDays(n: number): number {
  //@ ensures \result >= LO && \result <= HI
  //@ ensures n >= LO && n <= HI ==> \result === n
  return Math.min(Math.max(LO, n), HI);
}

function distance(a: number, b: number): number {
  //@ ensures \result >= 0
  //@ ensures \result === a - b || \result === b - a
  return Math.abs(a - b);
}
