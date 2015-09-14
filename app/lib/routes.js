if (Meteor.isServer) {

}


Router.route('/', {
    name: 'home',
    controller: 'HomeController',
    action: 'action',
    where: 'client',
    title: 'Home'
});
