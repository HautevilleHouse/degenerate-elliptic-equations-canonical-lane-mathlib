import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateEllipticEquationsCanonicalLaneLean

structure HardyWeinbergEquilibriumObject where
  populationFrequencies : Type
  genotypeFrequencies : Type
  alleleFrequencyModel : Prop
  hardyWeinbergLaw : Prop
  conclusion : hardyWeinbergLaw

def DegenerateEllipticWitnessClosed (O : HardyWeinbergEquilibriumObject) : Prop :=
  O.hardyWeinbergLaw

end DegenerateEllipticEquationsCanonicalLaneLean
end HautevilleHouse