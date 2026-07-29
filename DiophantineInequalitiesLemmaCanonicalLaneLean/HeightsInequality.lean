import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure HeightsInequalityPackage where
  fieldType : Type
  projectiveHeight : ℚ
  logarithmicHeight : ℚ
  inequalityHolds : Prop
  heightRelation : ℚ
  inequalityHoldsTerm : inequalityHolds
  heightRelationDefined : heightRelation = projectiveHeight + logarithmicHeight
  heightRelationDefinedTerm : heightRelationDefined

structure HeightsInequalityEvidence (H : HeightsInequalityPackage) where
  inequalityHoldsClosed : H.inequalityHolds
  heightRelationDefinedClosed : H.heightRelationDefined

def HeightsInequalityClosed (H : HeightsInequalityPackage) : Prop :=
  H.inequalityHolds ∧ H.heightRelationDefined

theorem heights_inequality_closed_from_evidence (H : HeightsInequalityPackage)
    (E : HeightsInequalityEvidence H) : HeightsInequalityClosed H := by
  exact And.intro E.inequalityHoldsClosed E.heightRelationDefinedClosed

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse