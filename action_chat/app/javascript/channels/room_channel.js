import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("this is live")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#msg').append('<div class="message">' + data.content + '</div>')
    console.log(data)
  }
});

let submit_messages;

$(document).on('turbolinks:load', () => {
	submit_messages()
})

submit_messages = () => {
	$('#message_content').on('keydown', (event) => {
		if (event.keyCode === 13) {
			$('input').click()
			event.target.value = ''
			event.preventDefault()
			console.log('yes we hit enter')
		}
	})
}