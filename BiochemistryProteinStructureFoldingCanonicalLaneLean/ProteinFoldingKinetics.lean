import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure KineticFoldingPackage (A : AdmissibleClass) where
  rateConstantsDetermined : Prop
  foldingPathwayMapped : Prop
  transitionStateStructure : Prop
  chevronPlotConsistency : Prop

def KineticFoldingClosed (K : KineticFoldingPackage A) : Prop :=
  K.rateConstantsDetermined ∧ K.foldingPathwayMapped ∧ K.transitionStateStructure ∧ K.chevronPlotConsistency

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse