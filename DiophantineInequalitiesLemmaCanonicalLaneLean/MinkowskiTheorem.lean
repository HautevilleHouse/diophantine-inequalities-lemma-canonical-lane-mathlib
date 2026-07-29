import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineInequalitiesLemmaCanonicalLaneLean

structure MinkowskiConvexBodyPackage (A : AdmissibleClass) where
  lattice : Type u
  body : Set (Vector ℝ (A.object.variables))
  symmetricConvex : Prop
  volumeLargeEnough : Prop

structure MinkowskiConvexBodyEvidence {A : AdmissibleClass} (M : MinkowskiConvexBodyPackage A) where
  symmetricConvexClosed : M.symmetricConvex
  volumeLargeEnoughClosed : M.volumeLargeEnough

def MinkowskiConvexBodyClosed {A : AdmissibleClass} (M : MinkowskiConvexBodyPackage A) : Prop :=
  M.symmetricConvex ∧ M.volumeLargeEnough

theorem minkowski_convex_body_closed_from_evidence
    {A : AdmissibleClass} (M : MinkowskiConvexBodyPackage A) (E : MinkowskiConvexBodyEvidence M) :
    MinkowskiConvexBodyClosed M := by
  exact And.intro E.symmetricConvexClosed E.volumeLargeEnoughClosed

end DiophantineInequalitiesLemmaCanonicalLaneLean
end HautevilleHouse