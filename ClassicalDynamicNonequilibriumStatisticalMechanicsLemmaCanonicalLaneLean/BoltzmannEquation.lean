import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure BoltzmannEquationPackage where
  collisionOperator : Type u
  hTheorem : Prop
  irreversibility : Prop
  localEquilibrium : Prop

structure BoltzmannEquationEvidence (B : BoltzmannEquationPackage) where
  hTheoremClosed : B.hTheorem
  irreversibilityClosed : B.irreversibility
  localEquilibriumClosed : B.localEquilibrium

def BoltzmannEquationClosed (B : BoltzmannEquationPackage) : Prop :=
  B.hTheorem ∧ B.irreversibility ∧ B.localEquilibrium

theorem boltzmann_equation_closed_from_evidence (B : BoltzmannEquationPackage)
    (E : BoltzmannEquationEvidence B) : BoltzmannEquationClosed B := by
  exact And.intro E.hTheoremClosed (And.intro E.irreversibilityClosed E.localEquilibriumClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse