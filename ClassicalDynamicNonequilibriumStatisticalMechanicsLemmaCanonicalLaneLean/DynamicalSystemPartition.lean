import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean

structure DynamicalSystemPartition where
  stateSpace : Type u
  phaseSpace : Type v
  dynamics : stateSpace → stateSpace
  timeParameter : Type w
  flowMap : timeParameter → stateSpace → stateSpace
  initialDistribution : stateSpace → ℝ
  equilibriumDistribution : stateSpace → ℝ
  partitionFunction : ℝ
  entropyProduction : Prop
  detailedBalance : Prop
  entropyProductionTerm : entropyProduction
  detailedBalanceTerm : detailedBalance

structure DynamicalSystemPartitionEvidence (P : DynamicalSystemPartition) where
  entropyProductionClosed : P.entropyProduction
  detailedBalanceClosed : P.detailedBalance

def DynamicalSystemPartitionClosed (P : DynamicalSystemPartition) : Prop :=
  P.entropyProduction ∧ P.detailedBalance

theorem dynamical_system_partition_closed_from_evidence
    (P : DynamicalSystemPartition) (E : DynamicalSystemPartitionEvidence P) :
    DynamicalSystemPartitionClosed P := by
  exact And.intro E.entropyProductionClosed E.detailedBalanceClosed

end ClassicalDynamicNonequilibriumStatisticalMechanicsLemmaCanonicalLaneLean
end HautevilleHouse