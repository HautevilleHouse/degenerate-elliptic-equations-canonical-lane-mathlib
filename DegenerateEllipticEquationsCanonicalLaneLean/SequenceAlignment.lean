import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : Type
  referenceSequence : Type
  alignmentScore : Type
  optimalAlignmentFound : Prop
  gapPenaltyApplied : Prop
  substitutionMatrixUsed : Prop
  optimalAlignmentFoundTerm : optimalAlignmentFound
  gapPenaltyAppliedTerm : gapPenaltyApplied
  substitutionMatrixUsedTerm : substitutionMatrixUsed

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  optimalAlignmentFoundClosed : S.optimalAlignmentFound
  gapPenaltyAppliedClosed : S.gapPenaltyApplied
  substitutionMatrixUsedClosed : S.substitutionMatrixUsed

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.optimalAlignmentFound ∧ S.gapPenaltyApplied ∧ S.substitutionMatrixUsed

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.optimalAlignmentFoundClosed (And.intro E.gapPenaltyAppliedClosed E.substitutionMatrixUsedClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse