import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure ParallelTransportPackage where
  vectorBundle : Type u
  connection : Type v
  parallelSection : Type w
  horizontalLift : Type x
  holonomyRepresentation : Type y
  linearIsomorphism : Prop
  uniquenessOfParallelTransport : Prop
  curvtureMeasureHolonomy : Prop

default structure ParallelTransportEvidence (P : ParallelTransportPackage) where
  linearIsomorphismClosed : P.linearIsomorphism
  uniquenessOfParallelTransportClosed : P.uniquenessOfParallelTransport
  curvtureMeasureHolonomyClosed : P.curvtureMeasureHolonomy

def ParallelTransportClosed (P : ParallelTransportPackage) : Prop :=
  P.linearIsomorphism ∧ P.uniquenessOfParallelTransport ∧ P.curvtureMeasureHolonomy

theorem parallel_transport_closed_from_evidence (P : ParallelTransportPackage) (E : ParallelTransportEvidence P) :
    ParallelTransportClosed P := by
  exact And.intro E.linearIsomorphismClosed
    (And.intro E.uniquenessOfParallelTransportClosed E.curvtureMeasureHolonomyClosed)

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse
