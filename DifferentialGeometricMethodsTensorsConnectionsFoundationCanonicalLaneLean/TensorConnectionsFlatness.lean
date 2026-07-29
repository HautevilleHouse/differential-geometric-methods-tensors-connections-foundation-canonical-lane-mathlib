import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure TensorConnectionPackage where
  vectorBundle : Type u
  connectionOperator : Type v
  curvatureEndomorphism : Type w
  torsionTensor : Type x
  parallelTransport : Prop
  metricCompatibility : Prop
  flatnessCondition : Prop
  torsionFreeCondition : Prop

structure TensorConnectionEvidence (T : TensorConnectionPackage) where
  parallelTransportClosed : T.parallelTransport
  metricCompatibilityClosed : T.metricCompatibility
  flatnessConditionClosed : T.flatnessCondition
  torsionFreeConditionClosed : T.torsionFreeCondition

def TensorConnectionClosed (T : TensorConnectionPackage) : Prop :=
  T.parallelTransport ∧ T.metricCompatibility ∧
  T.flatnessCondition ∧ T.torsionFreeCondition

theorem tensor_connection_closed_from_evidence (T : TensorConnectionPackage)
    (E : TensorConnectionEvidence T) : TensorConnectionClosed T := by
  exact And.intro E.parallelTransportClosed
    (And.intro E.metricCompatibilityClosed
      (And.intro E.flatnessConditionClosed E.torsionFreeConditionClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse