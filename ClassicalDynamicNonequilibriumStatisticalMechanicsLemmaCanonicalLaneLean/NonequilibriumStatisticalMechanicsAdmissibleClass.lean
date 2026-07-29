import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure AdmissibleNonequilibriumObject where
  systemState : Type u
  timeEvolution : Type v
  equilibriumTarget : Prop
  thermodynamicLimit : Prop
  ergodicMeasure : Prop
  conclusionConclusion : equilibriumTarget

structure AdmissibleClass where
  object : AdmissibleNonequilibriumObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.thermodynamicLimit ∧ A.object.ergodicMeasure) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse