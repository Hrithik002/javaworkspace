package com.mphasis.weatherapp;

public class WeatherService {
	
	public String getWeather(String city) {
		if(city.equals("pune"))
			return "Hot..Sunny weather";
		if (city.equals("Delhi"))
			return "Windy, hot ..temp may go up to 41";
		else  
			return "Unknown";
			
	}

}
