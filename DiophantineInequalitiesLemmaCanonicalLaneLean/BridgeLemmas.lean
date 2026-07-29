import DiophantineInequalitiesLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiophantineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse