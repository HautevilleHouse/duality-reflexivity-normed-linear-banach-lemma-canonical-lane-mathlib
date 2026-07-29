import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.bridgeWitness

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
