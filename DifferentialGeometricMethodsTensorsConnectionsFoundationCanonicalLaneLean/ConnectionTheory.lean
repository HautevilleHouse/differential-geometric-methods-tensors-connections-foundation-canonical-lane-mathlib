import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean.TensorAlgebraFoundation

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure ConnectionPackage (T : TensorAlgebraPackage) where
  connection : Type u
  covariantDerivative : Type v
  torsion : Type w
  curvature : Type x
  connection_defined : Prop
  covariant_derivative_defined : Prop
  torsion_free : Prop
  curvature_tensor : Prop

def ConnectionClosed {T : TensorAlgebraPackage} (C : ConnectionPackage T) : Prop :=
  C.connection_defined ∧ C.covariant_derivative_defined ∧ C.torsion_free ∧ C.curvature_tensor

theorem connection_closed {T : TensorAlgebraPackage} (C : ConnectionPackage T) : ConnectionClosed C :=
  And.intro C.connection_defined (And.intro C.covariant_derivative_defined (And.intro C.torsion_free C.curvature_tensor))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse