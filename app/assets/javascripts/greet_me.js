var SampleRailsApp = SampleRailsApp || {};

SampleRailsApp.GreetMe = {};

SampleRailsApp.GreetMe.Vars = {
  greetingsList: '.js-greetings-list',
  greetingWrapper: '.js-greeting',
  greetingsLink: ' <a href="#" onclick="return false;" class="js-show-greetings-list">Show greetings list.</a>'
};

SampleRailsApp.GreetMe.Utils = {
  showGreetingsList: function() {
    var vars = SampleRailsApp.GreetMe.Vars;
    alert('showGreetingsList');

    $(vars.greetingsList).removeClass('hidden');
    $(vars.greetingWrapper).html('');
  },

  displayGreeting: function(greeting) {
    var vars = SampleRailsApp.GreetMe.Vars;
    alert('here');

    $(vars.greetingsList).addClass('hidden');
    $(vars.greetingWrapper).html('<p>' + greeting + vars.greetingsLink + '</p>');
  }
};

SampleRailsApp.GreetMe.Events = {
  init: function() {
    this.showGreetingsListOnClick();
  },

  showGreetingsListOnClick: function() {
    $(document).on('click', '.js-show-greetings-list', SampleRailsApp.GreetMe.Utils.showGreetingsList);
  }
};

$(function() {
  SampleRailsApp.GreetMe.Events.init();
});
