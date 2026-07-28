import BiochemistryProteinStructureFoldingCanonicalLaneLean.FoldingKinetics

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure MolecularChaperonesPackage {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} {P : ProteinStructurePredictionPackage A L} {K : FoldingKineticsPackage A L P} where
  chaperoneType : String
  atpHydrolysis : Prop
  foldingAssistance : Prop
  energeticsValid : atpHydrolysis → foldingAssistance
  modelValid : Prop
  assistanceValid : foldingAssistance

structure MolecularChaperonesEvidence {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} {P : ProteinStructurePredictionPackage A L} {K : FoldingKineticsPackage A L P} (M : MolecularChaperonesPackage A L P K) where
  energeticsValidClosed : M.energeticsValid M.atpHydrolysis
  modelValidClosed : M.modelValid
  assistanceValidClosed : M.assistanceValid

def MolecularChaperonesClosed {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} {P : ProteinStructurePredictionPackage A L} {K : FoldingKineticsPackage A L P} (M : MolecularChaperonesPackage A L P K) : Prop :=
  (M.atpHydrolysis → M.foldingAssistance) ∧ M.modelValid ∧ M.assistanceValid

theorem molecular_chaperones_closed_from_evidence {A : AminoAcidSequencePackage} {L : ProteinFoldingEnergyLandscapePackage A} {P : ProteinStructurePredictionPackage A L} {K : FoldingKineticsPackage A L P} (M : MolecularChaperonesPackage A L P K) (E : MolecularChaperonesEvidence M) : MolecularChaperonesClosed M :=
  And.intro E.energeticsValidClosed (And.intro E.modelValidClosed E.assistanceValidClosed)

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse