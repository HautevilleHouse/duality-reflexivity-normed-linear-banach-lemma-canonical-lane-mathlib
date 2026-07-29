import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.dualReflexivitySatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
