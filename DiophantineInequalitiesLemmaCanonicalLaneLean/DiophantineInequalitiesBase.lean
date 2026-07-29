import DiophantineInequalitiesLemmaCanonicalLaneLean.DiophantineAdmittedObject

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure DiophantineInequalitiesBasePackage where
  inequalityForm : Prop
  variableType : Type
  coefficientType : Type
  boundType : Type
  formLinear : Prop
  formQuadratic : Prop
  formHigherDegree : Prop
  boundOneSided : Prop
  boundTwoSided : Prop

structure DiophantineInequalitiesBaseEvidence (P : DiophantineInequalitiesBasePackage) where
  formLinearClosed : P.formLinear
  formQuadraticClosed : P.formQuadratic
  formHigherDegreeClosed : P.formHigherDegree
  boundOneSidedClosed : P.boundOneSided
  boundTwoSidedClosed : P.boundTwoSided

def DiophantineInequalitiesBaseClosed (P : DiophantineInequalitiesBasePackage) : Prop :=
  P.formLinear ∧ P.formQuadratic ∧ P.formHigherDegree ∧ P.boundOneSided ∧ P.boundTwoSided

theorem diophantine_inequalities_base_closed_from_evidence
    (P : DiophantineInequalitiesBasePackage) (E : DiophantineInequalitiesBaseEvidence P) :
    DiophantineInequalitiesBaseClosed P := by
  exact And.intro E.formLinearClosed
    (And.intro E.formQuadraticClosed
      (And.intro E.formHigherDegreeClosed
        (And.intro E.boundOneSidedClosed E.boundTwoSidedClosed)))

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse