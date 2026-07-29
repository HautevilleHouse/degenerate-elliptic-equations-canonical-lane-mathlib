import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure DegenerateEllipticRegularityPackage where
  equationType : String
  weakSolutionExists : Prop
  regularityHolds : Prop
  regularityHoldsTerm : regularityHolds

structure DegenerateEllipticRegularityEvidence (D : DegenerateEllipticRegularityPackage) where
  regularityHoldsClosed : D.regularityHolds

def DegenerateEllipticRegularityClosed (D : DegenerateEllipticRegularityPackage) : Prop :=
  D.regularityHolds

theorem degenerate_elliptic_regularity_closed_from_evidence
    (D : DegenerateEllipticRegularityPackage) (E : DegenerateEllipticRegularityEvidence D) :
    DegenerateEllipticRegularityClosed D :=
  E.regularityHoldsClosed

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse