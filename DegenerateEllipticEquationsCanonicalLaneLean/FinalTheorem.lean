import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

def ConstrainedDegenerateEllipticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_degenerate_elliptic_endgame (A : AdmissibleClass) :
    ConstrainedDegenerateEllipticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse