import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure LinearFormsPackage (A : AdmissibleClass) where
  linearForms : List (LinearForm (A.object.ring))
  logarithms : A.object.variables → ℝ
  linearCombination : (A.object.variables → ℤ) → ℝ

structure BakerTheoremPackage {A : AdmissibleClass} (L : LinearFormsPackage A) where
  lowerBound : Prop
  nonZeroCondition : Prop

structure BakerTheoremEvidence {A : AdmissibleClass} {L : LinearFormsPackage A} (B : BakerTheoremPackage L) where
  lowerBoundClosed : B.lowerBound
  nonZeroConditionClosed : B.nonZeroCondition

def BakerTheoremClosed {A : AdmissibleClass} {L : LinearFormsPackage A} (B : BakerTheoremPackage L) : Prop :=
  B.lowerBound ∧ B.nonZeroCondition

theorem baker_theorem_closed_from_evidence
    {A : AdmissibleClass} {L : LinearFormsPackage A} (B : BakerTheoremPackage L) (E : BakerTheoremEvidence B) :
    BakerTheoremClosed B := by
  exact And.intro E.lowerBoundClosed E.nonZeroConditionClosed

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse