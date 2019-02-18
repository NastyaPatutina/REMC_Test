import DS from 'ember-data';

export default DS.Model.extend({
  building_class: DS.attr(),
  street: DS.attr(),
  house_number: DS.attr(),
  floors: DS.attr()
});
