import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure SiegelLemmaPackage {D : DiophantineForm} (FD : DiophantineFormClosed D) where
  linearSystemRows : ℕ
  linearSystemCols : ℕ
  bound : ℚ
  smallSolutionExists : Prop
  boundPositive : bound > 0
  boundPositiveTerm : boundPositive
  smallSolutionExistsTerm : smallSolutionExists

structure SiegelLemmaEvidence {D : DiophantineForm} {FD : DiophantineFormClosed D}
    (S : SiegelLemmaPackage FD) where
  smallSolutionExistsClosed : S.smallSolutionExists
  boundPositiveClosed : S.boundPositive

def SiegelLemmaClosed {D : DiophantineForm} {FD : DiophantineFormClosed D}
    (S : SiegelLemmaPackage FD) : Prop :=
  S.smallSolutionExists ∧ S.boundPositive

theorem siegel_lemma_closed_from_evidence {D : DiophantineForm} {FD : DiophantineFormClosed D}
    (S : SiegelLemmaPackage FD) (E : SiegelLemmaEvidence S) : SiegelLemmaClosed S := by
  exact And.intro E.smallSolutionExistsClosed E.boundPositiveClosed

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse