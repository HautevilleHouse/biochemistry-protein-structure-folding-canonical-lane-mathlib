import BiochemistryProteinStructureFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure AminoAcidSequencePackage where
  sequence : List (Nat × String)
  length : Nat
  composition : Type u
  sequenceValid : Prop
  compositionValid : Prop
  sequenceUnique : Prop

structure AminoAcidSequenceEvidence (A : AminoAcidSequencePackage) where
  sequenceValidClosed : A.sequenceValid
  compositionValidClosed : A.compositionValid
  sequenceUniqueClosed : A.sequenceUnique

def AminoAcidSequenceClosed (A : AminoAcidSequencePackage) : Prop :=
  A.sequenceValid ∧ A.compositionValid ∧ A.sequenceUnique

theorem amino_acid_sequence_closed_from_evidence (A : AminoAcidSequencePackage) (E : AminoAcidSequenceEvidence A) : AminoAcidSequenceClosed A :=
  And.intro E.sequenceValidClosed (And.intro E.compositionValidClosed E.sequenceUniqueClosed)

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse