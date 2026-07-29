import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalitiesLemmaCanonicalLaneLean.MordellInequality

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure FaltingsTheoremPackage {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} {H : HeightFunctionPackage A}
    {S : SubspaceTheoremPackage H} {M : MordellInequalityPackage S} where
  curveGenus : Prop
  finiteSetOfRationalPoints : Prop
  shafarevichConjecture : Prop
  mordellConjectureProof : Prop

structure FaltingsTheoremEvidence {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} {H : HeightFunctionPackage A}
    {S : SubspaceTheoremPackage H} {M : MordellInequalityPackage S}
    (F : FaltingsTheoremPackage M) where
  curveGenusClosed : F.curveGenus
  finiteSetOfRationalPointsClosed : F.finiteSetOfRationalPoints
  shafarevichConjectureClosed : F.shafarevichConjecture
  mordellConjectureProofClosed : F.mordellConjectureProof

def FaltingsTheoremClosed {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} {H : HeightFunctionPackage A}
    {S : SubspaceTheoremPackage H} {M : MordellInequalityPackage S}
    (F : FaltingsTheoremPackage M) : Prop :=
  F.curveGenus ∧ F.finiteSetOfRationalPoints ∧
  F.shafarevichConjecture ∧ F.mordellConjectureProof

theorem faltings_theorem_closed_from_evidence
    {D : DiophantineAdmittedObject} {A : ApproximationLemmaPackage D}
    {H : HeightFunctionPackage A} {S : SubspaceTheoremPackage H}
    {M : MordellInequalityPackage S} (F : FaltingsTheoremPackage M)
    (E : FaltingsTheoremEvidence F) : FaltingsTheoremClosed F := by
  exact And.intro E.curveGenusClosed
    (And.intro E.finiteSetOfRationalPointsClosed
      (And.intro E.shafarevichConjectureClosed E.mordellConjectureProofClosed))

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse