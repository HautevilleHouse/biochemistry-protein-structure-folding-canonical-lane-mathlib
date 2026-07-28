import BiochemistryProteinStructureFoldingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse