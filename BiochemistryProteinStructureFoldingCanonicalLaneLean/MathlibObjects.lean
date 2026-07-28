import BiochemistryProteinStructureFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure ProteinSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProteinAdmittedObject where
  space : ProteinSpace
  foldedStructure : Prop
  sequenceMatches : Prop
  conformationValid : Prop
  conclusion : foldedStructure ∧ sequenceMatches ∧ conformationValid

def ProteinWitnessClosed (O : ProteinAdmittedObject) : Prop :=
  O.foldedStructure ∧ O.sequenceMatches ∧ O.conformationValid

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse