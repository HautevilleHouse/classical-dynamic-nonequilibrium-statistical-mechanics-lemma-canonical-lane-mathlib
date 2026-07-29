import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure ErgodicHypothesisPackage where
  phaseSpace : Type u
  measure : Type v
  dynamics : Type w
  invariantMeasure : Prop
  ergodicDecomposition : Prop
  mixingProperty : Prop
  timeAverageEqualsEnsembleAverage : Prop

structure ErgodicHypothesisEvidence (E : ErgodicHypothesisPackage) where
  invariantMeasureClosed : E.invariantMeasure
  ergodicDecompositionClosed : E.ergodicDecomposition
  mixingPropertyClosed : E.mixingProperty
  timeAverageEqualsEnsembleAverageClosed : E.timeAverageEqualsEnsembleAverage

def ErgodicHypothesisClosed (E : ErgodicHypothesisPackage) : Prop :=
  E.invariantMeasure ∧ E.ergodicDecomposition ∧ E.mixingProperty ∧ E.timeAverageEqualsEnsembleAverage

theorem ergodic_hypothesis_closed_from_evidence (E : ErgodicHypothesisPackage) (Ev : ErgodicHypothesisEvidence E) :
    ErgodicHypothesisClosed E := by
  exact And.intro Ev.invariantMeasureClosed
    (And.intro Ev.ergodicDecompositionClosed
      (And.intro Ev.mixingPropertyClosed Ev.timeAverageEqualsEnsembleAverageClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse