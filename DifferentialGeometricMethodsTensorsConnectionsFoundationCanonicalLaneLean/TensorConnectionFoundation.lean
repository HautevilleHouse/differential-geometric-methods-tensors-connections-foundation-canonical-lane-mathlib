import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure TensorConnectionPackage where
  metricCompatible : Prop
  torsionFree : Prop
  curvatureCommutator : Prop

structure ConnectionEvidence (C : TensorConnectionPackage) where
  metricCompatibleClosed : C.metricCompatible
  torsionFreeClosed : C.torsionFree
  curvatureCommutatorClosed : C.curvatureCommutator

def ConnectionClosed (C : TensorConnectionPackage) : Prop :=
  C.metricCompatible ∧ C.torsionFree ∧ C.curvatureCommutator

theorem connection_closed_from_evidence (C : TensorConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.metricCompatibleClosed (And.intro E.torsionFreeClosed E.curvatureCommutatorClosed)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse