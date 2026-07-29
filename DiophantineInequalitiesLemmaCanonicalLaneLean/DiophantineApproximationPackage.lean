import DiophantineInequalitiesLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Diophantine Approximation Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure DiophantineApproximationPackage where
  targetManifold : Type u
  topology : TopologicalSpace targetManifold
  dimension : ℕ
  rationalApproximation : Prop
  qualityIndex : ℝ
  dirichletConstant : ℝ
  approximationDensity : Prop
  rationalApproximationClosed : rationalApproximation
  qualityIndexClosed : qualityIndex
  dirichletConstantClosed : dirichletConstant
  approximationDensityClosed : approximationDensity

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse