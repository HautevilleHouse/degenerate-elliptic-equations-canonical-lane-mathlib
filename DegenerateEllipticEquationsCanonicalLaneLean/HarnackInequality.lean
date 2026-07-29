import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure HarnackInequalityPackage where
  operatorType : Type u
  domainRegularity : Prop
  harnackConstant : Prop
  harnackInequality : Prop

structure HarnackInequalityEvidence (H : HarnackInequalityPackage) where
  domainRegularityClosed : H.domainRegularity
  harnackConstantClosed : H.harnackConstant
  harnackInequalityClosed : H.harnackInequality

def HarnackInequalityClosed (H : HarnackInequalityPackage) : Prop :=
  H.domainRegularity ∧ H.harnackConstant ∧ H.harnackInequality

theorem harnack_inequality_closed_from_evidence (H : HarnackInequalityPackage)
    (ev : HarnackInequalityEvidence H) : HarnackInequalityClosed H := by
  exact And.intro ev.domainRegularityClosed
    (And.intro ev.harnackConstantClosed ev.harnackInequalityClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse