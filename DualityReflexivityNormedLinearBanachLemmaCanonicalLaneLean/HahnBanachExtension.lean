import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualSpaceConstruction

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure HahnBanachPackage (V : Type) (N : NormedSpacePackage V) where
  subspace : Type
  linearFunctionalOnSubspace : Type
  extensionExists : Prop
  normPreservingExtension : Prop

structure HahnBanachEvidence {V : Type} {N : NormedSpacePackage V} (H : HahnBanachPackage V N) where
  extensionExistsClosed : H.extensionExists
  normPreservingExtensionClosed : H.normPreservingExtension

def HahnBanachClosed {V : Type} {N : NormedSpacePackage V} (H : HahnBanachPackage V N) : Prop :=
  H.extensionExists ∧ H.normPreservingExtension

theorem hahn_banach_closed_from_evidence {V : Type} {N : NormedSpacePackage V} (H : HahnBanachPackage V N) (E : HahnBanachEvidence H) : HahnBanachClosed H := by
  exact And.intro E.extensionExistsClosed E.normPreservingExtensionClosed

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse