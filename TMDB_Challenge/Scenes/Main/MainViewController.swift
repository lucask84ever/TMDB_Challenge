//
//  MainViewController.swift
//  TMDB_Challenge
//
//  Created by lucas.silva on 10/10/21.
//

import UIKit

class MainViewController: UIViewController {
    // UIElements
    @IBOutlet weak var upComingMoviesTableView: UITableView!
    
    // Properties
    var viewModel: MovieViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MovieViewModel()
        viewModel?.delegate = self
        setupTableView()
    }
    
    private func setupTableView() {
        upComingMoviesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        upComingMoviesTableView.delegate = self
        upComingMoviesTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel?.fetchUpcomingMovies(from: 1)
    }

}
// MARK: - UITableViewDataSourceMethods
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = viewModel?.movies[indexPath.row].title
        return cell
    }
}

// MARK: - UITableViewDelegateMethods
extension MainViewController: UITableViewDelegate { }

// MARK: - ServiceDelegate
extension MainViewController: MovieDelegate {
    func onSuccess() {
        DispatchQueue.main.async { [weak self] in
            self?.upComingMoviesTableView.reloadData()
        }
    }
    
    func onError(_ error: Error) {
        DispatchQueue.main.async { [weak self] in
            let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(ok)
            self?.show(alert, sender: nil)
        }
    }
    
    
}
