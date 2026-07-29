import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalitiesLemmaCanonicalLaneLean.DiophantineBaseObject

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure ApproximationLemmaPackage (D : DiophantineAdmittedObject) where
  rationalApproximation : Prop
  pAdicApproximation : Prop
  strongApproximation : Prop
  localGlobalPrinciple : Prop

structure ApproximationLemmaEvidence {D : DiophantineAdmittedObject}
    (P : ApproximationLemmaPackage D) where
  rationalApproximationClosed : P.rationalApproximation
  pAdicApproximationClosed : P.pAdicApproximation
  strongApproximationClosed : P.strongApproximation
  localGlobalPrincipleClosed : P.localGlobalPrinciple

def ApproximationLemmaClosed {D : DiophantineAdmittedObject}
    (P : ApproximationLemmaPackage D) : Prop :=
  P.rationalApproximation ∧ P.pAdicApproximation ∧
  P.strongApproximation ∧ P.localGlobalPrinciple

theorem approximation_lemma_closed_from_evidence
    {D : DiophantineAdmittedObject} (P : ApproximationLemmaPackage D)
    (E : ApproximationLemmaEvidence P) : ApproximationLemmaClosed P := by
  exact And.intro E.rationalApproximationClosed
    (And.intro E.pAdicApproximationClosed
      (And.intro E.strongApproximationClosed E.localGlobalPrincipleClosed))

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse