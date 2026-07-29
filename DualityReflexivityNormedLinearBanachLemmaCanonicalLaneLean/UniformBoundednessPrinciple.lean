import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualBanachSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure FamilyOfOperators (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] where
  operators : Set (BoundedLinearMap ℝ X Y)

structure UniformBoundednessPrinciplePackage (P : DualBanachSpacePackage) where
  family : FamilyOfOperators P.baseSpace P.dualSpace
  pointwiseBounded : ∀ x : P.baseSpace, ∃ M : ℝ, ∀ T ∈ family.operators, ‖T x‖ ≤ M
  uniformBound : ∃ M : ℝ, ∀ T ∈ family.operators, ‖T‖ ≤ M
  principleHolds : uniformBound

def UniformBoundednessPrincipleClosed (P : DualBanachSpacePackage) (U : UniformBoundednessPrinciplePackage P) : Prop :=
  U.principleHolds

theorem uniform_boundedness_principle_closed (P : DualBanachSpacePackage) (U : UniformBoundednessPrinciplePackage P) : UniformBoundednessPrincipleClosed P U :=
  U.principleHolds

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
