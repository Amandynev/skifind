import "chart.js"
const initCharts = () => {

    const resortsElement = document.getElementById('resorts');

    if (resortsElement) {
        const resorts = JSON.parse(resortsElement.dataset.resorts);

        const resortsData = resorts.map((resort) => ({ id: JSON.parse(resort[0]).id, preference: resort[1]}));


        resortsData.forEach((data) => {
            const chartElement = document.getElementById(`myChart${data.id}`);
            console.log(chartElement)
            const ctx = chartElement.getContext('2d');

            const chart = new Chart(ctx, {
                // The typde of chart we want to create
                type: 'doughnut',
                // The data for our dataset
                data: {
                    labels: ['preference', 'ne veux pas'],
                    datasets: [{
                        label: 'My First dataset',
                        backgroundColor: ['rgb(255, 99, 132)', 'white'],
                        borderColor: ['rgb(255, 99, 132)', 'white'],
                        data: [data.preference, 100 - data.preference]
                    }]
                },
                // Configuration options go here
                options: { legend: { display: false }}
            });

            chartElement.style.width = '86px';
            chartElement.style.height = '86px';
        })


    
        
    

    }
}

export { initCharts }