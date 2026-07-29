import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure HardyLittlewoodSobolevPackage where
  fractionalIntegral : Type u
  boundednessEstimates : Prop
  strongTypeEstimates : Prop
  weakTypeEstimates : Prop

structure HardyLittlewoodSobolevEvidence (H : HardyLittlewoodSobolevPackage) where
  boundednessEstimatesClosed : H.boundednessEstimates
  strongTypeEstimatesClosed : H.strongTypeEstimates
  weakTypeEstimatesClosed : H.weakTypeEstimates

def HardyLittlewoodSobolevClosed (H : HardyLittlewoodSobolevPackage) : Prop :=
  H.boundednessEstimates ∧ H.strongTypeEstimates ∧ H.weakTypeEstimates

theorem hardy_littlewood_sobolev_closed_from_evidence (H : HardyLittlewoodSobolevPackage)
    (Ev : HardyLittlewoodSobolevEvidence H) : HardyLittlewoodSobolevClosed H := by
  exact And.intro Ev.boundednessEstimatesClosed
    (And.intro Ev.strongTypeEstimatesClosed Ev.weakTypeEstimatesClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse