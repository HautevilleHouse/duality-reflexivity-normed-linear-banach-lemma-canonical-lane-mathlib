import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure DualSpacePackage (V : BanachSpace) where
  dual : Type u
  normedAddCommGroupDual : NormedAddCommGroup dual
  completeDual : CompleteSpace dual
  dualPairing : V.carrier → dual → ℝ
  dualPairingBounded : Prop
  dualPairingBoundedTerm : dualPairingBounded

structure DualSpaceEvidence {V : BanachSpace} (D : DualSpacePackage V) where
  dualPairingBoundedClosed : D.dualPairingBounded

def DualSpaceClosed {V : BanachSpace} (D : DualSpacePackage V) : Prop :=
  D.dualPairingBounded

theorem dual_space_closed_from_evidence
    {V : BanachSpace} (D : DualSpacePackage V) (E : DualSpaceEvidence D) :
    DualSpaceClosed D := by
  exact E.dualPairingBoundedClosed

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
