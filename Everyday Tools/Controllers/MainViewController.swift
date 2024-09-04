//
//  MainViewController.swift
//  Everyday Tools
//
//  Created by Viktor Ogay on 04/09/24.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var appsTableView: UITableView!
    
    //MARK: Vars
    let callApi = CallApi()
    let modes = ["1/8 Screen (No Interaction)", "1/2 Screen (Interaction)", "Full Screen"]
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appsTableView.delegate = self
        appsTableView.dataSource = self
        
        fetchWeather()
    }
    
    //MARK: IBActions
    
    @IBAction func popUpButtonAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Select Display Mode", message: nil, preferredStyle: .actionSheet)
        
                for mode in modes {
                    let action = UIAlertAction(title: mode, style: .default) { [weak self] _ in
                        self?.handleSelection(for: mode)
                    }
                    alertController.addAction(action)
                }

                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                alertController.addAction(cancelAction)

                present(alertController, animated: true, completion: nil)
    }
    
    //MARK: Functions
    func handleSelection(for mode: String) {
        
    }
    
    func fetchWeather() {
        callApi.fetchWeather(lat: 41.2995, long: 69.2401) { result in
            switch result {
            case .success(let weatherResponse):
                let currentWeather = weatherResponse.current
                print("Time: \(currentWeather.time)")
                print("Interval: \(currentWeather.interval)")
                print("Temperature: \(currentWeather.temperature_2m)°C")
                print("Is Day: \(currentWeather.is_day == 1 ? "Yes" : "No")")
                print("Rain: \(currentWeather.rain) mm")
                print("Snowfall: \(currentWeather.snowfall) mm")
                print("Wind Speed: \(currentWeather.wind_speed_10m) km/h")
            case .failure(let error):
                print("Error fetching weather data: \(error)")
            }
        }
    }
    
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "apps")
        return cell
    }
}
