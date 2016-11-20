/**
 * Created by mariela on 20/11/16.
 */

function showProfessionalFields() {
    var professionalFields = document.getElementById('professional-fields');
    var isProfessional = document.getElementById('is-professional');
    if (isProfessional.checked == 1) {
        professionalFields.className = 'show-control'
    } else {
        professionalFields.className = 'hidden-control'
    }
}

