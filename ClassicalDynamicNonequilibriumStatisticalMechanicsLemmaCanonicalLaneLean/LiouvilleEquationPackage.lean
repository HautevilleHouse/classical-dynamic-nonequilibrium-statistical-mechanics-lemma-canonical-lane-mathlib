import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure LiouvilleEquationPackage where
  phaseSpaceDensity : Type u
  hamiltonianFlow : Type v
  poissonBracket : Type w
  densityConservation : Prop
  incompressibility : Prop
  stationarityCondition : Prop

structure LiouvilleEquationEvidence (L : LiouvilleEquationPackage) where
  densityConservationClosed : L.densityConservation
  incompressibilityClosed : L.incompressibility
  stationarityConditionClosed : L.stationarityCondition

def LiouvilleEquationClosed (L : LiouvilleEquationPackage) : Prop :=
  L.densityConservation ∧ L.incompressibility ∧ L.stationarityCondition

theorem liouville_equation_closed_from_evidence (L : LiouvilleEquationPackage) (Ev : LiouvilleEquationEvidence L) :
    LiouvilleEquationClosed L := by
  exact And.intro Ev.densityConservationClosed
    (And.intro Ev.incompressibilityClosed Ev.stationarityConditionClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse