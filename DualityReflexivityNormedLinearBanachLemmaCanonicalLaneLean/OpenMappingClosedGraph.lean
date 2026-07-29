import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.HahnBanachExtension

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure OpenMappingPackage (V W : Type) (NV : NormedSpacePackage V) (NW : NormedSpacePackage W) where
  boundedLinearMap : Type
  surjectivity : Prop
  openness : Prop
  closedGraphTheorem : Prop

structure OpenMappingEvidence {V W : Type} {NV : NormedSpacePackage V} {NW : NormedSpacePackage W} (O : OpenMappingPackage V W NV NW) where
  opennessClosed : O.openness
  closedGraphTheoremClosed : O.closedGraphTheorem

def OpenMappingClosed {V W : Type} {NV : NormedSpacePackage V} {NW : NormedSpacePackage W} (O : OpenMappingPackage V W NV NW) : Prop :=
  O.openness ∧ O.closedGraphTheorem

theorem open_mapping_closed_from_evidence {V W : Type} {NV : NormedSpacePackage V} {NW : NormedSpacePackage W} (O : OpenMappingPackage V W NV NW) (E : OpenMappingEvidence O) : OpenMappingClosed O := by
  exact And.intro E.opennessClosed E.closedGraphTheoremClosed

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse