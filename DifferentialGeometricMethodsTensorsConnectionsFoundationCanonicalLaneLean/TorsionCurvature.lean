import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure TorsionCurvaturePackage where
  torsionTensor : Type u
  riemannCurvatureTensor : Type v
  ricciTensor : Type w
  scalarCurvature : Type x
  firstBianchiIdentity : Prop
  secondBianchiIdentity : Prop
  symmetryProperties : Prop
  torsionFreeAssumed : Prop

structure TorsionCurvatureEvidence (T : TorsionCurvaturePackage) where
  firstBianchiIdentityClosed : T.firstBianchiIdentity
  secondBianchiIdentityClosed : T.secondBianchiIdentity
  symmetryPropertiesClosed : T.symmetryProperties
  torsionFreeAssumedClosed : T.torsionFreeAssumed

def TorsionCurvatureClosed (T : TorsionCurvaturePackage) : Prop :=
  T.firstBianchiIdentity ∧ T.secondBianchiIdentity ∧ T.symmetryProperties ∧ T.torsionFreeAssumed

theorem torsion_curvature_closed_from_evidence (T : TorsionCurvaturePackage) (E : TorsionCurvatureEvidence T) : TorsionCurvatureClosed T := by
  exact And.intro E.firstBianchiIdentityClosed (And.intro E.secondBianchiIdentityClosed (And.intro E.symmetryPropertiesClosed E.torsionFreeAssumedClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse