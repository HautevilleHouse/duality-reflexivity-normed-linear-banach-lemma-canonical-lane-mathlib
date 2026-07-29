import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean.DualBanachSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean

structure ClosedGraphTheoremPackage (P : DualBanachSpacePackage) where
  domain : Type u
  codomain : Type v
  domainNormedAddCommGroup : NormedAddCommGroup domain
  domainComplete : CompleteSpace domain
  codomainNormedAddCommGroup : NormedAddCommGroup codomain
  codomainComplete : CompleteSpace codomain
  linearMap : domain → codomain
  linearMapIsLinear : IsLinearMap ℝ linearMap
  graphClosed : IsClosed (Set.graph linearMap)
  mapIsBounded : BoundedLinearMap ℝ domain codomain
  mapIsBoundedProof : ∀ x : domain, ‖linearMap x‖ ≤ (mapIsBounded.operatorNorm) * ‖x‖

def ClosedGraphTheoremClosed (P : DualBanachSpacePackage) (C : ClosedGraphTheoremPackage P) : Prop :=
  C.graphClosed ∧ C.mapIsBoundedProof

theorem closed_graph_theorem_closed (P : DualBanachSpacePackage) (C : ClosedGraphTheoremPackage P) : ClosedGraphTheoremClosed P C :=
  And.intro C.graphClosed C.mapIsBoundedProof

end DualityReflexivityNormedLinearBanachLemmaCanonicalLaneLean
end HautevilleHouse
