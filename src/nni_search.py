search_space = {
    'lr': {'_type': 'loguniform', '_value': [0.0001, 0.1]},
    'momentum': {'_type': 'uniform', '_value': [0, 1]},
    'batch_size': {"_type": "choice", "_value": [4, 8, 16]},
}
import nni
from nni.experiment import Experiment
#from nni.experiment.config.training_services.local import LocalConfig
experiment = Experiment('local')
experiment.config.experiment_working_directory = './log'
#----------------------

#experiment.view(experiment_id='t0sjrmew', port=8323, non_blocking=False)#Decomment this line when viewing the result.

#Comment the following content when viewing the result.
#----------------------
experiment.config.trial_command = 'python src/cnn.py'
experiment.config.trial_code_directory = '.'
experiment.config.search_space = search_space
experiment.config.tuner.name = 'TPE'
experiment.config.tuner.class_args['optimize_mode'] = 'maximize'
experiment.config.max_trial_number = 50
experiment.config.trial_concurrency = 10
experiment.config.trial_gpu_number = 3
experiment.config.debug = True
experiment.config.training_service.use_active_gpu = True
experiment.config.training_service.max_trial_number_per_gpu = 10
experiment.run(8323)

#----------------------
print(experiment.get_status())
print(experiment.get_job_statistics())
print(experiment.list_trial_jobs())

input('Press enter to quit')
experiment.stop()