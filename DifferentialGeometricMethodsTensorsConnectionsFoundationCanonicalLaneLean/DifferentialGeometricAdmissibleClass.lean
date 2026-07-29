import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure DGFAdmittedObject where
  manifoldType : Type
  metricSmooth : Prop
  connectionTorsionFree : Prop

structure DGFAdmissibleClass where
  object : DGFAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DGFWitnessClosed (O : DGFAdmittedObject) : Prop :=
  O.metricSmooth ∧ O.connectionTorsionFree

def admittedClosure (A : DGFAdmissibleClass) : Prop :=
  DGFWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse