var SampleRailsApp = SampleRailsApp || {};

SampleRailsApp.Contacts = {};

SampleRailsApp.Contacts.Utils = {
  showContact: function(content){
    $('.js-contact-list').hide().after(contactShowPartial);

    $('.js-view-contacts-button').on('click', function(e){
      e.preventDefault();

      $('.js-view-contact').remove();
      $('.js-contact-list').show();
    });
  }
};

