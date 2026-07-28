import HautevilleHouse.BiochemistryProteinStructureFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure FoldingIntermediateStatesPackage (A : AdmissibleClass) where
  secondaryStructureFormed : Prop
  hydrophobicCoreCollapsed : Prop
  transitionStateEnsemble : Prop
  misfoldingAvoidance : Prop

structure FoldingIntermediateStatesEvidence {A : AdmissibleClass} (P : FoldingIntermediateStatesPackage A) where
  secondaryStructureFormedClosed : P.secondaryStructureFormed
  hydrophobicCoreCollapsedClosed : P.hydrophobicCoreCollapsed
  transitionStateEnsembleClosed : P.transitionStateEnsemble
  misfoldingAvoidanceClosed : P.misfoldingAvoidance

def FoldingIntermediateStatesClosed {A : AdmissibleClass} (P : FoldingIntermediateStatesPackage A) : Prop :=
  P.secondaryStructureFormed ∧ P.hydrophobicCoreCollapsed ∧ P.transitionStateEnsemble ∧ P.misfoldingAvoidance

theorem folding_intermediate_states_closed_from_evidence
    {A : AdmissibleClass} (P : FoldingIntermediateStatesPackage A)
    (E : FoldingIntermediateStatesEvidence P) : FoldingIntermediateStatesClosed P := by
  exact And.intro E.secondaryStructureFormedClosed
    (And.intro E.hydrophobicCoreCollapsedClosed
      (And.intro E.transitionStateEnsembleClosed E.misfoldingAvoidanceClosed))

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse