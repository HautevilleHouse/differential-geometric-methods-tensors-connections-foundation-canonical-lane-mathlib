import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure ConnectionFormPackage where
  principalBundle : Type u
  structureGroup : Type v
  connectionOneForm : Type w
  curvatureTwoForm : Type x
  horizontalDistribution : Prop
  connectionCompatible : Prop
  curvatureStructureEquation : Prop
  bianchiIdentity : Prop

structure ConnectionFormEvidence (C : ConnectionFormPackage) where
  horizontalDistributionClosed : C.horizontalDistribution
  connectionCompatibleClosed : C.connectionCompatible
  curvatureStructureEquationClosed : C.curvatureStructureEquation
  bianchiIdentityClosed : C.bianchiIdentity

def ConnectionFormClosed (C : ConnectionFormPackage) : Prop :=
  C.horizontalDistribution ∧ C.connectionCompatible ∧
  C.curvatureStructureEquation ∧ C.bianchiIdentity

theorem connection_form_closed_from_evidence (C : ConnectionFormPackage)
    (E : ConnectionFormEvidence C) : ConnectionFormClosed C := by
  exact And.intro E.horizontalDistributionClosed
    (And.intro E.connectionCompatibleClosed
      (And.intro E.curvatureStructureEquationClosed E.bianchiIdentityClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse