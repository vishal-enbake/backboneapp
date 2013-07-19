class BackboneApp.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  render: ->
    $(@el).html(@template())
    @

  events: ->
    'focus #autcom': "getAutocomplete"
    'click #clickme': "modelPop"
    'click #dialog #selectme': "showval"

  modelPop: (event) ->
    event.preventDefault()
    $('#dialog').css('display', 'block')
    $("#autcom").trigger('focus')
    $("#dialog").dialog()

  getAutocomplete: (event) ->
    event.preventDefault()
    availableTags = ["Andaman & nicobar islands","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh","Chhattisgarh","Dadra & nagar haveli","Daman & diu","Delhi","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu & kashmir","Jharkhand","Karnataka","KeralaLakshadweep","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Orissa","Pondicherry,Punjab","Rajasthan","Sikkim","Tamil Nadu","Tripura","Uttar Pradesh","Uttarakhand","West Bengal"]
    $("#autcom").autocomplete source: availableTags

  showval: (event) ->
    alert "hi"
    event.preventDefault()
    $('#display').append($("#autcom").val())
    $("#autcom").val('')