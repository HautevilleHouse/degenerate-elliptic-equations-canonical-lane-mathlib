import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  locusAlleleFrequencies : Prop
  genotypeFrequenciesEquilibrium : Prop
  chiSquareStatistic : Prop

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  locusAlleleFrequenciesClosed : H.locusAlleleFrequencies
  genotypeFrequenciesEquilibriumClosed : H.genotypeFrequenciesEquilibrium
  chiSquareStatisticClosed : H.chiSquareStatistic

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.locusAlleleFrequencies ∧ H.genotypeFrequenciesEquilibrium ∧ H.chiSquareStatistic

theorem hardy_weinberg_equilibrium_closed_from_evidence (H : HardyWeinbergEquilibriumPackage) (E : HardyWeinbergEquilibriumEvidence H) : HardyWeinbergEquilibriumClosed H := by
  exact And.intro E.locusAlleleFrequenciesClosed (And.intro E.genotypeFrequenciesEquilibriumClosed E.chiSquareStatisticClosed)

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse
