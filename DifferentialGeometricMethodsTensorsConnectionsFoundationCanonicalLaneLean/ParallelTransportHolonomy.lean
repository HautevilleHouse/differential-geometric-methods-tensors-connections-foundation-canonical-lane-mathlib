import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure HolonomyPackage where
  curvatureVanishing : Prop
  simplyConnected : Prop
  trivialHolonomy : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  curvatureVanishingClosed : H.curvatureVanishing
  simplyConnectedClosed : H.simplyConnected
  trivialHolonomyClosed : H.trivialHolonomy

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.curvatureVanishing ∧ H.simplyConnected ∧ H.trivialHolonomy

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.curvatureVanishingClosed (And.intro E.simplyConnectedClosed E.trivialHolonomyClosed)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse