import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure LinearResponseTheoryPackage where
  susceptibility : Type u
  greenKuboFormula : Prop
  transportCoefficients : Prop
  OnsagerReciprocity : Prop

structure LinearResponseTheoryEvidence (L : LinearResponseTheoryPackage) where
  greenKuboFormulaClosed : L.greenKuboFormula
  transportCoefficientsClosed : L.transportCoefficients
  OnsagerReciprocityClosed : L.OnsagerReciprocity

def LinearResponseTheoryClosed (L : LinearResponseTheoryPackage) : Prop :=
  L.greenKuboFormula ∧ L.transportCoefficients ∧ L.OnsagerReciprocity

theorem linear_response_theory_closed_from_evidence (L : LinearResponseTheoryPackage)
    (E : LinearResponseTheoryEvidence L) : LinearResponseTheoryClosed L := by
  exact And.intro E.greenKuboFormulaClosed (And.intro E.transportCoefficientsClosed E.OnsagerReciprocityClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse