import BiochemistryProteinStructureFoldingCanonicalLaneLean.AminoAcidSequence

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure ProteinFoldingEnergyLandscapePackage {A : AminoAcidSequencePackage} where
  nativeStateEnergy : ℝ
  unfoldedStateEnergy : ℝ
  energyBarrier : ℝ
  ruggedness : ℝ
  energyLandscapeConvex : Prop
  funnelShaped : Prop
  energyGapPositive : energyGap := nativeStateEnergy - unfoldedStateEnergy > 0
  landscapeValid : energyGapPositive
  funnelValid : funnelShaped

structure ProteinFoldingEnergyLandscapeEvidence {A : AminoAcidSequencePackage} (L : ProteinFoldingEnergyLandscapePackage A) where
  landscapeValidClosed : L.landscapeValid
  funnelValidClosed : L.funnelValid

def ProteinFoldingEnergyLandscapeClosed {A : AminoAcidSequencePackage} (L : ProteinFoldingEnergyLandscapePackage A) : Prop :=
  L.landscapeValid ∧ L.funnelValid

theorem protein_folding_energy_landscape_closed_from_evidence {A : AminoAcidSequencePackage} (L : ProteinFoldingEnergyLandscapePackage A) (E : ProteinFoldingEnergyLandscapeEvidence L) : ProteinFoldingEnergyLandscapeClosed L :=
  And.intro E.landscapeValidClosed E.funnelValidClosed

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse