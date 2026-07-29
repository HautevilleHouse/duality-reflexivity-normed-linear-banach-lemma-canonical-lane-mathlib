import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure OpenMappingPackage where
  boundedLinearOperator : Prop
  surjectivityCondition : Prop
  opennessConclusion : Prop
  completenessUsed : Prop

structure OpenMappingEvidence (O : OpenMappingPackage) where
  boundedLinearOperatorClosed : O.boundedLinearOperator
  surjectivityConditionClosed : O.surjectivityCondition
  opennessConclusionClosed : O.opennessConclusion
  completenessUsedClosed : O.completenessUsed

def OpenMappingClosed (O : OpenMappingPackage) : Prop :=
  O.boundedLinearOperator ∧ O.surjectivityCondition ∧ O.opennessConclusion ∧ O.completenessUsed

theorem open_mapping_closed_from_evidence (O : OpenMappingPackage)
    (E : OpenMappingEvidence O) : OpenMappingClosed O := by
  exact And.intro E.boundedLinearOperatorClosed
    (And.intro E.surjectivityConditionClosed
      (And.intro E.opennessConclusionClosed E.completenessUsedClosed))

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse