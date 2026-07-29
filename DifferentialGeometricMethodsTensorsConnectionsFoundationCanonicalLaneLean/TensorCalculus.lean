import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure TensorCalculusPackage where
  tensorAlgebra : Type u
  contraction : Type v
  covariantDerivative : Type w
  commutatorOfDerivatives : Prop
  tensorCompatibility : Prop
  metricContractions : Prop

structure TensorCalculusEvidence (T : TensorCalculusPackage) where
  commutatorOfDerivativesClosed : T.commutatorOfDerivatives
  tensorCompatibilityClosed : T.tensorCompatibility
  metricContractionsClosed : T.metricContractions

def TensorCalculusClosed (T : TensorCalculusPackage) : Prop :=
  T.commutatorOfDerivatives ∧ T.tensorCompatibility ∧ T.metricContractions

theorem tensor_calculus_closed_from_evidence (T : TensorCalculusPackage) (E : TensorCalculusEvidence T) : TensorCalculusClosed T := by
  exact And.intro E.commutatorOfDerivativesClosed (And.intro E.tensorCompatibilityClosed E.metricContractionsClosed)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse