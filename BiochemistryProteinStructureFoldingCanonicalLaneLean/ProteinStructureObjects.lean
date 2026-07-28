import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ProteinSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProteinAdmittedObject where
  space : ProteinSpace
  foldedState : Prop
  unfoldedState : Prop
  energyLandscape : Type
  foldingPathway : Prop
  conclusion : foldingPathway

structure ProteinEndgameState where
  object : ProteinAdmittedObject

def ProteinWitnessClosed (O : ProteinAdmittedObject) : Prop :=
  O.foldingPathway

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse