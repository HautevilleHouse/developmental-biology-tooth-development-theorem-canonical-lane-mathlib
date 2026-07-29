import HautevilleHouse.DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ToothDevelopmentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ToothDevelopmentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
