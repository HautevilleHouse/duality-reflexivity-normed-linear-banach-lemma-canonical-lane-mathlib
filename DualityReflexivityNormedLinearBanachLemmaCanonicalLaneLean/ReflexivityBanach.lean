import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualSpaceConstruction

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure ReflexivityPackage (V : Type) (N : NormedSpacePackage V) where
  doubleDual : Type
  canonicalEmbedding : Type
  isReflexive : Prop
  surjectivity : Prop

structure ReflexivityEvidence {V : Type} {N : NormedSpacePackage V} (R : ReflexivityPackage V N) where
  isReflexiveClosed : R.isReflexive
  surjectivityClosed : R.surjectivity

def ReflexivityClosed {V : Type} {N : NormedSpacePackage V} (R : ReflexivityPackage V N) : Prop :=
  R.isReflexive ∧ R.surjectivity

theorem reflexivity_closed_from_evidence {V : Type} {N : NormedSpacePackage V} (R : ReflexivityPackage V N) (E : ReflexivityEvidence R) : ReflexivityClosed R := by
  exact And.intro E.isReflexiveClosed E.surjectivityClosed

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse