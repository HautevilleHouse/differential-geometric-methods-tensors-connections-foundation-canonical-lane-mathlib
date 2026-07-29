import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure GeodesicPackage where
  geodesicExistence : Prop
  exponentialMapDefined : Prop
  completeness : Prop

structure GeodesicEvidence (G : GeodesicPackage) where
  geodesicExistenceClosed : G.geodesicExistence
  exponentialMapDefinedClosed : G.exponentialMapDefined
  completenessClosed : G.completeness

def GeodesicClosed (G : GeodesicPackage) : Prop :=
  G.geodesicExistence ∧ G.exponentialMapDefined ∧ G.completeness

theorem geodesic_closed_from_evidence (G : GeodesicPackage) (E : GeodesicEvidence G) : GeodesicClosed G := by
  exact And.intro E.geodesicExistenceClosed (And.intro E.exponentialMapDefinedClosed E.completenessClosed)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse