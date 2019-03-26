function generateFlightId(flightNum,scheduleDate) {
    const date = new Date(scheduleDate);

    return `${flightNum}-${date.getMonth()+1}-${date.getDate()}-${date.getFullYear()%100}`;
    
}

console.log(generateFlightId('AE101',"December 17, 1995 03:24:00"));

module.exports = { generateFlightId };