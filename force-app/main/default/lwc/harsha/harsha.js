import { LightningElement, track } from 'lwc';

export default class Harsha extends LightningElement {
    @track greeting = 'World';
    @track showGreeting = true;
    defaultGreeting = 'World';

    handleChange(event) {
        this.greeting = event.target.value;
    }

    resetGreeting() {
        this.greeting = this.defaultGreeting;
    }

    toggleGreeting() {
        this.showGreeting = !this.showGreeting;
    }

    get uppercasedGreeting() {
        return this.greeting.toUpperCase();
    }

    get greetingLength() {
        return this.greeting.length;
    }
}