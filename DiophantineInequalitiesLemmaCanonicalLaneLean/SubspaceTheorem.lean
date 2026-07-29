import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalitiesLemmaCanonicalLaneLean.HeightsAndWeilTheory

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure SubspaceTheoremPackage {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} {H : HeightFunctionPackage A} where
  linearSubspace : Prop
  successiveMinima : Prop
  normEstimates : Prop
  heightGap : Prop

structure SubspaceTheoremEvidence {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} {H : HeightFunctionPackage A}
    (S : SubspaceTheoremPackage H) where
  linearSubspaceClosed : S.linearSubspace
  successiveMinimaClosed : S.successiveMinima
  normEstimatesClosed : S.normEstimates
  heightGapClosed : S.heightGap

def SubspaceTheoremClosed {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} {H : HeightFunctionPackage A}
    (S : SubspaceTheoremPackage H) : Prop :=
  S.linearSubspace ∧ S.successiveMinima ∧
  S.normEstimates ∧ S.heightGap

theorem subspace_theorem_closed_from_evidence
    {D : DiophantineAdmittedObject} {A : ApproximationLemmaPackage D}
    {H : HeightFunctionPackage A} (S : SubspaceTheoremPackage H)
    (E : SubspaceTheoremEvidence S) : SubspaceTheoremClosed S := by
  exact And.intro E.linearSubspaceClosed
    (And.intro E.successiveMinimaClosed
      (And.intro E.normEstimatesClosed E.heightGapClosed))

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse