import HautevilleHouse.BiochemistryProteinStructureFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure NativeStructureClassificationPackage (A : AdmissibleClass) where
  targetNativeStructure : Type u
  thermodynamicStability : Prop
  kineticAccessibility : Prop
  uniqueGlobalMinimum : Prop
  nativeStateMatchesBioinformatics : Prop

structure NativeStructureClassificationEvidence {A : AdmissibleClass}
    (P : NativeStructureClassificationPackage A) where
  thermodynamicStabilityClosed : P.thermodynamicStability
  kineticAccessibilityClosed : P.kineticAccessibility
  uniqueGlobalMinimumClosed : P.uniqueGlobalMinimum
  nativeStateMatchesBioinformaticsClosed : P.nativeStateMatchesBioinformatics

def NativeStructureClassificationClosed {A : AdmissibleClass}
    (P : NativeStructureClassificationPackage A) : Prop :=
  P.thermodynamicStability ∧ P.kineticAccessibility ∧ P.uniqueGlobalMinimum ∧ P.nativeStateMatchesBioinformatics

theorem native_structure_classification_closed_from_evidence
    {A : AdmissibleClass} (P : NativeStructureClassificationPackage A)
    (E : NativeStructureClassificationEvidence P) : NativeStructureClassificationClosed P := by
  exact And.intro E.thermodynamicStabilityClosed
    (And.intro E.kineticAccessibilityClosed
      (And.intro E.uniqueGlobalMinimumClosed E.nativeStateMatchesBioinformaticsClosed))

theorem native_structure_classification_supplies_mathlib_statement
    {A : AdmissibleClass} (P : NativeStructureClassificationPackage A) :
    P.uniqueGlobalMinimum := by
  exact P.uniqueGlobalMinimum

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse