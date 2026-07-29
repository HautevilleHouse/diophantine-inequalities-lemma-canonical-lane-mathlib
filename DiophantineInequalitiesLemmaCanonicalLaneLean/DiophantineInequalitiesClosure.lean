import DiophantineInequalitiesLemmaCanonicalLaneLean.DiophantineInequalitiesMain

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure DiophantineInequalitiesClosurePackage where
  constraintConvex : Prop
  constraintCompact : Prop
  solutionBounded : Prop
  solutionDiscrete : Prop
  algorithmTerminates : Prop

structure DiophantineInequalitiesClosureEvidence (C : DiophantineInequalitiesClosurePackage) where
  constraintConvexClosed : C.constraintConvex
  constraintCompactClosed : C.constraintCompact
  solutionBoundedClosed : C.solutionBounded
  solutionDiscreteClosed : C.solutionDiscrete
  algorithmTerminatesClosed : C.algorithmTerminates

def DiophantineInequalitiesClosureClosed (C : DiophantineInequalitiesClosurePackage) : Prop :=
  C.constraintConvex ∧ C.constraintCompact ∧ C.solutionBounded ∧ C.solutionDiscrete ∧ C.algorithmTerminates

theorem diophantine_inequalities_closure_closed_from_evidence
    (C : DiophantineInequalitiesClosurePackage) (E : DiophantineInequalitiesClosureEvidence C) :
    DiophantineInequalitiesClosureClosed C := by
  exact And.intro E.constraintConvexClosed
    (And.intro E.constraintCompactClosed
      (And.intro E.solutionBoundedClosed
        (And.intro E.solutionDiscreteClosed E.algorithmTerminatesClosed)))

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse