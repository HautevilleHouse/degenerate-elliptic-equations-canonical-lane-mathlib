import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure PhylogeneticsPackage where
  molecularClock : Prop
  treeReconstruction : Prop
  branchLengthEstimation : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  molecularClockClosed : P.molecularClock
  treeReconstructionClosed : P.treeReconstruction
  branchLengthEstimationClosed : P.branchLengthEstimation

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.molecularClock ∧ P.treeReconstruction ∧ P.branchLengthEstimation

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.molecularClockClosed (And.intro E.treeReconstructionClosed E.branchLengthEstimationClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse
