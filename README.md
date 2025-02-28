# Testing

$ sudo docker pull onceltuca/paralleldg

$ sudo docker run -it -p 8891:8891 onceltuca/paralleldg:latest

$ mkdir /root/.jupyter

$ jupyter notebook password

$ jupyter notebook --ip=0.0.0.0 --port=8891 --allow-root &

Run the notebook example_structure_learning.ipynb

Success!

![GitHub](https://img.shields.io/github/license/melmasri/parallelDG)
![PyPI](https://img.shields.io/pypi/v/trilearn)
![Libraries.io dependency status for latest release](https://img.shields.io/librariesio/release/pypi/trilearn)

# Bayesian inference for decomposable graphical models using Parallel Metropolis-Hastings MC
A library that implements parallel sampling of decomposable (triangulated) graphical models.
Currently supported functionalities include:

- Bayesian structure learning for discrete log-linear and Gaussian data.
- Predictive classification using Bayesian model averaging (BMA).

### Installation

### Installation
This package currently requires Python 2.7.
If graphviz is not installed, you can install it from brew / aptitude / pacman for example
```
$ brew install graphviz
```
On Ubuntu you might need to run
```
sudo apt-get install python-dev graphviz libgraphviz-dev pkg-config
```

Then run
```
$ pip install parallelDG
```

It is also possible to pull parallelDG as a docker image by
```
$ docker pull onceltuca/parallelDG
```

This package currently requires Python 2.7
### Running the tests

```
$ make test
```
## Usage
See the Jupyter notebooks for examples of usage.


## Scripts
### Continuous data
To approximate the underlying decomposable graph posterior given the dataset sample_data/data_ar1-5.csv run
```
$ parallelDG_ggm_sample -M 10000 -R 100 -f sample_data/data_ar1-5.csv
```
this will produce a file containing the Markov chain generated by the sample model
In order to analyze the chain run
```
$ analyze_graph_tajectories
```
this will produce a bunch of files in the current directory to be analyzed.

### Discrete data
The data set examples/data/czech_autoworkers.csv contains six binary variables.
To generate a MCMC trajectories of decomposable graphs type
```
$ parallelDG_loglinear_sample -M 10000 -R 100 -f sample_data/czech_autoworkers.csv
```
and
```
$ analyze_graph_tajectories
```
this will produce a number of files in the current directory.


## Built With

* [NetworkX](https://networkx.github.io/documentation/stable/index.html)
* [NumPy](https://docs.scipy.org/doc/)
* [Scipy](https://docs.scipy.org/doc/)
* [Pandas](http://pandas.pydata.org/pandas-docs/stable/)
* [Seaborn](https://seaborn.pydata.org/api.html)
## Authors

* ** Mohamad Elmasri**. For any questions email me at {first}.{last} at utoronto dot ca.

## References


## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* **Felix L. Rios**
