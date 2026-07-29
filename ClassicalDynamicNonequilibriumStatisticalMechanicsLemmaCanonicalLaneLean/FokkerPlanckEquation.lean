import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure FokkerPlanckEquationPackage where
  driftCoefficient : Type u
  diffusionCoefficient : Type v
  stationaryDistribution : Prop
  detailedBalance : Prop

structure FokkerPlanckEquationEvidence (F : FokkerPlanckEquationPackage) where
  stationaryDistributionClosed : F.stationaryDistribution
  detailedBalanceClosed : F.detailedBalance

def FokkerPlanckEquationClosed (F : FokkerPlanckEquationPackage) : Prop :=
  F.stationaryDistribution ∧ F.detailedBalance

theorem fokker_planck_equation_closed_from_evidence (F : FokkerPlanckEquationPackage)
    (E : FokkerPlanckEquationEvidence F) : FokkerPlanckEquationClosed F := by
  exact And.intro E.stationaryDistributionClosed E.detailedBalanceClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse