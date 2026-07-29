import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure CovariantDerivativePackage where
  vectorBundle : Type u
  baseManifold : Type v
  connection : Type w
  covariantDerivative : Type x
  curvatureTensor : Type y
  linearityOverFunctions : Prop
  leibnizRule : Prop
  torsionFreeCondition : Prop
  curvtureBianchiIdentity : Prop

structure CovariantDerivativeEvidence (D : CovariantDerivativePackage) where
  linearityOverFunctionsClosed : D.linearityOverFunctions
  leibnizRuleClosed : D.leibnizRule
  torsionFreeConditionClosed : D.torsionFreeCondition
  curvtureBianchiIdentityClosed : D.curvtureBianchiIdentity

def CovariantDerivativeClosed (D : CovariantDerivativePackage) : Prop :=
  D.linearityOverFunctions ∧ D.leibnizRule ∧ D.torsionFreeCondition ∧ D.curvtureBianchiIdentity

theorem covariant_derivative_closed_from_evidence (D : CovariantDerivativePackage) (E : CovariantDerivativeEvidence D) :
    CovariantDerivativeClosed D := by
  exact And.intro E.linearityOverFunctionsClosed
    (And.intro E.leibnizRuleClosed
      (And.intro E.torsionFreeConditionClosed E.curvtureBianchiIdentityClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse
