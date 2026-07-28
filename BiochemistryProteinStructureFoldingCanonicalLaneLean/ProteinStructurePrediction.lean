import BiochemistryProteinStructureFoldingCanonicalLaneLean.ProteinFoldingEnergyLandscape

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure ProteinStructurePredictionPackage {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} where
  predictedStructure : Type u
  accuracyScore : ℝ
  confidenceMetric : Prop
  predictionMethod : String
  structureMatchesNative : Prop
  accuracyThreshold : accuracyScore ≥ 0.8
  confidenceValid : confidenceMetric
  predictionValid : structureMatchesNative

structure ProteinStructurePredictionEvidence {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} (P : ProteinStructurePredictionPackage A L) where
  accuracyThresholdClosed : P.accuracyThreshold
  confidenceValidClosed : P.confidenceValid
  predictionValidClosed : P.predictionValid

def ProteinStructurePredictionClosed {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} (P : ProteinStructurePredictionPackage A L) : Prop :=
  P.accuracyThreshold ∧ P.confidenceValid ∧ P.predictionValid

theorem protein_structure_prediction_closed_from_evidence {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} (P : ProteinStructurePredictionPackage A L) (E : ProteinStructurePredictionEvidence P) : ProteinStructurePredictionClosed P :=
  And.intro E.accuracyThresholdClosed (And.intro E.confidenceValidClosed E.predictionValidClosed)

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse