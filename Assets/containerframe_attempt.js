import { ContainerFrame } from "./SpectaclesInteractionKit/Components/UI/ContainerFrame/ContainerFrame"

@component
export class ExampleContainerScript extends BaseScriptComponent {
  container: ContainerFrame

  onAwake() {
    this.container = this.sceneObject.createComponent(
    ContainerFrame.getTypeName()
  )

  this.container.enableCloseButton(true)
  this.container.enableFollowButton(true)
  this.container.autoShowHide = false
  this.container.showVisual()

  this.container.closeButton.onTrigger.add(() => {
    // close function logic here
  })
}