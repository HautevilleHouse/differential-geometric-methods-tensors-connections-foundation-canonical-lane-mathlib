import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure ConnectionFormPackage where
  principalBundle : Type u
  baseManifold : Type v
  lieGroup : Type w
  connectionOneForm : Type x
  curvatureTwoForm : Type y
  gaugeGroupAction : Prop
  connectionTransformation : Prop
  curvatureTransformation : Prop
  bianchiIdentity : Prop

structure ConnectionFormEvidence (P : ConnectionFormPackage) where
  gaugeGroupActionClosed : P.gaugeGroupAction
  connectionTransformationClosed : P.connectionTransformation
  curvatureTransformationClosed : P.curvatureTransformation
  bianchiIdentityClosed : P.bianchiIdentity

def ConnectionFormClosed (P : ConnectionFormPackage) : Prop :=
  P.gaugeGroupAction ∧ P.connectionTransformation ∧ P.curvatureTransformation ∧ P.bianchiIdentity

theorem connection_form_closed_from_evidence (P : ConnectionFormPackage) (E : ConnectionFormEvidence P) :
    ConnectionFormClosed P := by
  exact And.intro E.gaugeGroupActionClosed
    (And.intro E.connectionTransformationClosed
      (And.intro E.curvatureTransformationClosed E.bianchiIdentityClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse
