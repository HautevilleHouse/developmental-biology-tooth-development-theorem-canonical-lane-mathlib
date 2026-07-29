import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean

structure MesenchymalCondensationPackage where
  neuralCrestCells : Prop
  condensationSignal : Prop
  dentalPapilla : Prop
  dentalFollicle : Prop
  mesenchymalTransition : Prop

structure MesenchymalCondensationEvidence (P : MesenchymalCondensationPackage) where
  neuralCrestCellsClosed : P.neuralCrestCells
  condensationSignalClosed : P.condensationSignal
  dentalPapillaClosed : P.dentalPapilla
  dentalFollicleClosed : P.dentalFollicle
  mesenchymalTransitionClosed : P.mesenchymalTransition

def MesenchymalCondensationClosed (P : MesenchymalCondensationPackage) : Prop :=
  P.neuralCrestCells ∧ P.condensationSignal ∧ P.dentalPapilla ∧
  P.dentalFollicle ∧ P.mesenchymalTransition

theorem mesenchymal_condensation_closed_from_evidence (P : MesenchymalCondensationPackage)
    (E : MesenchymalCondensationEvidence P) : MesenchymalCondensationClosed P := by
  exact And.intro E.neuralCrestCellsClosed
    (And.intro E.condensationSignalClosed
      (And.intro E.dentalPapillaClosed
        (And.intro E.dentalFollicleClosed E.mesenchymalTransitionClosed)))

end DevelopmentalBiologyToothDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse