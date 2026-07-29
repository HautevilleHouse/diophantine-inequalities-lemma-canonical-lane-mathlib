import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure HeightsPackage (A : AdmissibleClass) where
  pointSet : Type u
  logarithmicHeight : pointSet → ℝ
  property : Prop

structure HeightsEvidence {A : AdmissibleClass} (H : HeightsPackage A) where
  propertyClosed : H.property

def HeightsClosed {A : AdmissibleClass} (H : HeightsPackage A) : Prop :=
  H.property

theorem heights_closed_from_evidence
    {A : AdmissibleClass} (H : HeightsPackage A) (E : HeightsEvidence H) :
    HeightsClosed H := by
  exact E.propertyClosed

structure WeilMachinePackage {A : AdmissibleClass} (H : HeightsPackage A) where
  descentType : Type u
  equations : Prop
  descentClosure : Prop

structure WeilMachineEvidence {A : AdmissibleClass} {H : HeightsPackage A} (W : WeilMachinePackage H) where
  equationsClosed : W.equations
  descentClosureClosed : W.descentClosure

def WeilMachineClosed {A : AdmissibleClass} {H : HeightsPackage A} (W : WeilMachinePackage H) : Prop :=
  W.equations ∧ W.descentClosure

theorem weil_machine_closed_from_evidence
    {A : AdmissibleClass} {H : HeightsPackage A} (W : WeilMachinePackage H) (E : WeilMachineEvidence W) :
    WeilMachineClosed W := by
  exact And.intro E.equationsClosed E.descentClosureClosed

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse