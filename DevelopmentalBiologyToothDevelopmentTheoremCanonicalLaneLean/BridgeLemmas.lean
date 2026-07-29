import HautevilleHouse.DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ToothDevelopmentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
