window.addEventListener('message', function(event) { 
    element = document.getElementById('body'); 

    if (event.data.type === 'update_panic') {
        if (event.data.toggle === true) {
            element.style.display = 'block'
            document.getElementById('officer-name').innerHTML = 'Officer '+event.data.name;
            var audio = new Audio('audio.mp3')
            audio.play()
        } else {
            element.style.display = 'none'
        }
    }
}) 