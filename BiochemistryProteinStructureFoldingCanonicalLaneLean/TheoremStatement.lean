import HautevilleHouse.BiochemistryProteinStructureFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinStructureFoldingCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  foldingConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String :=
  "BiochemistryProteinStructureFoldingCanonicalLaneLean"

def sourceDescription : String :=
  "Protein structure folding: admissible-class closure for the thermodynamic and kinetic principles governing protein folding."

def sourceTheoremBoundary : String :=
  "classical source boundary"

def baselineCertificateLane : String :=
  "folding_constrained"

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := sourceTheoremBoundary
  , foldingConstrainedStatement := "folding-constrained theorem certificate internalized through bridge and gate closure"
  , certificateLane := baselineCertificateLane
  , carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end BiochemistryProteinStructureFoldingCanonicalLaneLean
end HautevilleHouse