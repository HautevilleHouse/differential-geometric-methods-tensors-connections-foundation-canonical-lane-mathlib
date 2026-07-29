import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  reducedHolonomy : Prop
  ambarConversation : Prop
  relationToCurvature : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  reducedHolonomyClosed : H.reducedHolonomy
  ambarConversationClosed : H.ambarConversation
  relationToCurvatureClosed : H.relationToCurvature

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.reducedHolonomy ∧ H.ambarConversation ∧ H.relationToCurvature

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.reducedHolonomyClosed (And.intro E.ambarConversationClosed E.relationToCurvatureClosed)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse