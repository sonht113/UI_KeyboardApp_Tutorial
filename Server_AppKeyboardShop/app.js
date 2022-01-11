const app = require("express")();
const http = require("http").createServer(app);
//Socket Traffic
const io = require("socket.io")(http);
const connectedUser = new Set();
io.on('connection', (socket) => {
	console.log("Connect successfully", socket.id);
	connectedUser.add(socket.id);
	io.emit('connected-user', connectedUser.size);
	socket.on('disconnect', () => {
		console.log("Disconnected", socket.id);
		connectedUser.delete(socket.id);
		io.emit('connected-user', connectedUser.size);
	});

	socket.on('message', (data) => {
		console.log(data);
		socket.broadcast.emit('message-receive', data);
	});
})

app.set("port", process.env.PORT || 3000);

http.listen(app.get('port'), () => console.log('Listening on port: ' + app.get('port')));