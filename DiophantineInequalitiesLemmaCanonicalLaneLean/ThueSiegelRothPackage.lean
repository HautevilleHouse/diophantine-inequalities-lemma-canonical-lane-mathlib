import DiophantineInequalitiesLemmaCanonicalLaneLean.DiophantineApproximationPackage

/-!
# Thue-Siegel-Roth Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure ThueSiegelRothPackage {A : DiophantineApproximationPackage} where
  exponentBound : ℝ
  algebraicNumberDegree : ℕ
  effectiveApproximability : Prop
  rothExponent : ℝ
  exponentBoundClosed : exponentBound
  algebraicNumberDegreeClosed : algebraicNumberDegree
  effectiveApproximabilityClosed : effectiveApproximability
  rothExponentClosed : rothExponent

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse