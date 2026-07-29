import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualSpaceStructure

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure ReflexivityPackage {V : BanachSpace} (D : DualSpacePackage V) where
  doubleDual : DualSpacePackage D.dual
  canonicalEmbedding : V.carrier → doubleDual.dual
  isometricEmbedding : Prop
  surjectivity : Prop
  isometricEmbeddingTerm : isometricEmbedding
  surjectivityTerm : surjectivity

structure ReflexivityEvidence {V : BanachSpace} {D : DualSpacePackage V}
    (R : ReflexivityPackage D) where
  isometricEmbeddingClosed : R.isometricEmbedding
  surjectivityClosed : R.surjectivity

def ReflexivityClosed {V : BanachSpace} {D : DualSpacePackage V}
    (R : ReflexivityPackage D) : Prop :=
  R.isometricEmbedding ∧ R.surjectivity

theorem reflexivity_closed_from_evidence
    {V : BanachSpace} {D : DualSpacePackage V}
    (R : ReflexivityPackage D) (E : ReflexivityEvidence R) :
    ReflexivityClosed R := by
  exact And.intro E.isometricEmbeddingClosed E.surjectivityClosed

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
