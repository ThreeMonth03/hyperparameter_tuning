#!/bin/bash
export NNI_PLATFORM='local'
export NNI_EXP_ID='t0sjrmew'
export NNI_SYS_DIR='/workspace/log/t0sjrmew/trials/tnS4u'
export NNI_TRIAL_JOB_ID='tnS4u'
export NNI_OUTPUT_DIR='/workspace/log/t0sjrmew/trials/tnS4u'
export NNI_TRIAL_SEQ_ID='35'
export NNI_CODE_DIR='/workspace'
export CUDA_VISIBLE_DEVICES='0,1,2'
cd $NNI_CODE_DIR
eval 'python src/cnn.py' 1>/workspace/log/t0sjrmew/trials/tnS4u/stdout 2>/workspace/log/t0sjrmew/trials/tnS4u/stderr
echo $? `date +%s%3N` >'/workspace/log/t0sjrmew/trials/tnS4u/.nni/state'