import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean

structure MorphogenesisPackage where
  budStage : Prop
  capStage : Prop
  bellStage : Prop
  crownStage : Prop
  rootFormation : Prop
  eruption : Prop

structure MorphogenesisEvidence (P : MorphogenesisPackage) where
  budStageClosed : P.budStage
  capStageClosed : P.capStage
  bellStageClosed : P.bellStage
  crownStageClosed : P.crownStage
  rootFormationClosed : P.rootFormation
  eruptionClosed : P.eruption

def MorphogenesisClosed (P : MorphogenesisPackage) : Prop :=
  P.budStage ∧ P.capStage ∧ P.bellStage ∧ P.crownStage ∧ P.rootFormation ∧ P.eruption

theorem morphogenesis_closed_from_evidence (P : MorphogenesisPackage)
    (E : MorphogenesisEvidence P) : MorphogenesisClosed P := by
  exact And.intro E.budStageClosed
    (And.intro E.capStageClosed
      (And.intro E.bellStageClosed
        (And.intro E.crownStageClosed
          (And.intro E.rootFormationClosed E.eruptionClosed))))

end DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse