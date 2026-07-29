import DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean.DifferentialGeometricAdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

def bridgeClosed (A : DGFAdmissibleClass) : Prop :=
  DGFWitnessClosed A.object

theorem bridge_from_admissible_class (A : DGFAdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.metricSmooth A.object.connectionTorsionFree

def gateClosed (A : DGFAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DGFAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse