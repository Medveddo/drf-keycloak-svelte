<script>
	import { onMount } from 'svelte';

	import Keycloak from 'keycloak-js';

	let keycloakglobal

    let userInfo = {}

	onMount(() => {
		let keycloak = new Keycloak({
			url: 'http://localhost:8080',
			realm: 'Mordor',
			clientId: 'awesome-app'
		});

		keycloak
			.init({ onLoad: 'login-required' })
			.then(function (authenticated) {
				console.info("User successfully authenticated " + authenticated);
                keycloakglobal = keycloak
                userInfo.name = keycloak.tokenParsed.name
                userInfo.realm = keycloak.realm
                userInfo.authenticated = keycloak.authenticated
				userInfo.token = keycloak.token
			})
			.catch(function (e) {
				console.error(e);
			});
		console.log(keycloak);
	});

	function keycloakSignOut() {
		keycloakglobal.logout();
	}

	function getStatus() {
		console.log(keycloakglobal)
	}
</script>

<h3>User info</h3>
<p>
	Authenticated: {userInfo.authenticated}
    <br>
    Name: {userInfo.name}
    <br>
    Realm: {userInfo.realm}
    <br>
    Token: {userInfo.token}
</p>
<button on:click={keycloakSignOut}>Sign Out</button>
<br>
<button on:click={getStatus}>console.log(keycloak)</button>
