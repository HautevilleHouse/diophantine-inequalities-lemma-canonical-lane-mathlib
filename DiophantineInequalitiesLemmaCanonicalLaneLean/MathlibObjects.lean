import DiophantineInequalitiesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiophantineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiophantineAdmittedObject where
  space : DiophantineSpace
  inequalityFormulated : Prop
  hasSolution : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionConstructed : Prop
  conclusion : solutionConstructed

structure DiophantineEndgameState where
  object : DiophantineAdmittedObject

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.solutionConstructed

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse
