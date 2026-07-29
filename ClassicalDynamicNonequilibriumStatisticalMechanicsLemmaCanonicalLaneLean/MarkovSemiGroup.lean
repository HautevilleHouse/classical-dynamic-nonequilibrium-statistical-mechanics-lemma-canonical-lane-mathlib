import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure MarkovSemiGroup where
  stateSpace : Type u
  transitionKernel : Type u → Type u → Type v
  semigroupLaw : Prop
  invariantMeasure : Prop
  ergodicity : Prop
  mixing : Prop
  semigroupLawTerm : semigroupLaw
  invariantMeasureTerm : invariantMeasure
  ergodicityTerm : ergodicity
  mixingTerm : mixing

structure MarkovSemiGroupEvidence (M : MarkovSemiGroup) where
  semigroupLawClosed : M.semigroupLaw
  invariantMeasureClosed : M.invariantMeasure
  ergodicityClosed : M.ergodicity
  mixingClosed : M.mixing

def MarkovSemiGroupClosed (M : MarkovSemiGroup) : Prop :=
  M.semigroupLaw ∧ M.invariantMeasure ∧ M.ergodicity ∧ M.mixing

theorem markov_semi_group_closed_from_evidence
    (M : MarkovSemiGroup) (E : MarkovSemiGroupEvidence M) :
    MarkovSemiGroupClosed M := by
  exact And.intro E.semigroupLawClosed
    (And.intro E.invariantMeasureClosed
      (And.intro E.ergodicityClosed E.mixingClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse