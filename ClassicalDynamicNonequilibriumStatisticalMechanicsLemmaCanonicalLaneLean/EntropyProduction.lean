import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure EntropyProductionPackage where
  entropyFunctional : Type u → ℝ
  timeDerivative : Type u → ℝ
  nonNegativity : Prop
  fluctuationTheorem : Prop
  nonNegativityTerm : nonNegativity
  fluctuationTheoremTerm : fluctuationTheorem

structure EntropyProductionEvidence (E : EntropyProductionPackage) where
  nonNegativityClosed : E.nonNegativity
  fluctuationTheoremClosed : E.fluctuationTheorem

def EntropyProductionClosed (E : EntropyProductionPackage) : Prop :=
  E.nonNegativity ∧ E.fluctuationTheorem

theorem entropy_production_closed_from_evidence
    (E : EntropyProductionPackage) (P : EntropyProductionEvidence E) :
    EntropyProductionClosed E := by
  exact And.intro P.nonNegativityClosed P.fluctuationTheoremClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse