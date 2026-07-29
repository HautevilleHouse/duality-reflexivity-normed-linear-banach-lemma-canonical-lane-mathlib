import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure DualBanachSpacePackage where
  baseSpace : Type u
  norm : baseSpace → ℝ
  normedAddCommGroup : NormedAddCommGroup baseSpace
  complete : CompleteSpace baseSpace
  dualSpace : Type v
  dualNorm : dualSpace → ℝ
  dualNormedAddCommGroup : NormedAddCommGroup dualSpace
  dualComplete : CompleteSpace dualSpace
  pairing : baseSpace → dualSpace → ℝ
  pairingBilinear : BilinearMap ℝ baseSpace dualSpace ℝ
  pairingBounded : ∃ M : ℝ, ∀ x : baseSpace, ∀ f : dualSpace, |pairing x f| ≤ M * ‖x‖ * ‖f‖
  hahnBanachExtension : ∀ (x : baseSpace), ∃ f : dualSpace, ‖f‖ = 1 ∧ pairing x f = ‖x‖

def DualBanachSpaceClosed (P : DualBanachSpacePackage) : Prop :=
  P.complete ∧ P.dualComplete ∧ P.hahnBanachExtension

theorem dual_banach_space_closed (P : DualBanachSpacePackage) : DualBanachSpaceClosed P :=
  And.intro P.complete (And.intro P.dualComplete P.hahnBanachExtension)

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
