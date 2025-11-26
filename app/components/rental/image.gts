import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { action } from '@ember/object';
import { on } from '@ember/modifier';

export default class RentalImage extends Component {
  @tracked isLarge = false;

  @action toggleSize() {
    this.isLarge = !this.isLarge;
  }

  <template>
    <button
      type="button"
      class="image {{if this.isLarge 'large'}}"
      {{on "click" this.toggleSize}}
    >
      <img ...attributes />
      {{#if this.isLarge}}
        <small>View Smaller</small>
      {{else}}
        <small>View Larger</small>
      {{/if}}
    </button>
  </template>
}
