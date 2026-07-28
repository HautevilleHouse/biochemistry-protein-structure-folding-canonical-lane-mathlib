import canonicalLaneMathlib.AdmissibleClass
import BiochemistryProteinStructureFoldingCanonicalLaneLean.ProteinStructureObjects

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure EnergyLandscapePackage where
  potentialEnergySurface : Type u
  localMinima : Prop
  saddlePoints : Prop
  foldingPathways : Prop
  energyBarrierHeights : Prop

structure EnergyLandscapeEvidence (E : EnergyLandscapePackage) where
  potentialEnergySurfaceClosed : E.potentialEnergySurface
  localMinimaClosed : E.localMinima
  saddlePointsClosed : E.saddlePoints
  foldingPathwaysClosed : E.foldingPathways
  energyBarrierHeightsClosed : E.energyBarrierHeights

def EnergyLandscapeClosed (E : EnergyLandscapePackage) : Prop :=
  E.potentialEnergySurface ∧ E.localMinima ∧ E.saddlePoints ∧ E.foldingPathways ∧ E.energyBarrierHeights

theorem energy_landscape_closed_from_evidence (E : EnergyLandscapePackage) (Ev : EnergyLandscapeEvidence E) :
    EnergyLandscapeClosed E := by
  exact And.intro Ev.potentialEnergySurfaceClosed
    (And.intro Ev.localMinimaClosed
      (And.intro Ev.saddlePointsClosed
        (And.intro Ev.foldingPathwaysClosed Ev.energyBarrierHeightsClosed)))

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse