import Typed from 'typed.js';

const georgesElement = document.getElementById('georges');

const updateFormRoommate = () => {
  const answer = event.target.dataset.roommate;
  document.getElementById('preference_roommate').value = answer;
}

const updateFormBudget = () => {
  const answer = event.target.dataset.budget;
  document.getElementById('preference_budget').value = answer;
}

const updateFormDayActivities = () => {
  const answer = event.target.dataset.day_activities;
  document.getElementById('preference_day_activities').value = answer;
}

const updateFormBiologicalClock = () => {
  const answer = event.target.dataset.biological_clock;
  document.getElementById('preference_biological_clock').value = answer;
}

const updateFormAccommodation = () => {
  const answer = event.target.dataset.accommodation;
  document.getElementById('preference_accommodation').value = answer;
}

const updateFormSpot = () => {
  const answer = event.target.dataset.spot;
  document.getElementById('preference_spot').value = answer;
}

const updateFormNightActivities = () => {
  const answer = event.target.dataset.night_activities;
  document.getElementById('preference_night_activities').value = answer;
}

const updateFormExpectations = () => {
  const answer = event.target.dataset.expectations;
  document.getElementById('preference_expectations').value = answer;
}


const updateFormKilometers = () => {
  const answer = event.target.dataset.kilometers;
  document.getElementById('preference_kilometers').value = answer;
}

const preventDefaultSubmitOnEnter = () => {
  document.getElementById("preference_visitor_name").onkeypress = function(e) {
    var key = e.charCode || e.keyCode || 0;
    if (key == 13) {
      e.preventDefault();
    }
  }
}

const loadDynamicBannerText = (text, id) => {
  new Typed(`#${id}`, {
    strings: ["", text],
    typeSpeed: 50,
    loop: false
  });
}

