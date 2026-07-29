import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure LinkageAnalysisPackage where
  geneticMarkers : Type
  recombinationFraction : Type
  lodScore : Type
  linkageDetected : Prop
  recombinationFractionValid : Prop
  lodScoreSignificant : Prop
  linkageDetectedTerm : linkageDetected
  recombinationFractionValidTerm : recombinationFractionValid
  lodScoreSignificantTerm : lodScoreSignificant

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkageDetectedClosed : L.linkageDetected
  recombinationFractionValidClosed : L.recombinationFractionValid
  lodScoreSignificantClosed : L.lodScoreSignificant

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageDetected ∧ L.recombinationFractionValid ∧ L.lodScoreSignificant

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.linkageDetectedClosed (And.intro E.recombinationFractionValidClosed E.lodScoreSignificantClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse