import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean

structure OdontogenicEpithelialPackage where
  dentalLamina : Prop
  enamelOrgan : Prop
  innerEnamelEpithelium : Prop
  outerEnamelEpithelium : Prop
  stellateReticulum : Prop
  stratumIntermedium : Prop

structure OdontogenicEpithelialEvidence (P : OdontogenicEpithelialPackage) where
  dentalLaminaClosed : P.dentalLamina
  enamelOrganClosed : P.enamelOrgan
  innerEnamelEpitheliumClosed : P.innerEnamelEpithelium
  outerEnamelEpitheliumClosed : P.outerEnamelEpithelium
  stellateReticulumClosed : P.stellateReticulum
  stratumIntermediumClosed : P.stratumIntermedium

def OdontogenicEpithelialClosed (P : OdontogenicEpithelialPackage) : Prop :=
  P.dentalLamina ∧ P.enamelOrgan ∧ P.innerEnamelEpithelium ∧
  P.outerEnamelEpithelium ∧ P.stellateReticulum ∧ P.stratumIntermedium

theorem odontogenic_epithelial_closed_from_evidence (P : OdontogenicEpithelialPackage)
    (E : OdontogenicEpithelialEvidence P) : OdontogenicEpithelialClosed P := by
  exact And.intro E.dentalLaminaClosed
    (And.intro E.enamelOrganClosed
      (And.intro E.innerEnamelEpitheliumClosed
        (And.intro E.outerEnamelEpitheliumClosed
          (And.intro E.stellateReticulumClosed E.stratumIntermediumClosed))))

end DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse