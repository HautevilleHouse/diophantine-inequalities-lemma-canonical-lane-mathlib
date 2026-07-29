import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalitiesLemmaCanonicalLaneLean.SubspaceTheorem

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure MordellInequalityPackage {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} {H : HeightFunctionPackage A}
    {S : SubspaceTheoremPackage H} where
  rankBound : Prop
  canonicalHeightDiscrepancy : Prop
  parityEffect : Prop
  finalMordellBound : Prop

structure MordellInequalityEvidence {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} {H : HeightFunctionPackage A}
    {S : SubspaceTheoremPackage H} (M : MordellInequalityPackage S) where
  rankBoundClosed : M.rankBound
  canonicalHeightDiscrepancyClosed : M.canonicalHeightDiscrepancy
  parityEffectClosed : M.parityEffect
  finalMordellBoundClosed : M.finalMordellBound

def MordellInequalityClosed {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} {H : HeightFunctionPackage A}
    {S : SubspaceTheoremPackage H} (M : MordellInequalityPackage S) : Prop :=
  M.rankBound ∧ M.canonicalHeightDiscrepancy ∧
  M.parityEffect ∧ M.finalMordellBound

theorem mordell_inequality_closed_from_evidence
    {D : DiophantineAdmittedObject} {A : ApproximationLemmaPackage D}
    {H : HeightFunctionPackage A} {S : SubspaceTheoremPackage H}
    (M : MordellInequalityPackage S) (E : MordellInequalityEvidence M) :
    MordellInequalityClosed M := by
  exact And.intro E.rankBoundClosed
    (And.intro E.canonicalHeightDiscrepancyClosed
      (And.intro E.parityEffectClosed E.finalMordellBoundClosed))

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse