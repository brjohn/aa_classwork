import {htmlGenerator} from "./warmup";

class Clock {
    constructor(clockEl){
        const currTime = new Date();
        this.hours = currTime.getHours();
        this.min = currTime.getMinutes();
        this.sec = currTime.getSeconds();
        this.clockEl = clockEl;
        setInterval(this.tick.bind(this), 1000);
        
        
    }

    printTime() {
        return `${this.hours} : ${this.min} : ${this.sec}`;  
    }

    tick() {
        this.sec += 1 ;
        if (this.sec === 60) {
            this.sec = 0;
            this.min += 1;    
        }
        if (this.min === 60) {
            this.min = 0;
            this.hours += 1;
        }
        if (this.hours === 13) {
            this.hours = 1;
        }
        
        htmlGenerator(this.printTime(), this.clockEl);
       
    }
}
const clockEl = document.getElementById('clock');

const myClock = new Clock(clockEl);

