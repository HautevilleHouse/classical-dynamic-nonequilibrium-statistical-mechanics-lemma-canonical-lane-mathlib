import HautevilleHouse.ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure ConvergenceToEquilibriumPackage where
  entropyDecrease : Prop
  relaxationRate : Prop
  spectralGap : Prop
  exponentialConvergence : Prop

structure ConvergenceToEquilibriumEvidence (C : ConvergenceToEquilibriumPackage) where
  entropyDecreaseClosed : C.entropyDecrease
  relaxationRateClosed : C.relaxationRate
  spectralGapClosed : C.spectralGap
  exponentialConvergenceClosed : C.exponentialConvergence

def ConvergenceToEquilibriumClosed (C : ConvergenceToEquilibriumPackage) : Prop :=
  C.entropyDecrease ∧ C.relaxationRate ∧ C.spectralGap ∧ C.exponentialConvergence

theorem convergence_to_equilibrium_closed_from_evidence (C : ConvergenceToEquilibriumPackage) (E : ConvergenceToEquilibriumEvidence C) : ConvergenceToEquilibriumClosed C := by
  exact And.intro E.entropyDecreaseClosed (And.intro E.relaxationRateClosed (And.intro E.spectralGapClosed E.exponentialConvergenceClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
