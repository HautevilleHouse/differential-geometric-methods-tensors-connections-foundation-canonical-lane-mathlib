import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure CurvatureTensorPackage where
  riemannSymmetries : Prop
  bianchiIdentities : Prop
  ricciContraction : Prop

structure CurvatureEvidence (C : CurvatureTensorPackage) where
  riemannSymmetriesClosed : C.riemannSymmetries
  bianchiIdentitiesClosed : C.bianchiIdentities
  ricciContractionClosed : C.ricciContraction

def CurvatureTensorClosed (C : CurvatureTensorPackage) : Prop :=
  C.riemannSymmetries ∧ C.bianchiIdentities ∧ C.ricciContraction

theorem curvature_tensor_closed_from_evidence (C : CurvatureTensorPackage) (E : CurvatureEvidence C) : CurvatureTensorClosed C := by
  exact And.intro E.riemannSymmetriesClosed (And.intro E.bianchiIdentitiesClosed E.ricciContractionClosed)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse