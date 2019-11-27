import Chart from "chart.js"


    let myChart = document.getElementById('myChart').getContext('2d');

    let chartTest = JSON.parse(document.getElementById('myChart').dataset.consumptionseven)



    // Global Options
    Chart.defaults.global.defaultFontFamily = 'Lato';
    Chart.defaults.global.defaultFontSize = 18;
    Chart.defaults.global.defaultFontColor = '#777';

    let ConsumptionChart = new Chart(myChart, {
      type:'line', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        // labels:['Boston', 'Worcester', 'Springfield', 'Lowell', 'Cambridge', 'New Bedford'],
        datasets:[{
          label:'Evolution',
          data: chartTest,
          backgroundColor:'#0F0D25',
          borderWidth:1,
          borderColor:'#777',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options: {
        scales: {
            xAxes: [{
                type: 'time',
                distribution: 'series',
                time: {
                    unit: 'day'
                }
            }]
        }
    }
    });


console.log(ConsumptionChart)

document.getElementById("last7").addEventListener("click", getLastSevenConsumption);

function getLastSevenConsumption() {
  chartTest = JSON.parse(document.getElementById('myChart').dataset.consumptionseven)
  ConsumptionChart = new Chart(myChart, {
      type:'line', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        // labels:['Boston', 'Worcester', 'Springfield', 'Lowell', 'Cambridge', 'New Bedford'],
        datasets:[{
          label:'Evolution',
          data: chartTest,
          backgroundColor:'#0F0D25',
          borderWidth:1,
          borderColor:'#777',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options: {
        scales: {
            xAxes: [{
                type: 'time',
                distribution: 'series',
                time: {
                    unit: 'day'
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
      type:'line', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        // labels:['Boston', 'Worcester', 'Springfield', 'Lowell', 'Cambridge', 'New Bedford'],
        datasets:[{
          label:'Evolution',
          data: chartTest,
          backgroundColor:'#0F0D25',
          borderWidth:1,
          borderColor:'#777',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options: {
        scales: {
            xAxes: [{
                type: 'time',
                distribution: 'series',
                time: {
                    unit: 'day'
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
      type:'line', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        // labels:['Boston', 'Worcester', 'Springfield', 'Lowell', 'Cambridge', 'New Bedford'],
        datasets:[{
          label:'Evolution',
          data: chartTest,
          backgroundColor:'#0F0D25',
          borderWidth:1,
          borderColor:'#777',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options: {
        scales: {
            xAxes: [{
                type: 'time',
                distribution: 'series',
                time: {
                    unit: 'day'
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
