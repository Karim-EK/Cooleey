document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".dropdown-btn").forEach(button => {
        button.addEventListener("click", function (event) {
            event.stopPropagation(); // Previene la chiusura immediata del menu
            let dropdown = this.nextElementSibling;

            // Chiude gli altri dropdown aperti prima di aprirne uno nuovo
            document.querySelectorAll(".dropdown-content").forEach(menu => {
                if (menu !== dropdown) {
                    menu.classList.remove("show");
                }
            });

            // Mostra o nasconde il menu attuale
            dropdown.classList.toggle("show");
        });
    });

    // Chiude tutti i menu quando si clicca fuori
    document.addEventListener("click", function () {
        document.querySelectorAll(".dropdown-content").forEach(menu => {
            menu.classList.remove("show");
        });
    });
});
