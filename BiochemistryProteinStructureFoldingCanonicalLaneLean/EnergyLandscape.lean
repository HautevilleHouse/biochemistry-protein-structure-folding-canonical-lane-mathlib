import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure EnergyLandscapePackage where
  globalMinimumEnergy : Float
  multipleLocalMinima : Prop
  funnelShapeIndex : Float
  roughnessParameter : Float

structure EnergyLandscapeEvidence (E : EnergyLandscapePackage) where
  globalMinimumEnergyClosed : E.globalMinimumEnergy < 0
  multipleLocalMinimaClosed : E.multipleLocalMinima
  funnelShapeIndexClosed : E.funnelShapeIndex > 0.5
  roughnessParameterClosed : E.roughnessParameter < 0.1

def EnergyLandscapeClosed (E : EnergyLandscapePackage) : Prop :=
  E.globalMinimumEnergy < 0 ∧ E.multipleLocalMinima ∧
  E.funnelShapeIndex > 0.5 ∧ E.roughnessParameter < 0.1

theorem energy_landscape_closed_from_evidence
    (E : EnergyLandscapePackage)
    (Ev : EnergyLandscapeEvidence E) :
    EnergyLandscapeClosed E := by
  exact And.intro Ev.globalMinimumEnergyClosed
    (And.intro Ev.multipleLocalMinimaClosed
      (And.intro Ev.funnelShapeIndexClosed Ev.roughnessParameterClosed))

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse