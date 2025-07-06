import { LightningElement, track } from 'lwc';

export default class Harsha extends LightningElement {
    @track greeting = 'World';

    handleChange(event) {
        this.greeting = event.target.value;
    }

    get uppercasedGreeting() {
        return this.greeting.toUpperCase();
    }
}