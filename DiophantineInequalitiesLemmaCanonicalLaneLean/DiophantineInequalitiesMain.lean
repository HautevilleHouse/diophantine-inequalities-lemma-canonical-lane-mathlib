import DiophantineInequalitiesLemmaCanonicalLaneLean.DiophantineInequalitiesBase

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure DiophantineInequalitiesMainPackage {P : DiophantineInequalitiesBasePackage} where
  linearInequalityResolved : Prop
  quadraticInequalityResolved : Prop
  higherDegreeInequalityResolved : Prop
  oneSidedBoundVerified : Prop
  twoSidedBoundVerified : Prop

structure DiophantineInequalitiesMainEvidence {P : DiophantineInequalitiesBasePackage}
    (M : DiophantineInequalitiesMainPackage P) where
  linearInequalityResolvedClosed : M.linearInequalityResolved
  quadraticInequalityResolvedClosed : M.quadraticInequalityResolved
  higherDegreeInequalityResolvedClosed : M.higherDegreeInequalityResolved
  oneSidedBoundVerifiedClosed : M.oneSidedBoundVerified
  twoSidedBoundVerifiedClosed : M.twoSidedBoundVerified

def DiophantineInequalitiesMainClosed {P : DiophantineInequalitiesBasePackage}
    (M : DiophantineInequalitiesMainPackage P) : Prop :=
  M.linearInequalityResolved ∧ M.quadraticInequalityResolved ∧
  M.higherDegreeInequalityResolved ∧ M.oneSidedBoundVerified ∧ M.twoSidedBoundVerified

theorem diophantine_inequalities_main_closed_from_evidence
    {P : DiophantineInequalitiesBasePackage} (M : DiophantineInequalitiesMainPackage P)
    (E : DiophantineInequalitiesMainEvidence M) : DiophantineInequalitiesMainClosed M := by
  exact And.intro E.linearInequalityResolvedClosed
    (And.intro E.quadraticInequalityResolvedClosed
      (And.intro E.higherDegreeInequalityResolvedClosed
        (And.intro E.oneSidedBoundVerifiedClosed E.twoSidedBoundVerifiedClosed)))

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse