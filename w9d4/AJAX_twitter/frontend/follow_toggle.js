class FollowToggle {
    constructor(el){
        this.$el = $(el) ; 
        this.userId = this.$el.attr('data-user-id');
        this.followState = this.$el.attr('data-initial-follow-state');
        this.render();
        this.handleClick();
    }

    render() {
        if (this.followState === "unfollowed"){
            this.$el.attr('text', 'Follow!');
        } else {
            this.$el.attr('text', 'Unfollow!');
        }
    }

    handleClick() {
        this.$el.on('click', (e) => {
            e.preventDefault();
        })
        if (this.followState === "unfollowed") {
            $.ajax({
                method: 'POST',
                url: `/users/${this.userId}/follow`,
                dataType: '$.ajax',
                //data: stuff,
                success: () => {
                    this.followState = "followed";
                    this.render();
                }
            }) 
        } else {
            $.ajax({
                method: 'DELETE',
                url: `/users/${this.userId}/follow`,
                dataType: '$.ajax', 
                success: () => {
                    this.followState = "unfollowed";
                    this.render();
                }
            })
        }
    }
}

module.exports = FollowToggle; 