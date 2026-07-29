import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure LargeDeviationPackage where
  rateFunction : Type u → ℝ
  scaledCumulantGeneratingFunction : Type u → ℝ
  largeDeviationPrinciple : Prop
  convexRateFunction : Prop
  largeDeviationPrincipleTerm : largeDeviationPrinciple
  convexRateFunctionTerm : convexRateFunction

structure LargeDeviationEvidence (L : LargeDeviationPackage) where
  largeDeviationPrincipleClosed : L.largeDeviationPrinciple
  convexRateFunctionClosed : L.convexRateFunction

def LargeDeviationClosed (L : LargeDeviationPackage) : Prop :=
  L.largeDeviationPrinciple ∧ L.convexRateFunction

theorem large_deviation_closed_from_evidence
    (L : LargeDeviationPackage) (E : LargeDeviationEvidence L) :
    LargeDeviationClosed L := by
  exact And.intro E.largeDeviationPrincipleClosed E.convexRateFunctionClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse