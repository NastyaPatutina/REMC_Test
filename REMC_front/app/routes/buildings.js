import Route from '@ember/routing/route';

export default Route.extend({
  model() {
    return this.store.findAll('building');
  },
  actions: {
    delete(building) {
      building.deleteRecord();
      building.save();
    }
  }
});
