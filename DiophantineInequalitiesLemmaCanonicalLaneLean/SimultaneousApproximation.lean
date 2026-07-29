import DiophantineInequalitiesLemmaCanonicalLaneLean.BridgeLemmas

/-!
# Simultaneous Approximation Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure SimultaneousApproximationPackage where
  linearForms : List (List ℤ)
  bound : ℝ
  approximable : Prop
  dirichletTheoremApplied : Prop
  boundClosed : bound
  approximableClosed : approximable
  dirichletTheoremAppliedClosed : dirichletTheoremApplied

structure SimultaneousApproximationEvidence
    (S : SimultaneousApproximationPackage) where
  boundClosed : S.bound
  approximableClosed : S.approximable
  dirichletTheoremAppliedClosed : S.dirichletTheoremApplied

def SimultaneousApproximationClosed
    (S : SimultaneousApproximationPackage) : Prop :=
  S.bound ∧ S.approximable ∧ S.dirichletTheoremApplied

theorem simultaneous_approximation_closed_from_evidence
    (S : SimultaneousApproximationPackage)
    (E : SimultaneousApproximationEvidence S) :
    SimultaneousApproximationClosed S := by
  exact And.intro E.boundClosed
    (And.intro E.approximableClosed E.dirichletTheoremAppliedClosed)

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse