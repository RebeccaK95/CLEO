const tabs = () => {

  // console.log(element)

 $(document).ready(function () {
        const dashboard = $("#dashboard");
        const svgDashboard = $("#dashboard svg").children[0];
        console.log(svgDashboard);
        const svgChallengesOne = $("#challenges svg g").children[1];
        const svgChallengesTwo = $("#challenges svg g").children[3];
        const svgChallengesThree = $("#challenges svg g").children[5];
        const svgTipsOne = $("#tips svg g").children[0];
        const svgTipsTwo = $("#tips svg g").children[1];

// const challenges = document.getElementById("challenges");
        const tips = $("#tips");
        var url = window.location;

        const challenges = $("#challenges")

        if (window.location.href.includes("challenges")) {
          challenges.addClass("active");
          dashboard.removeClass("active");
          tips.removeClass("active");
          if (svgDashboard) {
            svgDashboard.setAttribute("fill", "#C4C4C4");
            svgChallengesOne.setAttribute("fill", "#38B44E");
            svgChallengesTwo.setAttribute("fill", "#38B44E");
            svgChallengesThree.setAttribute("fill", "#38B44E");
          }
        }
        if (window.location.href.includes("tips")) {
          tips.addClass("active");
          dashboard.removeClass("active");
          challenges.removeClass("active");
          svgDashboard.setAttribute("fill", "#C4C4C4");
          svgTipsOne.setAttribute("fill", "#38B44E");
          svgTipsTwo.setAttribute("fill", "#38B44E");

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
