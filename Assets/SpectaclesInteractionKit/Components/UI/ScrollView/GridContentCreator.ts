@component
export class GridContentCreator extends BaseScriptComponent {
    @input
    itemPrefab: ObjectPrefab;

    @input
    itemsCount: number = 10;

    @input
    itemNames: string[]; // Input for item names

    onAwake() {
        if (!this.itemPrefab) {
            throw new Error(
                'ItemPrefab is not wired in SceneObject:' + this.getSceneObject().name
            );
        }

        const yStart = 0;
        const yOffset = -5.4;

        for (let i = 0; i < this.itemsCount; i++) {
            const item = this.itemPrefab.instantiate(this.getSceneObject());
            const screenTransform = item.getComponent('Component.ScreenTransform');

            if (screenTransform) {
                screenTransform.offsets.setCenter(
                    new vec2(0, yStart + yOffset * i)
                );
            }

            item.enabled = true;

            // Manually find the ContactName object
            let contactName = null;
            for (let j = 0; j < item.getChildrenCount(); j++) {
                const child = item.getChild(j);
                if (child.name === 'ContactName') { // Use .name instead of getName()
                    contactName = child;
                    break;
                }
            }

            if (contactName) {
                const textComponent = contactName.getComponent('Component.Text');
                if (textComponent && this.itemNames && i < this.itemNames.length) {
                    textComponent.text = this.itemNames[i]; // Assign the name
                }
            }
        }
    }
}