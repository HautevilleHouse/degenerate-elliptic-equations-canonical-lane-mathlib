import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure GenotypeEquilibriumPackage where
  populationAlleleFrequencies : Type
  hardyWeinbergExpected : Type
  observedGenotypeCounts : Type
  equilibriumConditionSatisfied : Prop
  chiSquareTestStatistic : Prop
  degreesOfFreedom : Prop
  equilibriumConditionSatisfiedTerm : equilibriumConditionSatisfied
  chiSquareTestStatisticTerm : chiSquareTestStatistic
  degreesOfFreedomTerm : degreesOfFreedom

structure GenotypeEquilibriumEvidence (G : GenotypeEquilibriumPackage) where
  equilibriumConditionSatisfiedClosed : G.equilibriumConditionSatisfied
  chiSquareTestStatisticClosed : G.chiSquareTestStatistic
  degreesOfFreedomClosed : G.degreesOfFreedom

def GenotypeEquilibriumClosed (G : GenotypeEquilibriumPackage) : Prop :=
  G.equilibriumConditionSatisfied ∧ G.chiSquareTestStatistic ∧ G.degreesOfFreedom

theorem genotype_equilibrium_closed_from_evidence (G : GenotypeEquilibriumPackage)
    (E : GenotypeEquilibriumEvidence G) : GenotypeEquilibriumClosed G := by
  exact And.intro E.equilibriumConditionSatisfiedClosed (And.intro E.chiSquareTestStatisticClosed E.degreesOfFreedomClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse