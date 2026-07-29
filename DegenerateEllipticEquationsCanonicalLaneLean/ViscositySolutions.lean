import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure ViscositySolutionPackage where
  equation : Type u
  testFunctions : Type v
  subsolutionCondition : Prop
  supersolutionCondition : Prop
  comparisonPrinciple : Prop

structure ViscositySolutionEvidence (V : ViscositySolutionPackage) where
  subsolutionConditionClosed : V.subsolutionCondition
  supersolutionConditionClosed : V.supersolutionCondition
  comparisonPrincipleClosed : V.comparisonPrinciple

def ViscositySolutionClosed (V : ViscositySolutionPackage) : Prop :=
  V.subsolutionCondition ∧ V.supersolutionCondition ∧ V.comparisonPrinciple

theorem viscosity_solution_closed_from_evidence (V : ViscositySolutionPackage)
    (ev : ViscositySolutionEvidence V) : ViscositySolutionClosed V := by
  exact And.intro ev.subsolutionConditionClosed
    (And.intro ev.supersolutionConditionClosed ev.comparisonPrincipleClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse