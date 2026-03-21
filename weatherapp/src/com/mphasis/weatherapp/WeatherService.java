package com.mphasis.weatherapp;

public class WeatherService {
	public String getWeather(String city) {
		if(city.equals("pune"))
			return "Hot..Sunny weather";
		if (city.equals("Delhi"))
			return "Windy, hot ..";
		else  
			return "Unknown";
			
	}

}
