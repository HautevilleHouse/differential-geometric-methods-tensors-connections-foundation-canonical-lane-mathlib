import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure LeviCivitaHolonomyPackage where
  riemannianManifold : Type u
  leviCivitaConnection : Type v
  riemannCurvatureTensor : Type w
  holonomyGroup : Type x
  metricCompatibility : Prop
  torsionFree : Prop
  curvatureSymmetries : Prop
  holonomyReduction : Prop

structure LeviCivitaHolonomyEvidence (L : LeviCivitaHolonomyPackage) where
  metricCompatibilityClosed : L.metricCompatibility
  torsionFreeClosed : L.torsionFree
  curvatureSymmetriesClosed : L.curvatureSymmetries
  holonomyReductionClosed : L.holonomyReduction

def LeviCivitaHolonomyClosed (L : LeviCivitaHolonomyPackage) : Prop :=
  L.metricCompatibility ∧ L.torsionFree ∧
  L.curvatureSymmetries ∧ L.holonomyReduction

theorem levi_civita_holonomy_closed_from_evidence (L : LeviCivitaHolonomyPackage)
    (E : LeviCivitaHolonomyEvidence L) : LeviCivitaHolonomyClosed L := by
  exact And.intro E.metricCompatibilityClosed
    (And.intro E.torsionFreeClosed
      (And.intro E.curvatureSymmetriesClosed E.holonomyReductionClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse