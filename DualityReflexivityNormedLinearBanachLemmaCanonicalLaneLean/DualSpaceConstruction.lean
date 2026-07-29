import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure NormedSpacePackage (V : Type) where
  norm : V → ℝ
  norm_nonneg : ∀ x, 0 ≤ norm x
  norm_eq_zero : ∀ x, norm x = 0 ↔ x = 0
  norm_smul : ∀ (a : ℝ) (x : V), norm (a • x) = |a| * norm x
  norm_triangle : ∀ x y : V, norm (x + y) ≤ norm x + norm y

structure DualSpacePackage (V : Type) (N : NormedSpacePackage V) where
  dual : Type
  dualNorm : NormedSpacePackage dual
  linearFunctional : Type
  boundedness : Prop
  operatorNorm : Type

structure DualSpaceEvidence {V : Type} {N : NormedSpacePackage V} (D : DualSpacePackage V N) where
  boundednessClosed : D.boundedness

def DualSpaceClosed {V : Type} {N : NormedSpacePackage V} (D : DualSpacePackage V N) : Prop :=
  D.boundedness

theorem dual_space_closed_from_evidence {V : Type} {N : NormedSpacePackage V} (D : DualSpacePackage V N) (E : DualSpaceEvidence D) : DualSpaceClosed D := by
  exact E.boundednessClosed

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse