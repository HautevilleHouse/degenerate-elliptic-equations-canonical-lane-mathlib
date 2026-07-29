import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure DegenerateEllipticHarnackPackage where
  domainType : Type
  harnackInequality : Prop
  harnackInequalityTerm : harnackInequality

structure DegenerateEllipticHarnackEvidence (H : DegenerateEllipticHarnackPackage) where
  harnackInequalityClosed : H.harnackInequality

def DegenerateEllipticHarnackClosed (H : DegenerateEllipticHarnackPackage) : Prop :=
  H.harnackInequality

theorem degenerate_elliptic_harnack_closed_from_evidence
    (H : DegenerateEllipticHarnackPackage) (E : DegenerateEllipticHarnackEvidence H) :
    DegenerateEllipticHarnackClosed H :=
  E.harnackInequalityClosed

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse