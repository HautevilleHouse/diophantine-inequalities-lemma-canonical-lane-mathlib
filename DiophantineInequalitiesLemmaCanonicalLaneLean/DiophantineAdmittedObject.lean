import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure DiophantineAdmittedObject where
  inequalityForm : Prop
  variables : Type
  coefficients : Type
  lowerBound : Type
  upperBound : Type
  solutionExists : Prop
  conclusion : solutionExists

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse