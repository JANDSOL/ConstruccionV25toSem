window.addEventListener("resize", function () {
    if (window.matchMedia("(max-width: 899px)").matches) {
        let bodyActive = document.querySelector("body");
        let bodyContainsActive = bodyActive.classList.contains("active");
        if (!bodyContainsActive) {
            document.querySelector("body").classList.toggle("active");
            document.getElementById("sidebarToggle").classList.toggle("active");
        }
    } else {
        document.querySelector("body").classList.remove("active");
        document.getElementById("sidebarToggle").classList.remove("active");
    }
});
let sidebarToggle = document.querySelector(".sidebarToggle");
sidebarToggle.addEventListener("click", () => {
    document.querySelector("body").classList.toggle("active");
    document.getElementById("sidebarToggle").classList.toggle("active");
});

//Navigation-click
let listNavigationItemOne = document.querySelector(".navigation-list-item.one");
let listNavigationItemTwo = document.querySelector(".navigation-list-item.two");
let listNavigationItemThree = document.querySelector(".navigation-list-item.three");
let listNavigationItemFour = document.querySelector(".navigation-list-item.four");
let itemOneActive = listNavigationItemOne.className;
let itemTwoActive = listNavigationItemTwo.className;
let itemThreeActive = listNavigationItemThree.className;
let itemFourActive = listNavigationItemFour.className;
//Active and deactive
listNavigationItemOne.addEventListener("click", () => {
    listNavigationItemOne.classList.add("active");
    listNavigationItemTwo.classList.remove("active");
    listNavigationItemThree.classList.remove("active");
    listNavigationItemFour.classList.remove("active");
});
listNavigationItemTwo.addEventListener("click", () => {
    listNavigationItemTwo.classList.add("active");
    listNavigationItemOne.classList.remove("active");
    listNavigationItemThree.classList.remove("active");
    listNavigationItemFour.classList.remove("active");
});
listNavigationItemThree.addEventListener("click", () => {
    listNavigationItemThree.classList.add("active");
    listNavigationItemOne.classList.remove("active");
    listNavigationItemTwo.classList.remove("active");
    listNavigationItemFour.classList.remove("active");
});
listNavigationItemFour.addEventListener("click", () => {
    listNavigationItemFour.classList.add("active");
    listNavigationItemOne.classList.remove("active");
    listNavigationItemTwo.classList.remove("active");
    listNavigationItemThree.classList.remove("active");
});