const initGeorges = () => {
  preventDefaultSubmitOnEnter();

  const submitGeorgesIdElement = document.getElementById('submit-georges');
  const nameIdElement = document.getElementById('name');
  const roommateIdElement = document.getElementById('roommate');
  const budgetIdElement = document.getElementById('budget');
  const day_activitiesIdElement = document.getElementById('day_activities');
  const biological_clockIdElement = document.getElementById('biological_clock');
  const accommodationIdElement = document.getElementById('accommodation');
  const spotIdElement = document.getElementById('spot');
  const night_activitiesIdElement = document.getElementById('night_activities');
  const expectationsIdElement = document.getElementById('expectations');
  const kilometersIdElement = document.getElementById('kilometers');
  const geocationIdElement = document.getElementById('geocation');
  const remerciementIdElement = document.getElementById('remerciement');

  loadDynamicBannerText("Faisons connaissance, moi c'est Georges et toi ?", "name-question");
  nameIdElement.addEventListener("keyup", (event) => {
    if (event.key === "Enter") {
      roommateIdElement.classList.remove("d-none");
      loadDynamicBannerText("Tu as prévu de partir:", "roommate-question");

    }
  })

  const roommates = document.querySelectorAll('.roommate');
  roommates.forEach(function(roommate) {
    roommate.addEventListener('click',  function(){
      updateFormRoommate();
      //fillInPerferenceRoomateForm
      roommates.forEach(element => element.classList.add("d-none"));
      roommate.classList.remove("d-none");
      loadDynamicBannerText("Quel est ton budget ?", "budget-question");
      budgetIdElement.classList.remove("d-none");
    });
  });

  const budgets = document.querySelectorAll('.budget');
  budgets.forEach(function(budget) {
    budget.addEventListener('click', function(){
      updateFormBudget();
      budgets.forEach(element => element.classList.add("d-none"));
      budget.classList.remove("d-none");
      loadDynamicBannerText("Ta journée idéale :", "day_activities-question");
      day_activitiesIdElement.classList.remove("d-none");
    });
  });

  const day_activities = document.querySelectorAll('.day_activities');
  day_activities.forEach(function(day_activitie) {
    day_activitie.addEventListener('click', function(){
      updateFormDayActivities();
      day_activities.forEach(element => element.classList.add("d-none"));
      day_activitie.classList.remove("d-none");
      loadDynamicBannerText("Tu es plutôt...", "biological_clock-question");
      biological_clockIdElement.classList.remove("d-none");
    });
  });

  const biological_clocks = document.querySelectorAll('.biological_clock');
  biological_clocks.forEach(function(biological_clock) {
    biological_clock.addEventListener('click', function(){
      updateFormBiologicalClock();
      biological_clocks.forEach(element => element.classList.add("d-none"));
      biological_clock.classList.remove("d-none");
      loadDynamicBannerText("Ton logement idéal...", "accommodation-question");
      accommodationIdElement.classList.remove("d-none");
    });
  });

  const accommodations = document.querySelectorAll('.accommodation');
  accommodations.forEach(function(accommodation) {
    accommodation.addEventListener('click', function(){
      updateFormAccommodation();
      accommodations.forEach(element => element.classList.add("d-none"));
      accommodation.classList.remove("d-none");
      loadDynamicBannerText("Ton coin idéal...", "spot-question");
      spotIdElement.classList.remove("d-none");
    });
  });

  const spots = document.querySelectorAll('.spot');
  spots.forEach(function(spot) {
    spot.addEventListener('click', function(){
      updateFormSpot();
      spots.forEach(element => element.classList.add("d-none"));
      spot.classList.remove("d-none");
      loadDynamicBannerText("Ta soirée idéale...", "night_activities-question");
      night_activitiesIdElement.classList.remove("d-none");
    });
  });

  const nights_activities = document.querySelectorAll('.night_activities');
  nights_activities.forEach(function(night_activities) {
      night_activities.addEventListener('click', function(){
      updateFormNightActivities();
      nights_activities.forEach(element => element.classList.add("d-none"));
      night_activities.classList.remove("d-none");
      loadDynamicBannerText("Pour toi les vacances au ski c'est...", "expectations-question");
      expectationsIdElement.classList.remove("d-none");
    });
  });

  const expectationss = document.querySelectorAll('.expectations');
  expectationss.forEach(function(expectations) {
    expectations.addEventListener('click', function(){
      updateFormExpectations();
      expectationss.forEach(element => element.classList.add("d-none"));
      expectations.classList.remove("d-none");
      loadDynamicBannerText("Combien de km es-tu prêt à faire ?", "kilometers-question");
      kilometersIdElement.classList.remove("d-none");
    });
  });

  const kilometerss = document.querySelectorAll('.kilometers');
  kilometerss.forEach(function(kilometers) {
    kilometers.addEventListener('click', function(){
      updateFormKilometers();
      kilometerss.forEach(element => element.classList.add("d-none"));
      kilometersIdElement.classList.remove("d-none");
      loadDynamicBannerText("Veux-tu être géolocalisé afin de profiter à 100% de notre service personnalisé?", "geocation-question");
      geocationIdElement.classList.remove("d-none");
    });
  });

  const geocationTrue = document.getElementById('geocation-true');
  const geocationFalse = document.getElementById('geocation-false');
  geocationTrue.addEventListener('click', function check() {
    document.getElementById("preference_geocation").checked = true;
    remerciementIdElement.classList.remove("d-none");
    loadDynamicBannerText("Merci !! C'était sympa d'apprendre à te connaitre.<br> Valide pour voir ma séléction :)", "remerciement-question");
    submitGeorgesIdElement.classList.remove("d-none");

    // submitForm
  });
  geocationFalse.addEventListener('click', function check() {
    document.getElementById("preference_geocation").checked = false;
    remerciementIdElement.classList.remove("d-none");
    loadDynamicBannerText("Merci !! C'était sympa d'apprendre à te connaitre.<br> Valide pour voir ma séléction :)", "remerciement-question");
    submitGeorgesIdElement.classList.remove("d-none");
    // submitForm
  });
};

export { initGeorges };
