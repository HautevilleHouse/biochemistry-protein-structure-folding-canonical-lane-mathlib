import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure ThermodynamicStabilityPackage (A : AdmissibleClass) where
  freeEnergyMinimization : Prop
  enthalpyStabilization : Prop
  entropyContribution : Prop
  foldingTemperature : Prop

def ThermodynamicStabilityClosed (P : ThermodynamicStabilityPackage A) : Prop :=
  P.freeEnergyMinimization ∧ P.enthalpyStabilization ∧ P.entropyContribution ∧ P.foldingTemperature

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse