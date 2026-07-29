import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiophantineInequalitiesLemmaCanonicalLaneLean.ApproximationLemma

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure HeightFunctionPackage {D : DiophantineAdmittedObject}
    (A : ApproximationLemmaPackage D) where
  logarithmicHeight : Prop
  weilHeight : Prop
  heightInequalities : Prop
  bhMordellWeilBound : Prop

structure HeightFunctionEvidence {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} (H : HeightFunctionPackage A) where
  logarithmicHeightClosed : H.logarithmicHeight
  weilHeightClosed : H.weilHeight
  heightInequalitiesClosed : H.heightInequalities
  bhMordellWeilBoundClosed : H.bhMordellWeilBound

def HeightFunctionClosed {D : DiophantineAdmittedObject}
    {A : ApproximationLemmaPackage D} (H : HeightFunctionPackage A) : Prop :=
  H.logarithmicHeight ∧ H.weilHeight ∧
  H.heightInequalities ∧ H.bhMordellWeilBound

theorem height_function_closed_from_evidence
    {D : DiophantineAdmittedObject} {A : ApproximationLemmaPackage D}
    (H : HeightFunctionPackage A) (E : HeightFunctionEvidence H) :
    HeightFunctionClosed H := by
  exact And.intro E.logarithmicHeightClosed
    (And.intro E.weilHeightClosed
      (And.intro E.heightInequalitiesClosed E.bhMordellWeilBoundClosed))

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse