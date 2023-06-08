if (display==1){
  alert(display);
  alert(player1_data);
  const ctx = document.getElementById("myChart");

  new Chart(ctx, {
    type: "bar",
    data: {
      labels: [player1_name, player2_name, player3_name, player4_name, null],
      datasets: [{
        label: attribute,
        data: [player1_data, player2_data, player3_data, player4_data,2],
        backgroundColor: [
          "rgba(255, 99, 132, 0.2)",
          "rgba(255, 159, 64, 0.2)",
          "rgba(255, 205, 86, 0.2)",
          "rgba(75, 192, 192, 0.2)",
          "rgba(54, 162, 235, 0.2)"
          ],
        borderColor: [
          "rgb(255, 99, 132)",
          "rgb(255, 159, 64)",
          "rgb(255, 205, 86)",
          "rgb(75, 192, 192)",
          "rgb(54, 162, 235)"
          ],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  })
};