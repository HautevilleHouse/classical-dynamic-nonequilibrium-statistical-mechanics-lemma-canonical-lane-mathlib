import HautevilleHouse.ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure MasterEquationPackage where
  stateSpace : Type
  transitionRates : Prop
  detailedBalance : Prop
  entropyProduction : Prop
  stationaryDistribution : Prop

structure MasterEquationEvidence (M : MasterEquationPackage) where
  transitionRatesClosed : M.transitionRates
  detailedBalanceClosed : M.detailedBalance
  entropyProductionClosed : M.entropyProduction
  stationaryDistributionClosed : M.stationaryDistribution

def MasterEquationClosed (M : MasterEquationPackage) : Prop :=
  M.transitionRates ∧ M.detailedBalance ∧ M.entropyProduction ∧ M.stationaryDistribution

theorem master_equation_closed_from_evidence (M : MasterEquationPackage) (E : MasterEquationEvidence M) : MasterEquationClosed M := by
  exact And.intro E.transitionRatesClosed (And.intro E.detailedBalanceClosed (And.intro E.entropyProductionClosed E.stationaryDistributionClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
