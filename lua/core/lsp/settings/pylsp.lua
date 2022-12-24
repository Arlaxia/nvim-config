return {
    settings = {
        pylsp = {
            configurationSources = {"flake8"},
            plugins = {
                pycodestyle = { enabled = false },
                mccabe = { enabled = false },
                pyflakes = { enabled = false },
                flake8 = { enabled = true },
            }
        }
    }
}
