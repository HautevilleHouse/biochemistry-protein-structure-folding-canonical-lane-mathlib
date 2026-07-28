import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure FoldingThermodynamicsPackage where
  nativeStateStable : Prop
  energyLandscapeFunnel : Prop
  foldingFreeEnergy : Prop
  hydrophobicCoreFormed : Prop
  secondaryStructureFormed : Prop

structure FoldingThermodynamicsEvidence (T : FoldingThermodynamicsPackage) where
  nativeStateStableClosed : T.nativeStateStable
  energyLandscapeFunnelClosed : T.energyLandscapeFunnel
  foldingFreeEnergyClosed : T.foldingFreeEnergy
  hydrophobicCoreFormedClosed : T.hydrophobicCoreFormed
  secondaryStructureFormedClosed : T.secondaryStructureFormed

def FoldingThermodynamicsClosed (T : FoldingThermodynamicsPackage) : Prop :=
  T.nativeStateStable ∧ T.energyLandscapeFunnel ∧ T.foldingFreeEnergy ∧
  T.hydrophobicCoreFormed ∧ T.secondaryStructureFormed

theorem folding_thermodynamics_closed_from_evidence
    (T : FoldingThermodynamicsPackage) (E : FoldingThermodynamicsEvidence T) :
    FoldingThermodynamicsClosed T :=
by
  exact And.intro E.nativeStateStableClosed
    (And.intro E.energyLandscapeFunnelClosed
      (And.intro E.foldingFreeEnergyClosed
        (And.intro E.hydrophobicCoreFormedClosed E.secondaryStructureFormedClosed)))

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse