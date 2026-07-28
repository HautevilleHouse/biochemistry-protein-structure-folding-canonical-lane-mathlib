import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure MutationAnalysisPackage where
  wildTypeStability : ThermodynamicStabilityPackage
  mutantStability : ThermodynamicStabilityPackage
  deltaDeltaG : Float
  lossOfFunction : Prop

structure MutationAnalysisEvidence (M : MutationAnalysisPackage) where
  wildTypeStabilityClosed : ThermodynamicStabilityClosed M.wildTypeStability
  mutantStabilityClosed : ThermodynamicStabilityClosed M.mutantStability
  deltaDeltaGClosed : M.deltaDeltaG > 0
  lossOfFunctionClosed : M.lossOfFunction → True

def MutationAnalysisClosed (M : MutationAnalysisPackage) : Prop :=
  ThermodynamicStabilityClosed M.wildTypeStability ∧
  ThermodynamicStabilityClosed M.mutantStability ∧
  M.deltaDeltaG > 0

theorem mutation_analysis_closed_from_evidence
    (M : MutationAnalysisPackage)
    (E : MutationAnalysisEvidence M) :
    MutationAnalysisClosed M := by
  exact And.intro E.wildTypeStabilityClosed
    (And.intro E.mutantStabilityClosed E.deltaDeltaGClosed)

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse