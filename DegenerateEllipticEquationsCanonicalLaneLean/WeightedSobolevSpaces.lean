import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure WeightedSobolevSpacesPackage where
  weightClass : Type u
  embeddingTheorems : Prop
  compactEmbeddings : Prop
  poincareInequalityWeighted : Prop

structure WeightedSobolevEvidence (W : WeightedSobolevSpacesPackage) where
  embeddingTheoremsClosed : W.embeddingTheorems
  compactEmbeddingsClosed : W.compactEmbeddings
  poincareInequalityWeightedClosed : W.poincareInequalityWeighted

def WeightedSobolevClosed (W : WeightedSobolevSpacesPackage) : Prop :=
  W.embeddingTheorems ∧ W.compactEmbeddings ∧ W.poincareInequalityWeighted

theorem weighted_sobolev_closed_from_evidence (W : WeightedSobolevSpacesPackage)
    (Ev : WeightedSobolevEvidence W) : WeightedSobolevClosed W := by
  exact And.intro Ev.embeddingTheoremsClosed
    (And.intro Ev.compactEmbeddingsClosed Ev.poincareInequalityWeightedClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse