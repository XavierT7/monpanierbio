$(function() {
	$('[data-toggle="tooltip"]').tooltip(); // tooltip bootstrap

	$(".datepicker").datepicker(
			{
				minDate : 0,
				dateFormat : "dd/mm/yy",
				firstDay : 1,
				monthNames : [ 'Janvier', 'Fevrier', 'Mars', 'Avril', 'Mai',
						'Juin', 'Juillet', 'Aout', 'Septembre', 'Octobre',
						'Novembre', 'Decembre' ],
				monthNamesShort : [ 'Jan', 'Fev', 'Mar', 'Avr', 'Mai', 'Jun',
						'Jul', 'Aou', 'Sep', 'Oct', 'Nov', 'Dec' ],
				dayNames : [ 'Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi',
						'Vendredi', 'Samedi' ],
				dayNamesShort : [ 'Dim', 'Lun', 'Mar', 'Mer', 'Jeu', 'Ven',
						'Sam' ],
				dayNamesMin : [ 'Di', 'Lu', 'Ma', 'Me', 'Je', 'Ve', 'Sa' ]
			});

});
