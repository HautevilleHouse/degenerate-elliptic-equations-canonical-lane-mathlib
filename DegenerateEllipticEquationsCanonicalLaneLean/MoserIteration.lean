import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure MoserIterationPackage where
  iterationStep : Type u
  energyEstimates : Prop
  harnackChain : Prop
  oscillationDecay : Prop

structure MoserIterationEvidence (M : MoserIterationPackage) where
  energyEstimatesClosed : M.energyEstimates
  harnackChainClosed : M.harnackChain
  oscillationDecayClosed : M.oscillationDecay

def MoserIterationClosed (M : MoserIterationPackage) : Prop :=
  M.energyEstimates ∧ M.harnackChain ∧ M.oscillationDecay

theorem moser_iteration_closed_from_evidence (M : MoserIterationPackage)
    (Ev : MoserIterationEvidence M) : MoserIterationClosed M := by
  exact And.intro Ev.energyEstimatesClosed
    (And.intro Ev.harnackChainClosed Ev.oscillationDecayClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse