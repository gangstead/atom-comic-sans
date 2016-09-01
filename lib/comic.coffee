module.exports =

  activate: (state) ->

    atom.packages.onDidActivateInitialPackages ->
      body = document.querySelector('body')

      triggerMeasurements = (force) ->
        atom.workspace.increaseFontSize()
        atom.workspace.decreaseFontSize()

      applyFont = () ->
        body.setAttribute('fonts-editor-font', "Comic Sans MS")
        triggerMeasurements()

      # apply fonts when atom is ready
      applyFont()


      # give chromium some time to load the fonts
      # then trigger measurements
      setTimeout (->
        triggerMeasurements()
      ), 500
