import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure CurvatureTensorPackage where
  connectionPackage : ConnectionPackage
  riemannTensor : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  riemannSymmetries : Prop
  bianchiIdentities : Prop
  ricciContracted : Prop
  scalarTrace : Prop

structure CurvatureTensorEvidence (C : CurvatureTensorPackage) where
  riemannSymmetriesClosed : C.riemannSymmetries
  bianchiIdentitiesClosed : C.bianchiIdentities
  ricciContractedClosed : C.ricciContracted
  scalarTraceClosed : C.scalarTrace

def CurvatureTensorClosed (C : CurvatureTensorPackage) : Prop :=
  C.riemannSymmetries ∧ C.bianchiIdentities ∧ C.ricciContracted ∧ C.scalarTrace

theorem curvature_tensor_closed_from_evidence (C : CurvatureTensorPackage) (E : CurvatureTensorEvidence C) : CurvatureTensorClosed C := by
  exact And.intro E.riemannSymmetriesClosed (And.intro E.bianchiIdentitiesClosed (And.intro E.ricciContractedClosed E.scalarTraceClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse