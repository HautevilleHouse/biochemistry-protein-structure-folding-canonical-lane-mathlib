import BiochemistryProteinStructureFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ProteinWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse