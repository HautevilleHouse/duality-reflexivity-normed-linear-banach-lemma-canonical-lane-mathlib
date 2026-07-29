import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.OpenMappingClosedGraph

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure UniformBoundednessPackage (V W : Type) (NV : NormedSpacePackage V) (NW : NormedSpacePackage W) where
  familyOfOperators : Type
  pointwiseBounded : Prop
  uniformBounded : Prop

structure UniformBoundednessEvidence {V W : Type} {NV : NormedSpacePackage V} {NW : NormedSpacePackage W} (U : UniformBoundednessPackage V W NV NW) where
  pointwiseBoundedClosed : U.pointwiseBounded
  uniformBoundedClosed : U.uniformBounded

def UniformBoundednessClosed {V W : Type} {NV : NormedSpacePackage V} {NW : NormedSpacePackage W} (U : UniformBoundednessPackage V W NV NW) : Prop :=
  U.pointwiseBounded ∧ U.uniformBounded

theorem uniform_boundedness_closed_from_evidence {V W : Type} {NV : NormedSpacePackage V} {NW : NormedSpacePackage W} (U : UniformBoundednessPackage V W NV NW) (E : UniformBoundednessEvidence U) : UniformBoundednessClosed U := by
  exact And.intro E.pointwiseBoundedClosed E.uniformBoundedClosed

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse