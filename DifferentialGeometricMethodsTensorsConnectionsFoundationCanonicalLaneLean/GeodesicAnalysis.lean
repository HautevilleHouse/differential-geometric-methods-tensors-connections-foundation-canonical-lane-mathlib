import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean.ConnectionTheory

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure GeodesicPackage {T : TensorAlgebraPackage} (C : ConnectionPackage T) where
  geodesicEquation : Type u
  exponentialMap : Type v
  jacobiFields : Type w
  geodesic_defined : Prop
  exponential_defined : Prop
  jacobi_defined : Prop

def GeodesicClosed {T : TensorAlgebraPackage} {C : ConnectionPackage T} (G : GeodesicPackage C) : Prop :=
  G.geodesic_defined ∧ G.exponential_defined ∧ G.jacobi_defined

theorem geodesic_closed {T : TensorAlgebraPackage} {C : ConnectionPackage T} (G : GeodesicPackage C) : GeodesicClosed G :=
  And.intro G.geodesic_defined (And.intro G.exponential_defined G.jacobi_defined)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse