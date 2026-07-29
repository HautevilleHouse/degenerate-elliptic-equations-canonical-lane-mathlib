import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure EllipticRegularityPackage where
  domain : Type u
  topology : TopologicalSpace domain
  ellipticOperator : Type v
  degenerateCoefficient : Type w
  weakSolutionSpace : Type x
  localBoundedness : Prop
  weakHarnackInequality : Prop
  holderContinuityEstimate : Prop

structure EllipticRegularityEvidence (E : EllipticRegularityPackage) where
  localBoundednessClosed : E.localBoundedness
  weakHarnackInequalityClosed : E.weakHarnackInequality
  holderContinuityEstimateClosed : E.holderContinuityEstimate

def EllipticRegularityClosed (E : EllipticRegularityPackage) : Prop :=
  E.localBoundedness ∧ E.weakHarnackInequality ∧ E.holderContinuityEstimate

theorem elliptic_regularity_closed_from_evidence (E : EllipticRegularityPackage)
    (Ev : EllipticRegularityEvidence E) : EllipticRegularityClosed E := by
  exact And.intro Ev.localBoundednessClosed
    (And.intro Ev.weakHarnackInequalityClosed Ev.holderContinuityEstimateClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse