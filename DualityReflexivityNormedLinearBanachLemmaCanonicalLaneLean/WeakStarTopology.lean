import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure WeakStarTopology (V : Type*) [NormedAddCommGroup V] (D : DualSpace V) where
  topology : TopologicalSpace D.dual
  weakStarContinuous : Prop
  hausdorff : Prop
  weakStarContinuousTerm : weakStarContinuous
  hausdorffTerm : hausdorff

def WeakStarTopologyClosed (V : Type*) [NormedAddCommGroup V] (D : DualSpace V) (W : WeakStarTopology V D) : Prop :=
  W.weakStarContinuous ∧ W.hausdorff

theorem weak_star_topology_closed_from_evidence (V : Type*) [NormedAddCommGroup V] (D : DualSpace V) (W : WeakStarTopology V D) :
    WeakStarTopologyClosed V D W := by
  exact And.intro W.weakStarContinuousTerm W.hausdorffTerm

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse