import Route from '@ember/routing/route';

export default Route.extend({
  model() {
    return {};
  },

  actions: {
    save() {
      const newPost = this.store.createRecord('building', this.currentModel);
      newPost.save().then(() => {
        this.transitionTo('buildings');
      });
    },
    cancel() {
      this.transitionTo('buildings');
    }
  }
});
