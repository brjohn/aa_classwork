class FollowToggle {
    constructor(el){
        console.log(el)
        this.userID = el.userID;
        this.followState = el.followState;
        this.$el = $(el) ; 
    }
}

module.exports = FollowToggle; 