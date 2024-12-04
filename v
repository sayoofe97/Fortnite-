const { Launcher } = require('epicgames-client');

const launcher = new Launcher({
  email: 'E-MAIL',
  password: 'PASSWORD',
});

(async () => {

  if(!await launcher.init() || !await launcher.login()) {
    throw new Error('Error while initialize or login process.');
  }
  
  const playerName = 'Kysune';
  const account = await launcher.getProfile(playerName);
  if(!account) throw new Error(`Player ${playerName} not found!`);
	
  console.log(`${account.name}'s id: ${account.id}`);
  // "Kysune's id: 9a1d43b1d826420e9fa393a79b74b2ff"