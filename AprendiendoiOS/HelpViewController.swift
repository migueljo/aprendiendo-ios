//
//  HelpViewController.swift
//  AprendiendoiOS
//
//  Created by Miguel Martinez on 23/07/23.
//

import UIKit

class HelpViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    /**
        1. Implement data source -> Intefaz
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // No olvidar
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda")
        
        // Para interactuar, implementar el delegate
        tableView.delegate = self
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: - UITableViewDelegate
extension HelpViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("La celda #\(indexPath.row) fue seleccionada")
    }
}

// MARK: - UITableViewDataSource
extension HelpViewController: UITableViewDataSource {
    // 1. Número de filas que tendrá nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    // 2. Método para saber que celdas deben mostrarse
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mi-celda", for: indexPath)
        cell.textLabel?.text = "Soy la celda #\(indexPath.row)"
        return cell
    }
}
