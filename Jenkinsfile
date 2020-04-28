/*
Jenkins Build Specification
The purpose of this file is to configuration manage build specifications
*/
pipeline {
    agent(none)
    stages {
        stage('Reset PR Approval') {
            agent(any)
            when {
                changeRequest()
            }
            options {
                skipDefaultCheckout(true)
            }
            steps {
                script {set_pull_request_status("UNAPPROVED")}
            }
        }
        stage('Build') {
            agent {
                label("Windows10 && Release && VxWorks")
            }
            options {
                skipDefaultCheckout(true)
            }
            environment {
                PATH = '######'
            }
            steps {
                checkout_scm(false)
                system('scons -j4 --no-cache')
            }
        }
    }
    post {
        success {
            script {
                if (env.CHANGE_ID) {
                    set_pull_request_status("APPROVED")
                }
            }
        }
        failure {
            script {
                if (env.CHANGE_ID) {
                    set_pull_request_status("NEEDS_WORK")
                }
            }
        }
    }
}
/**
* Checks out the change from git.
*
* @param clean wipes the workspace and forces full clone if true.
*
*/
void checkout_scm(boolean clean=false) {
    system('git config --global url.https://####/scm.insteadofssh://git@###:###')
    system('git config --global core.autocrlf false') 
    system('git config --list')
    def args = [
        $class: 'GitSCM',
        branches: scm.branches,
        doGenerateSubmoduleConfigurations: scm.doGenerateSubmoduleConfigurations,
        extensions: [
            [$class: 'CloneOption', timeout: 30],
            [$class: 'SubmoduleOption', recursiveSubmodules: true, timeout: 30]
            ],
        userRemoteConfigs: scm.userRemoteConfigs
        ]
    if (clean) {
        args['extensions'].add([$class: 'WipeWorkspace'])
    }
    checkout(args)
}

/**
* Executes a command on windows or linux.
*
*  @param command the command to execute
*/
void system(String command) {
    if (isUnix()) {
        sh(command)
    }
    else {
        bat(command)
    }
}

/**
* Sets the pull request status in bitbucket
*
* @param status The status to set for the pull request. ("UNAPPROVED", "APPROVED", or "NEEDS_WORK")
*/
void set_pull_request_status(String status) {
    def post = new
    URL("###/pull-requests/${CHANGE_ID}/participants/jenkins").openConnection()
    def message = "{\"user\": {\"name\": \"jenkins\"}, \"approved\": ${status.equals("APPROVED") ? 1 : 0}, \"status\": \"${status}\"}"
    post.setRequestProperty("Authorization", "Bearer ####")
    post.setRequestMethod("PUT")
    post.setDoOutput(true)
    post.setRequestProperty("Content-Type", "application/json")
    post.getOutputStream().write(message.getBytes("UTF-8"))
    def postRC = post.getResponseCode()
    if(!postRC.equals(200)) {
        println(postRC)
    }
}
