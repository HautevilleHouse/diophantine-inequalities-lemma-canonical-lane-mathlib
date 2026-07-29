import DiophantineInequalitiesLemmaCanonicalLaneLean.HeightTheoryPackage

/-!
# Effective Diophantine Package
-/

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure EffectiveDiophantinePackage {H : HeightTheoryPackage} where
  effectiveConstant : ℝ
  rationalityCriterion : Prop
  algorithmicBound : ℕ
  effectiveConstantClosed : effectiveConstant
  rationalityCriterionClosed : rationalityCriterion
  algorithmicBoundClosed : algorithmicBound

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse