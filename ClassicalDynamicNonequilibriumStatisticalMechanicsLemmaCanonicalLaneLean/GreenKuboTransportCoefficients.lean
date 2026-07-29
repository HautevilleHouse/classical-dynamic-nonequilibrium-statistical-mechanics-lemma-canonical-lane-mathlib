import ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean.NessyFluctuationTheorem

/-!
# Green-Kubo Transport Coefficients Package
-/

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure GreenKuboTransportPackage {F : FluctuationDissipationPackage} where
  transportCoefficient : Prop
  currentCorrelation : Prop
  greenKuboRelation : Prop
  linearTransportLaw : Prop

structure GreenKuboTransportEvidence {F : FluctuationDissipationPackage} (G : GreenKuboTransportPackage F) where
  transportCoefficientClosed : G.transportCoefficient
  currentCorrelationClosed : G.currentCorrelation
  greenKuboRelationClosed : G.greenKuboRelation
  linearTransportLawClosed : G.linearTransportLaw

def GreenKuboTransportClosed {F : FluctuationDissipationPackage} (G : GreenKuboTransportPackage F) : Prop :=
  G.transportCoefficient ∧ G.currentCorrelation ∧ G.greenKuboRelation ∧ G.linearTransportLaw

theorem green_kubo_transport_closed_from_evidence {F : FluctuationDissipationPackage} (G : GreenKuboTransportPackage F) (E : GreenKuboTransportEvidence G) :
    GreenKuboTransportClosed G := by
  exact And.intro E.transportCoefficientClosed (And.intro E.currentCorrelationClosed (And.intro E.greenKuboRelationClosed E.linearTransportLawClosed))

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse