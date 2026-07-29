import DiophantineInequalitiesLemmaCanonicalLaneLean.SimultaneousApproximation

/-!
# Height Theory Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure HeightTheoryPackage where
  heightFunction : Type u
  logarithmicHeight : Type v
  northcottProperty : Prop
  liouvilleInequality : Prop
  heightBound : ℝ
  heightFunctionClosed : heightFunction
  logarithmicHeightClosed : logarithmicHeight
  northcottPropertyClosed : northcottProperty
  liouvilleInequalityClosed : liouvilleInequality
  heightBoundClosed : heightBound

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse