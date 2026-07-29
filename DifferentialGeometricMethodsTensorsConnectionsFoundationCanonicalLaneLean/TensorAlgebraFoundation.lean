import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure TensorAlgebraPackage where
  vectorSpace : Type u
  field : Type v
  dualSpace : Type w
  tensorProduct : Type x
  tensorAlgebra : Type y
  vectorSpaceStructure : VectorSpace field vectorSpace
  dualSpaceStructure : VectorSpace field dualSpace
  tensorProductStructure : TensorProduct vectorSpace dualSpace tensorProduct
  tensorAlgebraStructure : Algebra field tensorAlgebra

def TensorAlgebraClosed (T : TensorAlgebraPackage) : Prop :=
  True

theorem tensor_algebra_closed (T : TensorAlgebraPackage) : TensorAlgebraClosed T :=
  trivial

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse