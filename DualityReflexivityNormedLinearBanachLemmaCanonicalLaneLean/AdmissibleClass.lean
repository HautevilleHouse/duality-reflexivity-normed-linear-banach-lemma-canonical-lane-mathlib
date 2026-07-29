import Mathlib

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure AdmissibleClass where
  object : BanachSpace
  dualReflexivitySatisfied : Prop
  remainderRecorded : Prop
  gateWitness : dualReflexivitySatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachWitnessClosed A.object ∧ (A.dualReflexivitySatisfied ∨ A.remainderRecorded)

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
