document.addEventListener('DOMContentLoaded', function() {
    console.log('DOM загружен'); // проверка, что DOM загружен
    const myLink = document.getElementById('myLink');

    myLink.addEventListener('click', function(event) {
        event.preventDefault(); // Отменяем стандартное поведение ссылки
        const linkId = event.target.id;
        console.log(linkId);

        setTimeout(function() {
            alert(linkId);
        }, 100); // Задержка в 100 миллисекунд
    });
});