import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.BanachSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure DualSpace (V : BanachSpace) where
  continuousLinearFunctionals : Type u
  dualNorm : continuousLinearFunctionals → ℝ
  normedAddCommGroup : NormedAddCommGroup continuousLinearFunctionals
  complete : MetricSpace continuousLinearFunctionals := by infer_instance

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse