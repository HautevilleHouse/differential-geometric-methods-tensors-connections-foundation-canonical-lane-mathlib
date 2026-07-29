import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure HolonomyPackage where
  principalBundle : Type u
  connection : Type v
  holonomyGroup : Type w
  parallelTransport : Type x
  loopSpace : Type y
  holonomyInvariant : Prop
  reductionTheorem : Prop
  ambroiseSingerTheorem : Prop
  curvtureHolonomyRelation : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyInvariantClosed : H.holonomyInvariant
  reductionTheoremClosed : H.reductionTheorem
  ambroiseSingerTheoremClosed : H.ambroiseSingerTheorem
  curvtureHolonomyRelationClosed : H.curvtureHolonomyRelation

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyInvariant ∧ H.reductionTheorem ∧ H.ambroiseSingerTheorem ∧ H.curvtureHolonomyRelation

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.holonomyInvariantClosed
    (And.intro E.reductionTheoremClosed
      (And.intro E.ambroiseSingerTheoremClosed E.curvtureHolonomyRelationClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse
