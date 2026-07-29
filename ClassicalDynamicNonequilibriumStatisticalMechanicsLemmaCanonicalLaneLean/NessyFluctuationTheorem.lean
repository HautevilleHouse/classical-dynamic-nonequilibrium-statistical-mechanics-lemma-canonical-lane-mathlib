import ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean.FluctuationDissipationTheorem

/-!
# Nonequilibrium Steady State Fluctuation Theorem Package
-/

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure NessyFluctuationPackage {F : FluctuationDissipationPackage} where
  esaRate : Prop
  gibbsMeasureExistence : Prop
  largeDeviationsPrinciple : Prop
  fluctuationSymmetry : Prop

structure NessyFluctuationEvidence {F : FluctuationDissipationPackage} (N : NessyFluctuationPackage F) where
  esaRateClosed : N.esaRate
  gibbsMeasureExistenceClosed : N.gibbsMeasureExistence
  largeDeviationsPrincipleClosed : N.largeDeviationsPrinciple
  fluctuationSymmetryClosed : N.fluctuationSymmetry

def NessyFluctuationClosed {F : FluctuationDissipationPackage} (N : NessyFluctuationPackage F) : Prop :=
  N.esaRate ∧ N.gibbsMeasureExistence ∧ N.largeDeviationsPrinciple ∧ N.fluctuationSymmetry

theorem nessy_fluctuation_closed_from_evidence {F : FluctuationDissipationPackage} (N : NessyFluctuationPackage F) (E : NessyFluctuationEvidence N) :
    NessyFluctuationClosed N := by
  exact And.intro E.esaRateClosed (And.intro E.gibbsMeasureExistenceClosed (And.intro E.largeDeviationsPrincipleClosed E.fluctuationSymmetryClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse