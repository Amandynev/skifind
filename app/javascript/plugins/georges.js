const georgesElement = document.getElementById('georges');

const updateFormRoommate = () => {
  console.log('toto')
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
  console.log('toto')
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

const initGeorges = () => {
  preventDefaultSubmitOnEnter();
  const roommates = document.querySelectorAll('.roommate');
  roommates.forEach(function(roommate) {
    roommate.addEventListener('click', updateFormRoommate);
  });
  const budgets = document.querySelectorAll('.budget');
  budgets.forEach(function(budget) {
    budget.addEventListener('click', updateFormBudget);
  });
  const day_activities = document.querySelectorAll('.day_activities');
  day_activities.forEach(function(day_activitie) {
    day_activitie.addEventListener('click', updateFormDayActivities);
  });
  const biological_clocks = document.querySelectorAll('.biological_clock');
  biological_clocks.forEach(function(biological_clock) {
    biological_clock.addEventListener('click', updateFormBiologicalClock);
  });
  const accommodations = document.querySelectorAll('.accommodation');
  accommodations.forEach(function(accommodation) {
    accommodation.addEventListener('click', updateFormAccommodation);
  });
  const spots = document.querySelectorAll('.spot');
  spots.forEach(function(spot) {
    spot.addEventListener('click', updateFormSpot);
  });
  const nights_activities = document.querySelectorAll('.night_activities');
  nights_activities.forEach(function(night_activities) {
    night_activities.addEventListener('click', updateFormNightActivities);
  });
  const expectationss = document.querySelectorAll('.expectations');
  expectationss.forEach(function(expectations) {
    expectations.addEventListener('click', updateFormExpectations);
  });
  const kilometerss = document.querySelectorAll('.kilometers');
  kilometerss.forEach(function(kilometers) {
    kilometers.addEventListener('click', updateFormKilometers);
  });
};

export { initGeorges };
