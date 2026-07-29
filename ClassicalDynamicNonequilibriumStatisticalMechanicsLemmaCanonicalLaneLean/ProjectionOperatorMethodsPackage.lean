import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure ProjectionOperatorMethodsPackage where
  moriProjector : Type u
  zwanzigProjector : Type v
  memoryKernel : Type w
  generalizedLangevinEquation : Prop
  memoryKernelDecay : Prop
  noiseTermFluctuation : Prop

structure ProjectionOperatorMethodsEvidence (P : ProjectionOperatorMethodsPackage) where
  generalizedLangevinEquationClosed : P.generalizedLangevinEquation
  memoryKernelDecayClosed : P.memoryKernelDecay
  noiseTermFluctuationClosed : P.noiseTermFluctuation

def ProjectionOperatorMethodsClosed (P : ProjectionOperatorMethodsPackage) : Prop :=
  P.generalizedLangevinEquation ∧ P.memoryKernelDecay ∧ P.noiseTermFluctuation

theorem projection_operator_methods_closed_from_evidence
    (P : ProjectionOperatorMethodsPackage) (Ev : ProjectionOperatorMethodsEvidence P) :
    ProjectionOperatorMethodsClosed P := by
  exact And.intro Ev.generalizedLangevinEquationClosed
    (And.intro Ev.memoryKernelDecayClosed Ev.noiseTermFluctuationClosed)

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse