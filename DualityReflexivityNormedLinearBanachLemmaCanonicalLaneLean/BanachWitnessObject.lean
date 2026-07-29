import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure BanachWitnessObject where
  space : BanachSpace
  bridgeWitness : space.complete
  
def BanachWitnessClosed (O : BanachWitnessObject) : Prop :=
  O.bridgeWitness

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
