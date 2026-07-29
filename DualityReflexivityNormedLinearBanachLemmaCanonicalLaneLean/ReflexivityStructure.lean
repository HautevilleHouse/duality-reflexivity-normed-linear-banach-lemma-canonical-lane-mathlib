import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure ReflexivityPackage where
  bidualEmbedding : Prop
  reflexiveDefinition : Prop
  closedRange : Prop
  surjectiveCondition : Prop

structure ReflexivityEvidence (R : ReflexivityPackage) where
  bidualEmbeddingClosed : R.bidualEmbedding
  reflexiveDefinitionClosed : R.reflexiveDefinition
  closedRangeClosed : R.closedRange
  surjectiveConditionClosed : R.surjectiveCondition

def ReflexivityClosed (R : ReflexivityPackage) : Prop :=
  R.bidualEmbedding ∧ R.reflexiveDefinition ∧ R.closedRange ∧ R.surjectiveCondition

theorem reflexivity_closed_from_evidence (R : ReflexivityPackage)
    (E : ReflexivityEvidence R) : ReflexivityClosed R := by
  exact And.intro E.bidualEmbeddingClosed
    (And.intro E.reflexiveDefinitionClosed
      (And.intro E.closedRangeClosed E.surjectiveConditionClosed))

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse