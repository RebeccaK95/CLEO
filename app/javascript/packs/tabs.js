const tabs = () => {

// console.log(element)





 $(document).ready(function () {
        const dashboard = $("#dashboard");
// const challenges = document.getElementById("challenges");
        const tips = $("#tips");
        var url = window.location;
        console.log(url)
        const challenges = $("#challenges")
        console.log(challenges)
        if (window.location.href.includes("challenges")) {
          challenges.addClass("active");
          dashboard.removeClass("active");
          tips.removeClass("active");
          $("#challenges img").attr("src","/assets/icon_challenges_active.svg")
          $("#dashboard img").attr("src","/assets/icon_dashboard.svg")
        }
        if (window.location.href.includes("tips")) {
          tips.addClass("active");
          dashboard.removeClass("active");
          challenges.removeClass("active");
          $("#tips img").attr("src","/assets/icon_tips_active.svg")
          $("#dashboard img").attr("src","/assets/icon_dashboard.svg")
        }

        // $('ul.nav a[href="'+ url +'"]').parent().addClass('active');
        // $('ul.nav a').filter(function() {
        //      return this.href == url;
        // }).parent().addClass('active');

    });



// console.log(titles);

// titles.forEach((title) => {
//   title.addEventListener('click', () => {
//     console.log(title)
//     title.classList.add("active");



//   });


//   });

}

// titles.forEach((title) => {
//     title.classList.add("active");



//   });


//   };

    // event.currentTarget.classList.add("active");





export { tabs }
