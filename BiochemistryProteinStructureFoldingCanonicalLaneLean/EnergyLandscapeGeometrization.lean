import HautevilleHouse.BiochemistryProteinStructureFoldingCanonicalLaneLean.FoldingIntermediateStates

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure EnergyLandscapeGeometrizationPackage {A : AdmissibleClass}
    {F : FoldingIntermediateStatesPackage A} where
  funnelShape : Prop
  roughnessControlled : Prop
  barrierHeights : Prop
  globalMinimumReachable : Prop

structure EnergyLandscapeGeometrizationEvidence {A : AdmissibleClass}
    {F : FoldingIntermediateStatesPackage A}
    (G : EnergyLandscapeGeometrizationPackage F) where
  funnelShapeClosed : G.funnelShape
  roughnessControlledClosed : G.roughnessControlled
  barrierHeightsClosed : G.barrierHeights
  globalMinimumReachableClosed : G.globalMinimumReachable

def EnergyLandscapeGeometrizationClosed {A : AdmissibleClass}
    {F : FoldingIntermediateStatesPackage A}
    (G : EnergyLandscapeGeometrizationPackage F) : Prop :=
  G.funnelShape ∧ G.roughnessControlled ∧ G.barrierHeights ∧ G.globalMinimumReachable

theorem energy_landscape_geometrization_closed_from_evidence
    {A : AdmissibleClass} {F : FoldingIntermediateStatesPackage A}
    (G : EnergyLandscapeGeometrizationPackage F)
    (E : EnergyLandscapeGeometrizationEvidence G) : EnergyLandscapeGeometrizationClosed G := by
  exact And.intro E.funnelShapeClosed
    (And.intro E.roughnessControlledClosed
      (And.intro E.barrierHeightsClosed E.globalMinimumReachableClosed))

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse