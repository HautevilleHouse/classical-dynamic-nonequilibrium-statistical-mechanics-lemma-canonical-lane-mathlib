import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure FluctuationDissipationPackage where
  responseFunction : Type u → Type v
  correlationFunction : Type u → Type v
  fluctuationDissipationRelation : Prop
  linearResponseCoefficient : ℝ
  noiseCorrelation : Prop
  fluctuationDissipationRelationTerm : fluctuationDissipationRelation
  noiseCorrelationTerm : noiseCorrelation

structure FluctuationDissipationEvidence (F : FluctuationDissipationPackage) where
  fluctuationDissipationRelationClosed : F.fluctuationDissipationRelation
  noiseCorrelationClosed : F.noiseCorrelation

def FluctuationDissipationClosed (F : FluctuationDissipationPackage) : Prop :=
  F.fluctuationDissipationRelation ∧ F.noiseCorrelation

theorem fluctuation_dissipation_closed_from_evidence
    (F : FluctuationDissipationPackage) (E : FluctuationDissipationEvidence F) :
    FluctuationDissipationClosed F := by
  exact And.intro E.fluctuationDissipationRelationClosed E.noiseCorrelationClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse