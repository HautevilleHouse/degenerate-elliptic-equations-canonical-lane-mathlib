import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure AdmissibleClass where
  object : DegenerateEllipticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DegenerateEllipticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse