import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  ellipticComplex : Type v
  indexForm : Type w
  characteristicClasses : Type x
  chernCharacter : Type y
  cohomologicalFormula : Prop
  topologicalInvariance : Prop
  indexComputed : Prop

default structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  cohomologicalFormulaClosed : I.cohomologicalFormula
  topologicalInvarianceClosed : I.topologicalInvariance
  indexComputedClosed : I.indexComputed

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.cohomologicalFormula ∧ I.topologicalInvariance ∧ I.indexComputed

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.cohomologicalFormulaClosed
    (And.intro E.topologicalInvarianceClosed E.indexComputedClosed)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse
