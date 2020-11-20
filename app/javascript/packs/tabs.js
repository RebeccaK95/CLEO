const tabs = () => {

  const coucou = $("#dashboard svg").children[0].setAttribute("fill", "#38B44E")
  console.log(svgDashboard);
  // console.log(element)





 $(document).ready(function () {
        const svgDashboard = $("#dashboard svg").children[0];
        const svgChallenges = $("#challenges svg").children[0];
        const svgTips = $("#tips svg").children[0];
        const dashboard = $("#dashboard");
// const challenges = document.getElementById("challenges");
        const tips = $("#tips");
        var url = window.location;

        const challenges = $("#challenges")

        if (window.location.href.includes("challenges")) {
          challenges.addClass("active");
          dashboard.removeClass("active");
          tips.removeClass("active");
          svgDashboard.setAttribute("fill", "#C4C4C4");
          svgChallenges.setAttribute("fill", "#38B44E");

        }
        if (window.location.href.includes("tips")) {
          tips.addClass("active");
          dashboard.removeClass("active");
          challenges.removeClass("active");
          svgDashboard.setAttribute("fill", "#C4C4C4");
          svgTips.setAttribute("fill", "#38B44E");

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
