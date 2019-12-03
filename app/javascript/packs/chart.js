import Chart from "chart.js"

const chartBackgroundColour = 'rgba(0, 0, 0, 0)';

console.log('hello again')
let myChart = document.getElementById('myChart').getContext('2d');

let chartTest = JSON.parse(document.getElementById('myChart').dataset.consumptionseven)



// Global Options
Chart.defaults.global.defaultFontFamily = 'Lato';
Chart.defaults.global.defaultFontSize = 12;
Chart.defaults.global.defaultFontColor = '#777';
Chart.defaults.scale.ticks.beginAtZero = true;
Chart.defaults.global.responsive = true;

let ConsumptionChart = new Chart(myChart, {
  type:'line', // options: bar, horizontalBar, pie, line, doughnut, radar, polarArea
  data:{
    datasets:[{
      label:'Last seven days',
      data: chartTest,
      backgroundColor: chartBackgroundColour,
      borderWidth: 2,
      borderColor: 'white',
      hoverBorderWidth: 3,
      hoverBorderColor: '#000'
    }]
  },
  options: {
    legend: {
      labels: {
        boxWidth: 0,
        fontColor: "#ffffff",
        fontFamily: "sans-serif"
      }
    },
    title: {
      display: true,
      text: 'Cigarettes',
      position: "left",
      fontColor: "#ffffff"
    },
    scales: {
      xAxes: [{
        type: 'time',
        distribution: 'series',
        time: {
            unit: 'day'
        },
        ticks: {
          fontColor: "#ffffff",
          fontFamily: "sans-serif"
        }
        // gridLines: {
        //   color: "red"
        // }
      }],
      yAxes: [{
        display: true,
        ticks: {
            beginAtZero: true,
            min: 0
        },
        ticks: {
          fontColor: "#ffffff",
          fontFamily: "sans-serif"
        }
      }]
    }
  }
});


document.getElementById("last7").addEventListener("click", getLastSevenConsumption);

function getLastSevenConsumption() {
  chartTest = JSON.parse(document.getElementById('myChart').dataset.consumptionseven)
  ConsumptionChart = new Chart(myChart, {
      type:'line', // options: bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        datasets:[{
          label:'Last seven days',
          data: chartTest,
          backgroundColor: chartBackgroundColour,
          borderWidth:2,
          borderColor:'white',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options: {
        legend: {
          labels: {
            boxWidth: 0,
            fontColor: "#ffffff",
            fontFamily: "sans-serif"
          }
        },
        title: {
          display: true,
          text: 'Cigarettes',
          position: "left",
          fontColor: "#ffffff"
        },
        scales: {
            xAxes: [{
                type: 'time',
                distribution: 'series',
                time: {
                    unit: 'day'
                },
                ticks: {
                  fontColor: "#ffffff",
                  fontFamily: "sans-serif"
                }
            }],
            yAxes: [{
                display: true,
                ticks: {
                    beginAtZero: true,
                    min: 0
                },
                ticks: {
                  fontColor: "#ffffff",
                  fontFamily: "sans-serif"
                }
            }]
        }
    }
    });

};


document.getElementById("last30").addEventListener("click", getLastThirtyConsumption);

function getLastThirtyConsumption() {
  chartTest = JSON.parse(document.getElementById('myChart').dataset.consumptionthirty)
  ConsumptionChart = new Chart(myChart, {
      type:'line', // options: bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        datasets:[{
          label:'Last thirty days',
          data: chartTest,
          backgroundColor: chartBackgroundColour,
          borderWidth:2,
          borderColor:'white',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options: {
        legend: {
          labels: {
            boxWidth: 0,
            fontColor: "#ffffff",
            fontFamily: "sans-serif"
          }
        },
        title: {
          display: true,
          text: 'Cigarettes',
          position: "left",
          fontColor: "#ffffff"
        },
        scales: {
            xAxes: [{
                type: 'time',
                distribution: 'series',
                time: {
                    unit: 'day'
                },
                ticks: {
                  fontColor: "#ffffff",
                  fontFamily: "sans-serif"
                }
            }],
            yAxes: [{
                display: true,
                ticks: {
                    beginAtZero: true,
                    min: 0
                },
                ticks: {
                  fontColor: "#ffffff",
                  fontFamily: "sans-serif"
                }
            }]
        }
    }
    });

};

document.getElementById("alltime").addEventListener("click", getAlltimeConsumption);

function getAlltimeConsumption() {
  chartTest = JSON.parse(document.getElementById('myChart').dataset.consumptionalltime)
  ConsumptionChart = new Chart(myChart, {
      type:'line', // options: bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        datasets:[{
          label:'Since the beginning',
          data: chartTest,
          backgroundColor: chartBackgroundColour,
          borderWidth:2,
          borderColor:'white',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options: {
        legend: {
          labels: {
            boxWidth: 0,
            fontColor: "#ffffff",
            fontFamily: "sans-serif"
          }
        },
        title: {
          display: true,
          text: 'Cigarettes',
          position: "left",
          fontColor: "#ffffff"
        },
        scales: {
            xAxes: [{
                type: 'time',
                distribution: 'series',
                time: {
                    unit: 'day'
                },
                ticks: {
                  fontColor: "#ffffff",
                  fontFamily: "sans-serif"
                }
            }],
            yAxes: [{
                display: true,
                ticks: {
                    beginAtZero: true,
                    min: 0
                },
                ticks: {
                  fontColor: "#ffffff",
                  fontFamily: "sans-serif"
                }
            }]
        }
    }
    });

};



const initChart = () => {
  // load all functions
}

export {initChart};
