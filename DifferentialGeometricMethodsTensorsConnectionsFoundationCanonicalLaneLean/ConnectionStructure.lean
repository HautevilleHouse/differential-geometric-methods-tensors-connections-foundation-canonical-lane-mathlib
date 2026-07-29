import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure ConnectionPackage where
  manifold : Type u
  tangentBundle : Type v
  connectionForm : Type w
  torsionTensor : Type w
  curvatureTensor : Type w
  torsionFree : Prop
  metricCompatible : Prop
  connectionLawful : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible
  connectionLawfulClosed : C.connectionLawful

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.torsionFree ∧ C.metricCompatible ∧ C.connectionLawful

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.torsionFreeClosed (And.intro E.metricCompatibleClosed E.connectionLawfulClosed)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse