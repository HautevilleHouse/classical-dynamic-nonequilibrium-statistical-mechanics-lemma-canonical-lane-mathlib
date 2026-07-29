import ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean.NonequilibriumStatisticalMechanicsAdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.thermodynamicLimit ∧ A.object.ergodicMeasure

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusionConclusion

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse