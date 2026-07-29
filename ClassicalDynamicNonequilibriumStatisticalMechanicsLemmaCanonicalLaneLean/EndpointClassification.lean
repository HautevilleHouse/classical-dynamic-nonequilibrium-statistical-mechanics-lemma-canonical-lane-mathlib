import ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean.GreenKuboTransportCoefficients

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure EndpointClassificationPackage {F : FluctuationDissipationPackage}
    {N : NessyFluctuationPackage F} {G : GreenKuboTransportPackage F} where
  thermodynamicLimitReached : Prop
  steadyStateCurrentMeasured : Prop
  entropyProductionRateComputed : Prop
  nonequilibriumLeadsToEquilibrium : Prop

structure EndpointClassificationEvidence {F : FluctuationDissipationPackage}
    {N : NessyFluctuationPackage F} {G : GreenKuboTransportPackage F}
    (E : EndpointClassificationPackage N G) where
  thermodynamicLimitReachedClosed : E.thermodynamicLimitReached
  steadyStateCurrentMeasuredClosed : E.steadyStateCurrentMeasured
  entropyProductionRateComputedClosed : E.entropyProductionRateComputed
  nonequilibriumLeadsToEquilibriumClosed : E.nonequilibriumLeadsToEquilibrium

def EndpointClassificationClosed {F : FluctuationDissipationPackage}
    {N : NessyFluctuationPackage F} {G : GreenKuboTransportPackage F}
    (E : EndpointClassificationPackage N G) : Prop :=
  E.thermodynamicLimitReached ∧ E.steadyStateCurrentMeasured ∧ E.entropyProductionRateComputed ∧ E.nonequilibriumLeadsToEquilibrium

theorem endpoint_classification_closed_from_evidence {F : FluctuationDissipationPackage}
    {N : NessyFluctuationPackage F} {G : GreenKuboTransportPackage F}
    (Ep : EndpointClassificationPackage N G) (E : EndpointClassificationEvidence Ep) :
    EndpointClassificationClosed Ep := by
  exact And.intro E.thermodynamicLimitReachedClosed (And.intro E.steadyStateCurrentMeasuredClosed (And.intro E.entropyProductionRateComputedClosed E.nonequilibriumLeadsToEquilibriumClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse