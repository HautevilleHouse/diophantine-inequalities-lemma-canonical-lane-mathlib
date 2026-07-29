import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure DiophantineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiophantineInequalityData where
  space : DiophantineSpace
  dimension : ℕ
  integralDomain : Type
  inequalityCoefficients : List ℚ
  bound : ℚ

structure DiophantineAdmittedObject where
  data : DiophantineInequalityData
  inequalityHolds : Prop
  conclusion : inequalityHolds

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.inequalityHolds

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse