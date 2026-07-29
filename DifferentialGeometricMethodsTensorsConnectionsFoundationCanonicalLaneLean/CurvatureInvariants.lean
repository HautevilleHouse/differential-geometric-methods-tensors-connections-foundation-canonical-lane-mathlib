import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure CurvatureInvariantsPackage where
  riemannTensor : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  sectionalCurvature : Type x
  weylTensor : Type y
  ricciDecomposition : Prop
  einsteinCondition : Prop
  constantSectionalCurvature : Prop
  curvatureInvariantsClosed : Prop

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  ricciDecompositionClosed : C.ricciDecomposition
  einsteinConditionClosed : C.einsteinCondition
  constantSectionalCurvatureClosed : C.constantSectionalCurvature
  curvatureInvariantsClosedClosed : C.curvatureInvariantsClosed

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.ricciDecomposition ∧ C.einsteinCondition ∧ C.constantSectionalCurvature ∧ C.curvatureInvariantsClosed

theorem curvature_invariants_closed_from_evidence (C : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.ricciDecompositionClosed
    (And.intro E.einsteinConditionClosed
      (And.intro E.constantSectionalCurvatureClosed E.curvatureInvariantsClosedClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse
