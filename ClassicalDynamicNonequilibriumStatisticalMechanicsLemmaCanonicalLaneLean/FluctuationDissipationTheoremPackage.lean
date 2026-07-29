import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure FluctuationDissipationTheoremPackage where
  responseFunction : Type u
  correlationFunction : Type v
  noisePowerSpectrum : Type w
  linearResponseRelation : Prop
  dissipationRateRelation : Prop
  equilibriumFluctuationRelation : Prop

structure FluctuationDissipationTheoremEvidence (F : FluctuationDissipationTheoremPackage) where
  linearResponseRelationClosed : F.linearResponseRelation
  dissipationRateRelationClosed : F.dissipationRateRelation
  equilibriumFluctuationRelationClosed : F.equilibriumFluctuationRelation

def FluctuationDissipationTheoremClosed (F : FluctuationDissipationTheoremPackage) : Prop :=
  F.linearResponseRelation ∧ F.dissipationRateRelation ∧ F.equilibriumFluctuationRelation

theorem fluctuation_dissipation_theorem_closed_from_evidence
    (F : FluctuationDissipationTheoremPackage) (Ev : FluctuationDissipationTheoremEvidence F) :
    FluctuationDissipationTheoremClosed F := by
  exact And.intro Ev.linearResponseRelationClosed
    (And.intro Ev.dissipationRateRelationClosed Ev.equilibriumFluctuationRelationClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse