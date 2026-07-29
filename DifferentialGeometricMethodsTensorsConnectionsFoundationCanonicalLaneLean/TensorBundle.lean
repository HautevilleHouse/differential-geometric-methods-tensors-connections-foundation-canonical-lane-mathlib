import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean

structure TensorBundlePackage where
  baseManifold : Type u
  vectorSpace : Type v
  tensorProduct : Type w
  metricTensor : Type x
  ricciTensor : Type y
  symmetricBilinearForm : Prop
  positiveDefiniteness : Prop
  contractionOperation : Prop
  covariantDerivativeCompatible : Prop

structure TensorBundleEvidence (T : TensorBundlePackage) where
  symmetricBilinearFormClosed : T.symmetricBilinearForm
  positiveDefinitenessClosed : T.positiveDefiniteness
  contractionOperationClosed : T.contractionOperation
  covariantDerivativeCompatibleClosed : T.covariantDerivativeCompatible

def TensorBundleClosed (T : TensorBundlePackage) : Prop :=
  T.symmetricBilinearForm ∧ T.positiveDefiniteness ∧ T.contractionOperation ∧ T.covariantDerivativeCompatible

theorem tensor_bundle_closed_from_evidence (T : TensorBundlePackage) (E : TensorBundleEvidence T) :
    TensorBundleClosed T := by
  exact And.intro E.symmetricBilinearFormClosed
    (And.intro E.positiveDefinitenessClosed
      (And.intro E.contractionOperationClosed E.covariantDerivativeCompatibleClosed))

end DifferentialGeometricMethodsTensorsConnectionsFoundationCanonicalLaneLean
end HautevilleHouse
