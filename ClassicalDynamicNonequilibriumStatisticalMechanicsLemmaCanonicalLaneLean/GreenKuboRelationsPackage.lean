import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure GreenKuboRelationsPackage where
  transportCoefficient : Type u
  currentCorrelation : Type v
  integralRelation : Prop
  conductivityFormula : Prop
  diffusivityFormula : Prop
  viscosityFormula : Prop

structure GreenKuboRelationsEvidence (G : GreenKuboRelationsPackage) where
  integralRelationClosed : G.integralRelation
  conductivityFormulaClosed : G.conductivityFormula
  diffusivityFormulaClosed : G.diffusivityFormula
  viscosityFormulaClosed : G.viscosityFormula

def GreenKuboRelationsClosed (G : GreenKuboRelationsPackage) : Prop :=
  G.integralRelation ∧ G.conductivityFormula ∧ G.diffusivityFormula ∧ G.viscosityFormula

theorem green_kubo_relations_closed_from_evidence (G : GreenKuboRelationsPackage) (Ev : GreenKuboRelationsEvidence G) :
    GreenKuboRelationsClosed G := by
  exact And.intro Ev.integralRelationClosed
    (And.intro Ev.conductivityFormulaClosed
      (And.intro Ev.diffusivityFormulaClosed Ev.viscosityFormulaClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse