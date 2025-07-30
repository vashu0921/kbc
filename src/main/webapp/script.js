// WebContent/assets/script.js
function startTimer() {
      let timeLeft = 30;
      const timerEl = document.getElementById("time");
      const interval = setInterval(() => {
        timeLeft--;
        timerEl.textContent = timeLeft;
        if (timeLeft <= 0) {
          clearInterval(interval);
          alert("\u23F0 Time's up!");

          document.querySelector("form").submit(); // auto-submit when time ends
        }
      }, 1000);
    }