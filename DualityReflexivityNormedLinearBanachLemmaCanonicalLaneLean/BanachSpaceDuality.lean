import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure BanachDualityPackage where
  dualSpace : Type u
  dualNorm : Type v
  weakStarTopology : Type w
  dualPairing : Prop
  isometricEmbedding : Prop
  normClosed : Prop

structure BanachDualityEvidence (B : BanachDualityPackage) where
  dualPairingClosed : B.dualPairing
  isometricEmbeddingClosed : B.isometricEmbedding
  normClosed : B.normClosed

def BanachDualityClosed (B : BanachDualityPackage) : Prop :=
  B.dualPairing ∧ B.isometricEmbedding ∧ B.normClosed

theorem banach_duality_closed_from_evidence (B : BanachDualityPackage)
    (E : BanachDualityEvidence B) : BanachDualityClosed B := by
  exact And.intro E.dualPairingClosed (And.intro E.isometricEmbeddingClosed E.normClosed)

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse