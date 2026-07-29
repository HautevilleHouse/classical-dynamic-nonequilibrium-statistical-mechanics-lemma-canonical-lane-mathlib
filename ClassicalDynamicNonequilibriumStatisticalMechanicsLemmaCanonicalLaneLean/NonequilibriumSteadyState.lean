import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure NonequilibriumSteadyStatePackage where
  currentEnsemble : Type u
  entropyProduction : Prop
  GallavottiCohenTheorem : Prop
  steadyStateMeasure : Prop

structure NonequilibriumSteadyStateEvidence (N : NonequilibriumSteadyStatePackage) where
  entropyProductionClosed : N.entropyProduction
  gallavottiCohenClosed : N.GallavottiCohenTheorem
  steadyStateMeasureClosed : N.steadyStateMeasure

def NonequilibriumSteadyStateClosed (N : NonequilibriumSteadyStatePackage) : Prop :=
  N.entropyProduction ∧ N.GallavottiCohenTheorem ∧ N.steadyStateMeasure

theorem nonequilibrium_steady_state_closed_from_evidence (N : NonequilibriumSteadyStatePackage)
    (E : NonequilibriumSteadyStateEvidence N) : NonequilibriumSteadyStateClosed N := by
  exact And.intro E.entropyProductionClosed (And.intro E.gallavottiCohenClosed E.steadyStateMeasureClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse