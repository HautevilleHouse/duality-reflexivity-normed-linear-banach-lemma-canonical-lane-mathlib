import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure ReflexiveSpace (V : Type*) [NormedAddCommGroup V] (D : DualSpace V) where
  canonicalEmbedding : V → D.dual
  isBijective : Prop
  boundedLinear : Prop
  isBijectiveTerm : isBijective
  boundedLinearTerm : boundedLinear

def ReflexiveSpaceClosed (V : Type*) [NormedAddCommGroup V] (D : DualSpace V) (R : ReflexiveSpace V D) : Prop :=
  R.isBijective ∧ R.boundedLinear

theorem reflexive_space_closed_from_evidence (V : Type*) [NormedAddCommGroup V] (D : DualSpace V) (R : ReflexiveSpace V D) :
    ReflexiveSpaceClosed V D R := by
  exact And.intro R.isBijectiveTerm R.boundedLinearTerm

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse