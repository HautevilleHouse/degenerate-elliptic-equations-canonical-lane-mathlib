import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure RegularityTheoryPackage where
  coefficientRegularity : Prop
  solutionRegularity : Prop
  boundaryRegularity : Prop
  schauderEstimates : Prop

structure RegularityTheoryEvidence (R : RegularityTheoryPackage) where
  coefficientRegularityClosed : R.coefficientRegularity
  solutionRegularityClosed : R.solutionRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  schauderEstimatesClosed : R.schauderEstimates

def RegularityTheoryClosed (R : RegularityTheoryPackage) : Prop :=
  R.coefficientRegularity ∧ R.solutionRegularity ∧
  R.boundaryRegularity ∧ R.schauderEstimates

theorem regularity_theory_closed_from_evidence (R : RegularityTheoryPackage)
    (ev : RegularityTheoryEvidence R) : RegularityTheoryClosed R := by
  exact And.intro ev.coefficientRegularityClosed
    (And.intro ev.solutionRegularityClosed
      (And.intro ev.boundaryRegularityClosed ev.schauderEstimatesClosed))

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse