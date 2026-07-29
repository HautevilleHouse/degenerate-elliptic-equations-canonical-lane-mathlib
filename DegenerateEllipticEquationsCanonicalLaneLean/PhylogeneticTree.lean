import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesTaxa : Type
  molecularData : Type
  treeTopology : Type
  treeReconstructed : Prop
  branchLengthsEstimated : Prop
  bootstrapSupport : Prop
  treeReconstructedTerm : treeReconstructed
  branchLengthsEstimatedTerm : branchLengthsEstimated
  bootstrapSupportTerm : bootstrapSupport

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeReconstructedClosed : P.treeReconstructed
  branchLengthsEstimatedClosed : P.branchLengthsEstimated
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeReconstructed ∧ P.branchLengthsEstimated ∧ P.bootstrapSupport

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.treeReconstructedClosed (And.intro E.branchLengthsEstimatedClosed E.bootstrapSupportClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse