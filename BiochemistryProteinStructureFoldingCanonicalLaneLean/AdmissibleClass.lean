import BiochemistryProteinStructureFoldingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure AdmissibleClass where
  object : ProteinAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ProteinWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse