import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure BanachFixedPointPackage where
  contractionMapping : Prop
  completenessCondition : Prop
  fixedPointExistence : Prop
  uniquenessCondition : Prop

structure BanachFixedPointEvidence (B : BanachFixedPointPackage) where
  contractionMappingClosed : B.contractionMapping
  completenessConditionClosed : B.completenessCondition
  fixedPointExistenceClosed : B.fixedPointExistence
  uniquenessConditionClosed : B.uniquenessCondition

def BanachFixedPointClosed (B : BanachFixedPointPackage) : Prop :=
  B.contractionMapping ∧ B.completenessCondition ∧ B.fixedPointExistence ∧ B.uniquenessCondition

theorem banach_fixed_point_closed_from_evidence (B : BanachFixedPointPackage)
    (E : BanachFixedPointEvidence B) : BanachFixedPointClosed B := by
  exact And.intro E.contractionMappingClosed
    (And.intro E.completenessConditionClosed
      (And.intro E.fixedPointExistenceClosed E.uniquenessConditionClosed))

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse