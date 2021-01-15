class Clock {
    constructor() {
        this.time = new Date();
        this.hr = this.time.getHours();
        this.min = this.time.getMinutes();
        this.sec = this.time.getSeconds();
        setInterval(()=>{this._tick.apply(this)}, 1000);
        // 1. Create a Date object.
        // 2. Store the hours, minutes, and seconds.
        // 3. Call printTime.
        // 4. Schedule the tick at 1 second intervals.
    }

    printTime() {
        // Format the time in HH:MM:SS
        // Use console.log to print it.
        console.log(`${this.hr}:${this.min}:${this.sec}`);
    }

    _tick() {
        // 1. Increment the time by one second.
        // 2. Call printTime.
        this.sec++ ;
        if (this.sec === 60) {
            this.sec = 0;
            this.min ++ ;
        } 
        if (this.min === 60) {
            this.min = 0;
            this.hr++ ;
        } 

        if (this.hr === 24) {
            this.hr = 0;
        } 
       
        this.printTime();
    }
}

const clock = new Clock();
