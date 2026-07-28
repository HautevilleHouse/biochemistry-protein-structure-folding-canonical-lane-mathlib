import BiochemistryProteinStructureFoldingCanonicalLaneLean.ProteinStructurePrediction

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure FoldingKineticsPackage {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} {P : ProteinStructurePredictionPackage A L} where
  foldingRate : ℝ
  unfoldingRate : ℝ
  kineticModel : String
  rateValid : foldingRate > 0 ∧ unfoldingRate > 0
  modelValid : Prop
  kineticsConsistent : Prop

structure FoldingKineticsEvidence {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} {P : ProteinStructurePredictionPackage A L} (K : FoldingKineticsPackage A L P) where
  rateValidClosed : K.rateValid
  modelValidClosed : K.modelValid
  kineticsConsistentClosed : K.kineticsConsistent

def FoldingKineticsClosed {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} {P : ProteinStructurePredictionPackage A L} (K : FoldingKineticsPackage A L P) : Prop :=
  K.rateValid ∧ K.modelValid ∧ K.kineticsConsistent

theorem folding_kinetics_closed_from_evidence {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} {P : ProteinStructurePredictionPackage A L} (K : FoldingKineticsPackage A L P) (E : FoldingKineticsEvidence K) : FoldingKineticsClosed K :=
  And.intro E.rateValidClosed (And.intro E.modelValidClosed E.kineticsConsistentClosed)

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse