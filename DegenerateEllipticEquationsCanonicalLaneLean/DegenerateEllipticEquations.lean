import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure DegenerateEllipticEquation where
  operator : Type u
  domain : Type v
  coefficients : Type w
  ellipticityCondition : Prop
  degeneracySet : Prop
  boundaryCondition : Prop

structure DegenerateEllipticEvidence (E : DegenerateEllipticEquation) where
  ellipticityConditionClosed : E.ellipticityCondition
  degeneracySetClosed : E.degeneracySet
  boundaryConditionClosed : E.boundaryCondition

def DegenerateEllipticClosed (E : DegenerateEllipticEquation) : Prop :=
  E.ellipticityCondition ∧ E.degeneracySet ∧ E.boundaryCondition

theorem degenerate_elliptic_closed_from_evidence (E : DegenerateEllipticEquation)
    (ev : DegenerateEllipticEvidence E) : DegenerateEllipticClosed E := by
  exact And.intro ev.ellipticityConditionClosed
    (And.intro ev.degeneracySetClosed ev.boundaryConditionClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse