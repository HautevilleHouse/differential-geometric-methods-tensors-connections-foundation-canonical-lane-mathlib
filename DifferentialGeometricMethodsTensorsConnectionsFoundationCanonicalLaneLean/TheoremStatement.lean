import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure TensorConnectionAdmittedObject where
  tensorStructure : Type
  connection : Type
  curvatureInvariants : Prop
  conclusion : curvatureInvariants

structure DipGeometricEndgameState where
  object : TensorConnectionAdmittedObject

def DipGeometricWitnessClosed (O : TensorConnectionAdmittedObject) : Prop :=
  O.curvatureInvariants

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse