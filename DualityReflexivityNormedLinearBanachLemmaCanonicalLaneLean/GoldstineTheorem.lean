import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.ReflexiveSpace
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.WeakStarTopology

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure GoldstineTheorem (V : Type*) [NormedAddCommGroup V] (D : DualSpace V) (R : ReflexiveSpace V D) (W : WeakStarTopology V D) where
  unitBallDense : Prop
  densityInDoubleDual : Prop
  unitBallDenseTerm : unitBallDense
  densityInDoubleDualTerm : densityInDoubleDual

def GoldstineTheoremClosed (V : Type*) [NormedAddCommGroup V] (D : DualSpace V) (R : ReflexiveSpace V D) (W : WeakStarTopology V D) (G : GoldstineTheorem V D R W) : Prop :=
  G.unitBallDense ∧ G.densityInDoubleDual

theorem goldstine_theorem_closed_from_evidence (V : Type*) [NormedAddCommGroup V] (D : DualSpace V) (R : ReflexiveSpace V D) (W : WeakStarTopology V D) (G : GoldstineTheorem V D R W) :
    GoldstineTheoremClosed V D R W G := by
  exact And.intro G.unitBallDenseTerm G.densityInDoubleDualTerm

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse