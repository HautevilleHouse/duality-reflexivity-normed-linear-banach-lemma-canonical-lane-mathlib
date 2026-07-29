import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure NormedLinearSpacePackage where
  normDefinition : Prop
  linearStructure : Prop
  normedProperties : Prop
  completenessCondition : Prop

structure NormedLinearSpaceEvidence (N : NormedLinearSpacePackage) where
  normDefinitionClosed : N.normDefinition
  linearStructureClosed : N.linearStructure
  normedPropertiesClosed : N.normedProperties
  completenessConditionClosed : N.completenessCondition

def NormedLinearSpaceClosed (N : NormedLinearSpacePackage) : Prop :=
  N.normDefinition ∧ N.linearStructure ∧ N.normedProperties ∧ N.completenessCondition

theorem normed_linear_space_closed_from_evidence (N : NormedLinearSpacePackage)
    (E : NormedLinearSpaceEvidence N) : NormedLinearSpaceClosed N := by
  exact And.intro E.normDefinitionClosed
    (And.intro E.linearStructureClosed
      (And.intro E.normedPropertiesClosed E.completenessConditionClosed))

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse