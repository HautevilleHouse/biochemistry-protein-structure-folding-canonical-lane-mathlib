import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure ProteinStructure where
  sequence : String
  nativeConformation : Type
  energyLandscape : Type

structure ProteinFoldingAdmittedObject where
  protein : ProteinStructure
  foldsCorrectly : Prop
  foldingFreeEnergyNegative : Prop
  conclusion : foldsCorrectly

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse