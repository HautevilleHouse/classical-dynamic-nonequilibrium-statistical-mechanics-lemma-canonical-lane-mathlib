import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure NonequilibriumEntropyProductionPackage where
  entropyProductionRate : Type u
  thermodynamicForces : Type v
  fluxVariables : Type w
  nonnegativeProduction : Prop
  balanceEquation : Prop
  steadyStateCondition : Prop

structure NonequilibriumEntropyProductionEvidence (N : NonequilibriumEntropyProductionPackage) where
  nonnegativeProductionClosed : N.nonnegativeProduction
  balanceEquationClosed : N.balanceEquation
  steadyStateConditionClosed : N.steadyStateCondition

def NonequilibriumEntropyProductionClosed (N : NonequilibriumEntropyProductionPackage) : Prop :=
  N.nonnegativeProduction ∧ N.balanceEquation ∧ N.steadyStateCondition

theorem nonequilibrium_entropy_production_closed_from_evidence
    (N : NonequilibriumEntropyProductionPackage) (Ev : NonequilibriumEntropyProductionEvidence N) :
    NonequilibriumEntropyProductionClosed N := by
  exact And.intro Ev.nonnegativeProductionClosed
    (And.intro Ev.balanceEquationClosed Ev.steadyStateConditionClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse