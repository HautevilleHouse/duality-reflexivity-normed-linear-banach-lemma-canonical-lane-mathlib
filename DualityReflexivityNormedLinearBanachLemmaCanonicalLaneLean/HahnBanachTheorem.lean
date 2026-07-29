import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualBanachSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure HahnBanachTheoremPackage (P : DualBanachSpacePackage) where
  subspace : Submodule ℝ P.baseSpace
  functionalOnSubspace : subspace → ℝ
  functionalBounded : ∃ M : ℝ, ∀ x : subspace, |functionalOnSubspace x| ≤ M * ‖x‖
  extension : P.baseSpace → ℝ
  extensionIsLinear : IsLinearMap ℝ extension
  extensionExtends : ∀ x : subspace, extension x = functionalOnSubspace x
  extensionNormPreserved : ‖extension‖ = ‖functionalOnSubspace‖

def HahnBanachTheoremClosed (P : DualBanachSpacePackage) (H : HahnBanachTheoremPackage P) : Prop :=
  H.extensionExtends ∧ H.extensionNormPreserved

theorem hahn_banach_theorem_closed (P : DualBanachSpacePackage) (H : HahnBanachTheoremPackage P) : HahnBanachTheoremClosed P H :=
  And.intro H.extensionExtends H.extensionNormPreserved

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
