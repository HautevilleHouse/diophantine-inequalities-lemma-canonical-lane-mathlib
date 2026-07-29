import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure DiophantineForm where
  coeffs : List ℤ
  variables : Nat
  degree : ℕ
  homogeneous : Prop

structure DiophantineFormEvidence (D : DiophantineForm) where
  coeffsNonzero : D.coeffs ≠ []
  degreePositive : D.degree > 0
  homogeneousClosed : D.homogeneous

def DiophantineFormClosed (D : DiophantineForm) : Prop :=
  D.coeffs ≠ [] ∧ D.degree > 0 ∧ D.homogeneous

theorem diophantine_form_closed_from_evidence (D : DiophantineForm) (E : DiophantineFormEvidence D) :
    DiophantineFormClosed D := by
  exact And.intro E.coeffsNonzero (And.intro E.degreePositive E.homogeneousClosed)

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse