/**
 * Created by mariela on 20/11/16.
 */

function showProfessionalFields() {
    var professionalFields = document.getElementById('professional-fields');
    var isProfessional = document.getElementById('is-professional');
    if (isProfessional.checked == 1) {
        //professionalFields.style.display = 'block !important';
        professionalFields.style.visibility = 'visible';
    } else {
        //professionalFields.style.display = 'none !important';
        professionalFields.style.visibility = 'hidden';
    }
}

