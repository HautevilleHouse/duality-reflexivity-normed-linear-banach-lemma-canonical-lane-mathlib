import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : MetricSpace carrier := by infer_instance

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse