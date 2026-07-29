import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

theorem banach_alaoglu_closed_unit_ball_weak_star_compact (V : BanachSpace) :
    WeakStarCompact (closedBall (0 : DualSpace V) 1) := by
  -- Standard proof using Tychonoff's theorem
  exact weakStarCompact_ball (0 : DualSpace V) 1

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse