import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure DegenerateOperatorAnalysisPackage where
  operatorType : Type u
  degeneracySet : Type v
  weightFunction : Type w
  weightedSobolevEmbedding : Prop
  compacityEstimates : Prop
  spectralProperties : Prop

structure DegenerateOperatorEvidence (D : DegenerateOperatorAnalysisPackage) where
  weightedSobolevEmbeddingClosed : D.weightedSobolevEmbedding
  compacityEstimatesClosed : D.compacityEstimates
  spectralPropertiesClosed : D.spectralProperties

def DegenerateOperatorClosed (D : DegenerateOperatorAnalysisPackage) : Prop :=
  D.weightedSobolevEmbedding ∧ D.compacityEstimates ∧ D.spectralProperties

theorem degenerate_operator_closed_from_evidence (D : DegenerateOperatorAnalysisPackage)
    (Ev : DegenerateOperatorEvidence D) : DegenerateOperatorClosed D := by
  exact And.intro Ev.weightedSobolevEmbeddingClosed
    (And.intro Ev.compacityEstimatesClosed Ev.spectralPropertiesClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse