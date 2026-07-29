import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure Reflexivity (V : BanachSpace) where
  canonicalEmbedding : V → DualSpace (DualSpace V)
  isIsometric : Isometry canonicalEmbedding
  isSurjective : Function.Surjective canonicalEmbedding

def ReflexiveSpace (V : BanachSpace) : Prop :=
  Nonempty (Reflexivity V)

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse