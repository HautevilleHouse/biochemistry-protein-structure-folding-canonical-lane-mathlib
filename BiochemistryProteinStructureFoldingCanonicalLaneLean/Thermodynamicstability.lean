import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure ThermodynamicStabilityPackage where
  foldingTemperature : Float
  gibbsFreeEnergy : Float
  enthalpy : Float
  entropyLoss : Float
  stabilityRatio : Float

structure ThermodynamicStabilityEvidence (P : ThermodynamicStabilityPackage) where
  foldingTemperatureClosed : P.foldingTemperature > 0
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy < 0
  enthalpyClosed : P.enthalpy < 0
  entropyLossClosed : P.entropyLoss > 0
  stabilityRatioClosed : P.stabilityRatio > 1.0

def ThermodynamicStabilityClosed (P : ThermodynamicStabilityPackage) : Prop :=
  P.foldingTemperature > 0 ∧ P.gibbsFreeEnergy < 0 ∧
  P.enthalpy < 0 ∧ P.entropyLoss > 0 ∧ P.stabilityRatio > 1.0

theorem thermodynamic_stability_closed_from_evidence
    (P : ThermodynamicStabilityPackage)
    (E : ThermodynamicStabilityEvidence P) :
    ThermodynamicStabilityClosed P := by
  exact And.intro E.foldingTemperatureClosed
    (And.intro E.gibbsFreeEnergyClosed
      (And.intro E.enthalpyClosed
        (And.intro E.entropyLossClosed E.stabilityRatioClosed)))

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse