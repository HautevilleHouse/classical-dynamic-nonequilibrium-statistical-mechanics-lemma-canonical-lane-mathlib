import ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Fluctuation Dissipation Theorem Package
-/

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure FluctuationDissipationPackage where
  linearResponse : Prop
  equilibriumCorrelation : Prop
  dissipationKubo : Prop
  fluctuationDissipationRelation : Prop

structure FluctuationDissipationEvidence (F : FluctuationDissipationPackage) where
  linearResponseClosed : F.linearResponse
  equilibriumCorrelationClosed : F.equilibriumCorrelation
  dissipationKuboClosed : F.dissipationKubo
  fluctuationDissipationRelationClosed : F.fluctuationDissipationRelation

def FluctuationDissipationClosed (F : FluctuationDissipationPackage) : Prop :=
  F.linearResponse ∧ F.equilibriumCorrelation ∧ F.dissipationKubo ∧ F.fluctuationDissipationRelation

theorem fluctuation_dissipation_closed_from_evidence (F : FluctuationDissipationPackage) (E : FluctuationDissipationEvidence F) :
    FluctuationDissipationClosed F := by
  exact And.intro E.linearResponseClosed (And.intro E.equilibriumCorrelationClosed (And.intro E.dissipationKuboClosed E.fluctuationDissipationRelationClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse