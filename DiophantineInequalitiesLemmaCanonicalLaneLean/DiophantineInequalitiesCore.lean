import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure DiophantineAdmissibleObject where
  ring : Type u
  variables : Nat
  polynomials : List (Ring.Polynomial ring)
  inequalitySystem : List (Prop)
  conclusion : Prop

structure AdmissibleClass where
  object : DiophantineAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiophantineEndpointClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse